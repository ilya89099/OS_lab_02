# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build

# Include any dependencies generated for this target.
include CMakeFiles/OS_lab.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OS_lab.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OS_lab.dir/flags.make

CMakeFiles/OS_lab.dir/main.c.o: CMakeFiles/OS_lab.dir/flags.make
CMakeFiles/OS_lab.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/OS_lab.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OS_lab.dir/main.c.o   -c /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/main.c

CMakeFiles/OS_lab.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OS_lab.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/main.c > CMakeFiles/OS_lab.dir/main.c.i

CMakeFiles/OS_lab.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OS_lab.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/main.c -o CMakeFiles/OS_lab.dir/main.c.s

CMakeFiles/OS_lab.dir/main.c.o.requires:

.PHONY : CMakeFiles/OS_lab.dir/main.c.o.requires

CMakeFiles/OS_lab.dir/main.c.o.provides: CMakeFiles/OS_lab.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/OS_lab.dir/build.make CMakeFiles/OS_lab.dir/main.c.o.provides.build
.PHONY : CMakeFiles/OS_lab.dir/main.c.o.provides

CMakeFiles/OS_lab.dir/main.c.o.provides.build: CMakeFiles/OS_lab.dir/main.c.o


# Object files for target OS_lab
OS_lab_OBJECTS = \
"CMakeFiles/OS_lab.dir/main.c.o"

# External object files for target OS_lab
OS_lab_EXTERNAL_OBJECTS =

OS_lab: CMakeFiles/OS_lab.dir/main.c.o
OS_lab: CMakeFiles/OS_lab.dir/build.make
OS_lab: CMakeFiles/OS_lab.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable OS_lab"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OS_lab.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OS_lab.dir/build: OS_lab

.PHONY : CMakeFiles/OS_lab.dir/build

CMakeFiles/OS_lab.dir/requires: CMakeFiles/OS_lab.dir/main.c.o.requires

.PHONY : CMakeFiles/OS_lab.dir/requires

CMakeFiles/OS_lab.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OS_lab.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OS_lab.dir/clean

CMakeFiles/OS_lab.dir/depend:
	cd /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build /home/ilya/CLionProjects/OS_lab_2/github/OS_lab_2/src/build/CMakeFiles/OS_lab.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OS_lab.dir/depend
