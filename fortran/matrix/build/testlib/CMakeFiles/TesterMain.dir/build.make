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
CMAKE_SOURCE_DIR = /mnt/c/Users/John/Desktop/exercism/fortran/matrix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build

# Include any dependencies generated for this target.
include testlib/CMakeFiles/TesterMain.dir/depend.make

# Include the progress variables for this target.
include testlib/CMakeFiles/TesterMain.dir/progress.make

# Include the compile flags for this target's objects.
include testlib/CMakeFiles/TesterMain.dir/flags.make

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o: testlib/CMakeFiles/TesterMain.dir/flags.make
testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o: ../testlib/TesterMain.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o"
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /mnt/c/Users/John/Desktop/exercism/fortran/matrix/testlib/TesterMain.f90 -o CMakeFiles/TesterMain.dir/TesterMain.f90.o

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/TesterMain.dir/TesterMain.f90.i"
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /mnt/c/Users/John/Desktop/exercism/fortran/matrix/testlib/TesterMain.f90 > CMakeFiles/TesterMain.dir/TesterMain.f90.i

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/TesterMain.dir/TesterMain.f90.s"
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /mnt/c/Users/John/Desktop/exercism/fortran/matrix/testlib/TesterMain.f90 -o CMakeFiles/TesterMain.dir/TesterMain.f90.s

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.requires:

.PHONY : testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.requires

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.provides: testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.requires
	$(MAKE) -f testlib/CMakeFiles/TesterMain.dir/build.make testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.provides.build
.PHONY : testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.provides

testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.provides.build: testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o


# Object files for target TesterMain
TesterMain_OBJECTS = \
"CMakeFiles/TesterMain.dir/TesterMain.f90.o"

# External object files for target TesterMain
TesterMain_EXTERNAL_OBJECTS =

testlib/libTesterMain.a: testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o
testlib/libTesterMain.a: testlib/CMakeFiles/TesterMain.dir/build.make
testlib/libTesterMain.a: testlib/CMakeFiles/TesterMain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran static library libTesterMain.a"
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && $(CMAKE_COMMAND) -P CMakeFiles/TesterMain.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TesterMain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testlib/CMakeFiles/TesterMain.dir/build: testlib/libTesterMain.a

.PHONY : testlib/CMakeFiles/TesterMain.dir/build

testlib/CMakeFiles/TesterMain.dir/requires: testlib/CMakeFiles/TesterMain.dir/TesterMain.f90.o.requires

.PHONY : testlib/CMakeFiles/TesterMain.dir/requires

testlib/CMakeFiles/TesterMain.dir/clean:
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib && $(CMAKE_COMMAND) -P CMakeFiles/TesterMain.dir/cmake_clean.cmake
.PHONY : testlib/CMakeFiles/TesterMain.dir/clean

testlib/CMakeFiles/TesterMain.dir/depend:
	cd /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/John/Desktop/exercism/fortran/matrix /mnt/c/Users/John/Desktop/exercism/fortran/matrix/testlib /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib /mnt/c/Users/John/Desktop/exercism/fortran/matrix/build/testlib/CMakeFiles/TesterMain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testlib/CMakeFiles/TesterMain.dir/depend

