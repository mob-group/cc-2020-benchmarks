# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/bruce/code/sparse/wales/OPTIM/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bruce/code/sparse/wales/OPTIM/build

# Include any dependencies generated for this target.
include CMakeFiles/extralib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/extralib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/extralib.dir/flags.make

CMakeFiles/extralib.dir/amhdummy.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/amhdummy.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/amhdummy.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/extralib.dir/amhdummy.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/amhdummy.f90 -o CMakeFiles/extralib.dir/amhdummy.f90.o

CMakeFiles/extralib.dir/amhdummy.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/amhdummy.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/amhdummy.f90 > CMakeFiles/extralib.dir/amhdummy.f90.i

CMakeFiles/extralib.dir/amhdummy.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/amhdummy.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/amhdummy.f90 -o CMakeFiles/extralib.dir/amhdummy.f90.s

CMakeFiles/extralib.dir/amhdummy.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/amhdummy.f90.o.requires

CMakeFiles/extralib.dir/amhdummy.f90.o.provides: CMakeFiles/extralib.dir/amhdummy.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/amhdummy.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/amhdummy.f90.o.provides

CMakeFiles/extralib.dir/amhdummy.f90.o.provides.build: CMakeFiles/extralib.dir/amhdummy.f90.o


CMakeFiles/extralib.dir/chdummy.f.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/chdummy.f.o: /home/bruce/code/sparse/wales/OPTIM/source/chdummy.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object CMakeFiles/extralib.dir/chdummy.f.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/chdummy.f -o CMakeFiles/extralib.dir/chdummy.f.o

CMakeFiles/extralib.dir/chdummy.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/chdummy.f.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/chdummy.f > CMakeFiles/extralib.dir/chdummy.f.i

CMakeFiles/extralib.dir/chdummy.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/chdummy.f.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/chdummy.f -o CMakeFiles/extralib.dir/chdummy.f.s

CMakeFiles/extralib.dir/chdummy.f.o.requires:

.PHONY : CMakeFiles/extralib.dir/chdummy.f.o.requires

CMakeFiles/extralib.dir/chdummy.f.o.provides: CMakeFiles/extralib.dir/chdummy.f.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/chdummy.f.o.provides.build
.PHONY : CMakeFiles/extralib.dir/chdummy.f.o.provides

CMakeFiles/extralib.dir/chdummy.f.o.provides.build: CMakeFiles/extralib.dir/chdummy.f.o


CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o: /home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Fortran object CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90 -o CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o

CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90 > CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.i

CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90 -o CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.s

CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.requires:

.PHONY : CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.requires

CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.provides: CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.provides

CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.provides.build: CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o


CMakeFiles/extralib.dir/amber9dummy.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/amber9dummy.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/amber9dummy.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Fortran object CMakeFiles/extralib.dir/amber9dummy.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/amber9dummy.f90 -o CMakeFiles/extralib.dir/amber9dummy.f90.o

CMakeFiles/extralib.dir/amber9dummy.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/amber9dummy.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/amber9dummy.f90 > CMakeFiles/extralib.dir/amber9dummy.f90.i

CMakeFiles/extralib.dir/amber9dummy.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/amber9dummy.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/amber9dummy.f90 -o CMakeFiles/extralib.dir/amber9dummy.f90.s

CMakeFiles/extralib.dir/amber9dummy.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/amber9dummy.f90.o.requires

CMakeFiles/extralib.dir/amber9dummy.f90.o.provides: CMakeFiles/extralib.dir/amber9dummy.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/amber9dummy.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/amber9dummy.f90.o.provides

CMakeFiles/extralib.dir/amber9dummy.f90.o.provides.build: CMakeFiles/extralib.dir/amber9dummy.f90.o


CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/modcudadummylbfgs.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building Fortran object CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/modcudadummylbfgs.f90 -o CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o

CMakeFiles/extralib.dir/modcudadummylbfgs.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/modcudadummylbfgs.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/modcudadummylbfgs.f90 > CMakeFiles/extralib.dir/modcudadummylbfgs.f90.i

CMakeFiles/extralib.dir/modcudadummylbfgs.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/modcudadummylbfgs.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/modcudadummylbfgs.f90 -o CMakeFiles/extralib.dir/modcudadummylbfgs.f90.s

CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.requires

CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.provides: CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.provides

CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.provides.build: CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o


CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/modcudadummybfgsts.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building Fortran object CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/modcudadummybfgsts.f90 -o CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o

CMakeFiles/extralib.dir/modcudadummybfgsts.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/modcudadummybfgsts.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/modcudadummybfgsts.f90 > CMakeFiles/extralib.dir/modcudadummybfgsts.f90.i

CMakeFiles/extralib.dir/modcudadummybfgsts.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/modcudadummybfgsts.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/modcudadummybfgsts.f90 -o CMakeFiles/extralib.dir/modcudadummybfgsts.f90.s

CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.requires

CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.provides: CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.provides

CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.provides.build: CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o


CMakeFiles/extralib.dir/dummy_userpot.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/dummy_userpot.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/dummy_userpot.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building Fortran object CMakeFiles/extralib.dir/dummy_userpot.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/dummy_userpot.f90 -o CMakeFiles/extralib.dir/dummy_userpot.f90.o

CMakeFiles/extralib.dir/dummy_userpot.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/dummy_userpot.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/dummy_userpot.f90 > CMakeFiles/extralib.dir/dummy_userpot.f90.i

CMakeFiles/extralib.dir/dummy_userpot.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/dummy_userpot.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/dummy_userpot.f90 -o CMakeFiles/extralib.dir/dummy_userpot.f90.s

CMakeFiles/extralib.dir/dummy_userpot.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/dummy_userpot.f90.o.requires

CMakeFiles/extralib.dir/dummy_userpot.f90.o.provides: CMakeFiles/extralib.dir/dummy_userpot.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/dummy_userpot.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/dummy_userpot.f90.o.provides

CMakeFiles/extralib.dir/dummy_userpot.f90.o.provides.build: CMakeFiles/extralib.dir/dummy_userpot.f90.o


CMakeFiles/extralib.dir/unresdummy.f.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/unresdummy.f.o: /home/bruce/code/sparse/wales/OPTIM/source/unresdummy.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building Fortran object CMakeFiles/extralib.dir/unresdummy.f.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/unresdummy.f -o CMakeFiles/extralib.dir/unresdummy.f.o

CMakeFiles/extralib.dir/unresdummy.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/unresdummy.f.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/unresdummy.f > CMakeFiles/extralib.dir/unresdummy.f.i

CMakeFiles/extralib.dir/unresdummy.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/unresdummy.f.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/unresdummy.f -o CMakeFiles/extralib.dir/unresdummy.f.s

CMakeFiles/extralib.dir/unresdummy.f.o.requires:

.PHONY : CMakeFiles/extralib.dir/unresdummy.f.o.requires

CMakeFiles/extralib.dir/unresdummy.f.o.provides: CMakeFiles/extralib.dir/unresdummy.f.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/unresdummy.f.o.provides.build
.PHONY : CMakeFiles/extralib.dir/unresdummy.f.o.provides

CMakeFiles/extralib.dir/unresdummy.f.o.provides.build: CMakeFiles/extralib.dir/unresdummy.f.o


CMakeFiles/extralib.dir/dlfdummy.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/dlfdummy.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/dlfdummy.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building Fortran object CMakeFiles/extralib.dir/dlfdummy.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/dlfdummy.f90 -o CMakeFiles/extralib.dir/dlfdummy.f90.o

CMakeFiles/extralib.dir/dlfdummy.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/dlfdummy.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/dlfdummy.f90 > CMakeFiles/extralib.dir/dlfdummy.f90.i

CMakeFiles/extralib.dir/dlfdummy.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/dlfdummy.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/dlfdummy.f90 -o CMakeFiles/extralib.dir/dlfdummy.f90.s

CMakeFiles/extralib.dir/dlfdummy.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/dlfdummy.f90.o.requires

CMakeFiles/extralib.dir/dlfdummy.f90.o.provides: CMakeFiles/extralib.dir/dlfdummy.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/dlfdummy.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/dlfdummy.f90.o.provides

CMakeFiles/extralib.dir/dlfdummy.f90.o.provides.build: CMakeFiles/extralib.dir/dlfdummy.f90.o


CMakeFiles/extralib.dir/dummy_cppneb.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/dummy_cppneb.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/dummy_cppneb.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building Fortran object CMakeFiles/extralib.dir/dummy_cppneb.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/dummy_cppneb.f90 -o CMakeFiles/extralib.dir/dummy_cppneb.f90.o

CMakeFiles/extralib.dir/dummy_cppneb.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/dummy_cppneb.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/dummy_cppneb.f90 > CMakeFiles/extralib.dir/dummy_cppneb.f90.i

CMakeFiles/extralib.dir/dummy_cppneb.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/dummy_cppneb.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/dummy_cppneb.f90 -o CMakeFiles/extralib.dir/dummy_cppneb.f90.s

CMakeFiles/extralib.dir/dummy_cppneb.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/dummy_cppneb.f90.o.requires

CMakeFiles/extralib.dir/dummy_cppneb.f90.o.provides: CMakeFiles/extralib.dir/dummy_cppneb.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/dummy_cppneb.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/dummy_cppneb.f90.o.provides

CMakeFiles/extralib.dir/dummy_cppneb.f90.o.provides.build: CMakeFiles/extralib.dir/dummy_cppneb.f90.o


CMakeFiles/extralib.dir/optim_quipdummy.f90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/optim_quipdummy.f90.o: /home/bruce/code/sparse/wales/OPTIM/source/optim_quipdummy.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building Fortran object CMakeFiles/extralib.dir/optim_quipdummy.f90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/optim_quipdummy.f90 -o CMakeFiles/extralib.dir/optim_quipdummy.f90.o

