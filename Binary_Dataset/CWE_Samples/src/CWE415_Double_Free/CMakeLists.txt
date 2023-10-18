cmake_minimum_required(VERSION 3.0)
project(Double_Free_Generation)

#set(DFREE_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_64/double_free/")
#set(DFREE_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/X86_32/double_free/")
set(DFREE_OUT "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${DFREE_OUT})

set(index 0)
set(DFREE_PATH "/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/")
include_directories(${DFREE_PATH}/include)

while(${index} LESS 48)
    set(SOURCES${index} ${DFREE_PATH}src/df${index}.c)
    if(EXISTS "${SOURCES${index}}")
        add_executable(df${index}.out ${SOURCES${index}})
        #Uncomment below for 64 bit compilation
        target_compile_options(df${index}.out PRIVATE -g)
        #Uncomment below for 32 bit compilation
        #set_target_properties(df${index}.out PROPERTIES COMPILE_FLAGS "-m32 -g" LINK_FLAGS "-m32")
    endif()
    math(EXPR index "${index} + 1")
endwhile()
