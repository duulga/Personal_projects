# Dataset used for evaluation (NSR project)

This dataset was used to evaluate the vulnerability detection accuracy of framework(LLVMBCC) developed during research project. Dataset includes source codes from [SVF's PTABEN-micro-benchmarksuite](https://github.com/SVF-tools/Test-Suite).

## Directories and file explanation

* ./evaluation.py - A script to automatically execute LLVMBCC script, cwe_checker on all binaries and SABER on LLVM bcs.
* ./CWE_Samples/src - Source code for double free and memory leak vulnerabilities. Both of the directories inside includes CMakeLists.txt for automatically generating binaries from the source codes.
* ./CWE_Samples/compiled_bc - LLVM IR files generated from the source code
* ./CWE_Samples/X86_64 - generated x86 64 bit elf binaries 
* ./CWE_Samples/X86_32 - generated x86 32 bit elf binaries
* ./CWE_Samples/arm32 - generated ARM 32 bit elf binaries
* ./CWE_Samples/arm64 - generated aarch64 elf binaries