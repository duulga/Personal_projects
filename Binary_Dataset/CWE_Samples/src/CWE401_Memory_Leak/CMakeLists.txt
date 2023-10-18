cmake_minimum_required(VERSION 3.0)
project(Dataset_Generation)

#set(MEMLEAK_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_64/mem_leak/")
#set(MEMLEAK_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_32/mem_leak/")
#set(MEMLEAK_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm32/mem_leak/")
set(MEMLEAK_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${MEMLEAK_OUT})

set(index 0)
set(MEMLEAK_PATH "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/")
include_directories(${MEMLEAK_PATH}/include)

while(${index} LESS 64)
    set(SOURCES${index} ${MEMLEAK_PATH}src/malloc${index}.c)
    add_executable(malloc${index}.out ${SOURCES${index}})
    #Uncomment below for 64 bit compilation
    target_compile_options(malloc${index}.out PRIVATE -g)
    #Uncomment below for 32 bit compilation
    #target_compile_options(malloc${index}.out PRIVATE -g -m32)
    #set_target_properties(malloc${index}.out PROPERTIES COMPILE_FLAGS "-m32 -g" LINK_FLAGS "-m32")
    math(EXPR index "${index} + 1")
endwhile()
