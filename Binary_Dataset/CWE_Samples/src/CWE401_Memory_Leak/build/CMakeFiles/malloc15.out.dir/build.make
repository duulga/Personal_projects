# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build

# Include any dependencies generated for this target.
include CMakeFiles/malloc15.out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/malloc15.out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/malloc15.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/malloc15.out.dir/flags.make

CMakeFiles/malloc15.out.dir/src/malloc15.c.o: CMakeFiles/malloc15.out.dir/flags.make
CMakeFiles/malloc15.out.dir/src/malloc15.c.o: ../src/malloc15.c
CMakeFiles/malloc15.out.dir/src/malloc15.c.o: CMakeFiles/malloc15.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/malloc15.out.dir/src/malloc15.c.o"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/malloc15.out.dir/src/malloc15.c.o -MF CMakeFiles/malloc15.out.dir/src/malloc15.c.o.d -o CMakeFiles/malloc15.out.dir/src/malloc15.c.o -c /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/src/malloc15.c

CMakeFiles/malloc15.out.dir/src/malloc15.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/malloc15.out.dir/src/malloc15.c.i"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/src/malloc15.c > CMakeFiles/malloc15.out.dir/src/malloc15.c.i

CMakeFiles/malloc15.out.dir/src/malloc15.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/malloc15.out.dir/src/malloc15.c.s"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/src/malloc15.c -o CMakeFiles/malloc15.out.dir/src/malloc15.c.s

# Object files for target malloc15.out
malloc15_out_OBJECTS = \
"CMakeFiles/malloc15.out.dir/src/malloc15.c.o"

# External object files for target malloc15.out
malloc15_out_EXTERNAL_OBJECTS =

/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/malloc15.out: CMakeFiles/malloc15.out.dir/src/malloc15.c.o
/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/malloc15.out: CMakeFiles/malloc15.out.dir/build.make
/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/malloc15.out: CMakeFiles/malloc15.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/malloc15.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/malloc15.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/malloc15.out.dir/build: /home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/mem_leak/malloc15.out
.PHONY : CMakeFiles/malloc15.out.dir/build

CMakeFiles/malloc15.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/malloc15.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/malloc15.out.dir/clean

CMakeFiles/malloc15.out.dir/depend:
	cd /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE401_Memory_Leak/build/CMakeFiles/malloc15.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/malloc15.out.dir/depend