CMakeFiles/extralib.dir/optim_quipdummy.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/optim_quipdummy.f90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/optim_quipdummy.f90 > CMakeFiles/extralib.dir/optim_quipdummy.f90.i

CMakeFiles/extralib.dir/optim_quipdummy.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/optim_quipdummy.f90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/optim_quipdummy.f90 -o CMakeFiles/extralib.dir/optim_quipdummy.f90.s

CMakeFiles/extralib.dir/optim_quipdummy.f90.o.requires:

.PHONY : CMakeFiles/extralib.dir/optim_quipdummy.f90.o.requires

CMakeFiles/extralib.dir/optim_quipdummy.f90.o.provides: CMakeFiles/extralib.dir/optim_quipdummy.f90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/optim_quipdummy.f90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/optim_quipdummy.f90.o.provides

CMakeFiles/extralib.dir/optim_quipdummy.f90.o.provides.build: CMakeFiles/extralib.dir/optim_quipdummy.f90.o


CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o: CMakeFiles/extralib.dir/flags.make
CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o: /home/bruce/code/sparse/wales/OPTIM/source/OPEPinterface/opep_interface.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building Fortran object CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/bruce/code/sparse/wales/OPTIM/source/OPEPinterface/opep_interface.F90 -o CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o

CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.i"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/bruce/code/sparse/wales/OPTIM/source/OPEPinterface/opep_interface.F90 > CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.i

CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.s"
	/usr/bin/gfortran  $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/bruce/code/sparse/wales/OPTIM/source/OPEPinterface/opep_interface.F90 -o CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.s

CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.requires:

.PHONY : CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.requires

CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.provides: CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.requires
	$(MAKE) -f CMakeFiles/extralib.dir/build.make CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.provides.build
.PHONY : CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.provides

CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.provides.build: CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o


# Object files for target extralib
extralib_OBJECTS = \
"CMakeFiles/extralib.dir/amhdummy.f90.o" \
"CMakeFiles/extralib.dir/chdummy.f.o" \
"CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o" \
"CMakeFiles/extralib.dir/amber9dummy.f90.o" \
"CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o" \
"CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o" \
"CMakeFiles/extralib.dir/dummy_userpot.f90.o" \
"CMakeFiles/extralib.dir/unresdummy.f.o" \
"CMakeFiles/extralib.dir/dlfdummy.f90.o" \
"CMakeFiles/extralib.dir/dummy_cppneb.f90.o" \
"CMakeFiles/extralib.dir/optim_quipdummy.f90.o" \
"CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o"

# External object files for target extralib
extralib_EXTERNAL_OBJECTS =

libextralib.a: CMakeFiles/extralib.dir/amhdummy.f90.o
libextralib.a: CMakeFiles/extralib.dir/chdummy.f.o
libextralib.a: CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o
libextralib.a: CMakeFiles/extralib.dir/amber9dummy.f90.o
libextralib.a: CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o
libextralib.a: CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o
libextralib.a: CMakeFiles/extralib.dir/dummy_userpot.f90.o
libextralib.a: CMakeFiles/extralib.dir/unresdummy.f.o
libextralib.a: CMakeFiles/extralib.dir/dlfdummy.f90.o
libextralib.a: CMakeFiles/extralib.dir/dummy_cppneb.f90.o
libextralib.a: CMakeFiles/extralib.dir/optim_quipdummy.f90.o
libextralib.a: CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o
libextralib.a: CMakeFiles/extralib.dir/build.make
libextralib.a: CMakeFiles/extralib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking Fortran static library libextralib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/extralib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/extralib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/extralib.dir/build: libextralib.a

.PHONY : CMakeFiles/extralib.dir/build

CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/amhdummy.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/chdummy.f.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/home/bruce/code/sparse/wales/AMBER12/amber12_interface.F90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/amber9dummy.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/modcudadummylbfgs.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/modcudadummybfgsts.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/dummy_userpot.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/unresdummy.f.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/dlfdummy.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/dummy_cppneb.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/optim_quipdummy.f90.o.requires
CMakeFiles/extralib.dir/requires: CMakeFiles/extralib.dir/OPEPinterface/opep_interface.F90.o.requires

.PHONY : CMakeFiles/extralib.dir/requires

CMakeFiles/extralib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/extralib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/extralib.dir/clean

CMakeFiles/extralib.dir/depend:
	cd /home/bruce/code/sparse/wales/OPTIM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bruce/code/sparse/wales/OPTIM/source /home/bruce/code/sparse/wales/OPTIM/source /home/bruce/code/sparse/wales/OPTIM/build /home/bruce/code/sparse/wales/OPTIM/build /home/bruce/code/sparse/wales/OPTIM/build/CMakeFiles/extralib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/extralib.dir/depend
