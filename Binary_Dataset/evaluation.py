"""
 * evaluation.py
 * Author: Duulga Baasantogtokh
 * Date: 02/10/2023
"""

import subprocess
import os
from contextlib import redirect_stdout

def evaluate(program, bit, vuln):

    if(vuln == 'leak'):
        vuln_path = "/mem_leak/" 
        vuln_option = " -v leak"
        saber_option = " -leak -stat=false "
    elif(vuln == 'df'):
        vuln_path = "/double_free/"
        vuln_option = " -v df"
        saber_option = " -dfree -stat=false "
    binary_dir_path = "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_" + bit + vuln_path
    script_path = "/home/lisalab/dev/python/LLVMBCCfinal.py "
    llvm_dir_path = "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/compiled_bc" + vuln_path
    saber_path = "/home/lisalab/SVF/Release-build/bin/saber"

    for i in range(0,64):
        binary_path = binary_dir_path + "df" + str(i) + ".out"
        llvm_path = llvm_dir_path + "df" + str(i) + ".c.bc"

        if os.path.exists(binary_path):
            if(program == 'LLVMBCC'):
                command2run = "python3 " + script_path + "-b " + binary_path + vuln_option
            if(program == 'cwe_checker'):
                print ("~~~CWE_CHECKER RESULTS~~~\n")
                command2run = "cwe_checker -p CWE416 " + binary_path
            subprocess.run([command2run], shell=True)
        
        if os.path.exists(llvm_path):
            print("~~~SABER RESULTS~~~ \n ")
            command2run = saber_path + saber_option + llvm_path
            subprocess.run([command2run], shell = True)
            
            #with open("output.txt", 'a') as file:
                #file.write(result.stdout)
    

def evaluateARM(program, bit, vuln):
    if(vuln == 'leak'):
        vuln_path = "/mem_leak/" 
        vuln_option = " -v leak"
        saber_option = " -leak -stat=false "
    elif(vuln == 'df'):
        vuln_path = "/double_free/"
        vuln_option = " -v df"
        saber_option = " -dfree -stat=false "
    binary_dir_path = "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm" + bit + vuln_path
    script_path = "/home/lisalab/dev/python/LLVMBCCfinal.py "
    llvm_dir_path = "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/compiled_bc" + vuln_path
    saber_path = "/home/lisalab/SVF/Release-build/bin/saber"

    for i in range(0,64):
        binary_path = binary_dir_path + "df" + str(i) + ".out"
        llvm_path = llvm_dir_path + "df" + str(i) + ".c.bc"

        if os.path.exists(binary_path):
            if(program == 'LLVMBCC'):
                command2run = "python3 " + script_path + "-b " + binary_path + vuln_option
            if(program == 'cwe_checker'):
                print ("~~~CWE_CHECKER RESULTS~~~\n")
                command2run = "cwe_checker -p CWE416 " + binary_path
            subprocess.run([command2run], shell=True)
        
        if os.path.exists(llvm_path):
            print("~~~SABER RESULTS~~~ \n ")
            command2run = saber_path + saber_option + llvm_path
            subprocess.run([command2run], shell = True)

if __name__ == "__main__":
    #evaluate 64 bit binaries for memory leak
    #evaluate("64","leak")
    #evaluate 32 bit binaries for memory leak
    #evaluate("32", "leak")
    #evaluate 64 bit binaries for double free
    #evaluate("LLVMBCC","64", "df")
    #evaluate("cwe_checker", "64", "df")
    #evaluate 32 bit binaries for double free
    #evaluate("LLVMBCC", "32", "df")
    #evaluate("cwe_checker", "32", "df")
    #evaluateARM("LLVMBCC","32","leak")
    #evaluateARM("LLVMBCC", "64", "leak")
    #evaluateARM("LLVMBCC", "32", "df")
    #evaluateARM("cwe_checker", "32", "df")
    #evaluateARM("LLVMBCC", "64", "df")
    evaluateARM("cwe_checker", "64", "df")