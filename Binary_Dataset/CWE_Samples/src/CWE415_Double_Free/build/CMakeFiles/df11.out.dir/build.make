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
CMAKE_SOURCE_DIR = /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build

# Include any dependencies generated for this target.
include CMakeFiles/df11.out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/df11.out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/df11.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/df11.out.dir/flags.make

CMakeFiles/df11.out.dir/src/df11.c.o: CMakeFiles/df11.out.dir/flags.make
CMakeFiles/df11.out.dir/src/df11.c.o: ../src/df11.c
CMakeFiles/df11.out.dir/src/df11.c.o: CMakeFiles/df11.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/df11.out.dir/src/df11.c.o"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/df11.out.dir/src/df11.c.o -MF CMakeFiles/df11.out.dir/src/df11.c.o.d -o CMakeFiles/df11.out.dir/src/df11.c.o -c /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/src/df11.c

CMakeFiles/df11.out.dir/src/df11.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/df11.out.dir/src/df11.c.i"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/src/df11.c > CMakeFiles/df11.out.dir/src/df11.c.i

CMakeFiles/df11.out.dir/src/df11.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/df11.out.dir/src/df11.c.s"
	/usr/bin/aarch64-linux-gnu-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/src/df11.c -o CMakeFiles/df11.out.dir/src/df11.c.s

# Object files for target df11.out
df11_out_OBJECTS = \
"CMakeFiles/df11.out.dir/src/df11.c.o"

# External object files for target df11.out
df11_out_EXTERNAL_OBJECTS =

/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/df11.out: CMakeFiles/df11.out.dir/src/df11.c.o
/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/df11.out: CMakeFiles/df11.out.dir/build.make
/home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/df11.out: CMakeFiles/df11.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/df11.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/df11.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/df11.out.dir/build: /home/lisalab/dataset/Binary_Dataset/CWE_Samples/arm64/double_free/df11.out
.PHONY : CMakeFiles/df11.out.dir/build

CMakeFiles/df11.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/df11.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/df11.out.dir/clean

CMakeFiles/df11.out.dir/depend:
	cd /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build /home/lisalab/dataset/Binary_Dataset/CWE_Samples/src/CWE415_Double_Free/build/CMakeFiles/df11.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/df11.out.dir/depend

