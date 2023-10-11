import sys
import subprocess
import time
import argparse


def arg_parser():
    parser = argparse.ArgumentParser()
    parser.add_argument("-b", dest='binary',type=str, required=True, help="Path of binary file")
    parser.add_argument("-v", dest='vulnerability',type=str, required=True, help="Detect memory leak or double free")
    parser.add_argument("-d", dest='isDebug',action='store_true', default='',help="Whether use debug information extractor")
    args = parser.parse_args()
    return args


# def get_file_path():
#     if(len(sys.argv)) < 2:
#         print("Error: File path not provided")
#         sys.exit(1)

#     file_path = sys.argv[1]
#     return file_path

def cleanup(file_path):
    subprocess.run(["rm " + file_path + ".bc"], shell=True)
    subprocess.run(["rm " + file_path + ".ll"], shell=True)
    subprocess.run(["rm " + file_path + ".config.json"], shell=True)

def run(file_path, vulnerability):
    #set Retdec path and options
    retdec_path = "/home/lisalab/retdec-install3/bin/retdec-decompiler "
    retdec_options = "-s"
    #set saber path and options
    saber_path = "/home/lisalab/SVF/Release-build/bin/saber"
    if(vulnerability == 'df'):
        saber_options = " -dfree -stat=false"
    elif (vulnerability == 'leak'):
        saber_options = " -leak -stat=false"
    else:
        print("-v df or -v leak is accepted")
        sys.exit(0)
    #lift the binary
    command2lift = retdec_path + retdec_options + " " + file_path
    print("\033[91m" + "Lifting " + "\033[0m" + file_path)
    subprocess.run([command2lift], shell=True, stderr=subprocess.DEVNULL)
    #Detect vulnerabilities
    bitcode_name = file_path + ".bc"
    print("\033[91m" + "Checking " + "\033[0m" + bitcode_name)
    command2det = saber_path + saber_options + " " + bitcode_name
    subprocess.run([command2det], shell=True)
    #Remove unnecessary files
    print("\033[91m" + "Done" + "\033[0m")
    cleanup(file_path)

def debug(file_path):
    #Start the docker container
    subprocess.run(["docker run --name debinshi --mount source=debin-vol,target=/storage -d -it --privileged debin"],shell=True, timeout=60, stdout=subprocess.DEVNULL)
    subprocess.run(["docker exec -it debinshi cp -r /storage/crf /debin/models"],shell=True)
    subprocess.run(["docker exec -it debinshi cp -r /storage/variable /debin/models"],shell=True)    

    #start Nice2Predict server
    #docker exec -i -d debinshi sh -c "/debin/Nice2Predict/bazel-bin/n2p/json_server/json_server --port 8604 --model /debin/models/crf/x86/model --valid_labels /debin/c_valid_labels"
    n2p_init = "docker exec -i -d debinshi sh -c " + "\"/debin/Nice2Predict/bazel-bin/n2p/json_server/json_server --port 8604 --model /debin/models/crf/x86/model --valid_labels /debin/c_valid_labels\""
    subprocess.run(n2p_init,shell=True, stdout=subprocess.DEVNULL)

    print("\033[91m" + "Predicting debug info first"  + "\033[0m")
    print("Waiting for 30 seconds to let Nice2Predict server start")
    time.sleep(30)
    print("Moving on")

    #Copy the input file into the docker container
    #docker cp /home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_64/Memory_Leak/malloc0.out debinshi:/debin/examples/stripped
    subprocess.run(["docker cp " + file_path + " debinshi:/debin/examples/stripped/malloc0.out"],shell=True, stdout=subprocess.DEVNULL);


    #Predict debugging infos
    #docker exec -it debinshi /bin/bash -i -c "python3 /debin/py/predict.py --binary /debin/examples/stripped/lcrack --output /debin/malloc0deb.out --elf_modifier /debin/cpp/modify_elf.so -two_pass --fp_model /debin/models/variable/x86 --n2p_url http://localhost:8604"
    predict_code = "docker exec -it debinshi bash -i -c " + "\"python3 py/predict.py --binary /debin/examples/stripped/malloc0.out --output /debin/malloc0deb.out --elf_modifier /debin/cpp/modify_elf.so -two_pass --fp_model /debin/models/variable/x86/ --n2p_url http://localhost:8604\""
    subprocess.run(predict_code,shell=True, stdout=subprocess.DEVNULL)


    #Fetch generated binary(with debugging information)
    output = file_path + "put"
    subprocess.run(["docker cp debinshi:/debin/malloc0deb.out " + output],shell=True, stdout=subprocess.DEVNULL)

    #MAMURI
    subprocess.run(["docker stop debinshi"], shell=True, stdout=subprocess.DEVNULL)
    subprocess.run(["docker rm debinshi"], shell=True, stdout=subprocess.DEVNULL)
    print("Debugging information extracted!")

if __name__ == "__main__":
    args = arg_parser()
    #print("args: " + args.binary + str(args.isDebug) + args.vulnerability)
    file_path = args.binary
    isDebug = args.isDebug
    whichVuln = args.vulnerability
    if (isDebug):
        debug(file_path)
        file_path = file_path + "put"
    run(file_path,whichVuln)
    


