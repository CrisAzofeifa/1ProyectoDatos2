# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /opt/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kimberlyc/CLionProjects/1ProyectoDatos2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kimberlyc/CLionProjects/1ProyectoDatos2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/opt/clion-2017.3.3/bin/cmake/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kimberlyc/CLionProjects/1ProyectoDatos2/CMakeFiles /home/kimberlyc/CLionProjects/1ProyectoDatos2/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kimberlyc/CLionProjects/1ProyectoDatos2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named translator

# Build rule for target.
translator: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 translator
.PHONY : translator

# fast build rule for target.
translator/fast:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/build
.PHONY : translator/fast

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

#=============================================================================
# Target rules for targets named translator_autogen

# Build rule for target.
translator_autogen: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 translator_autogen
.PHONY : translator_autogen

# fast build rule for target.
translator_autogen/fast:
	$(MAKE) -f CMakeFiles/translator_autogen.dir/build.make CMakeFiles/translator_autogen.dir/build
.PHONY : translator_autogen/fast

Client.o: Client.cpp.o

.PHONY : Client.o

# target to build an object file
Client.cpp.o:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/Client.cpp.o
.PHONY : Client.cpp.o

Client.i: Client.cpp.i

.PHONY : Client.i

# target to preprocess a source file
Client.cpp.i:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/Client.cpp.i
.PHONY : Client.cpp.i

Client.s: Client.cpp.s

.PHONY : Client.s

# target to generate assembly for a file
Client.cpp.s:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/Client.cpp.s
.PHONY : Client.cpp.s

MetaData.o: MetaData.cpp.o

.PHONY : MetaData.o

# target to build an object file
MetaData.cpp.o:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/MetaData.cpp.o
.PHONY : MetaData.cpp.o

MetaData.i: MetaData.cpp.i

.PHONY : MetaData.i

# target to preprocess a source file
MetaData.cpp.i:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/MetaData.cpp.i
.PHONY : MetaData.cpp.i

MetaData.s: MetaData.cpp.s

.PHONY : MetaData.s

# target to generate assembly for a file
MetaData.cpp.s:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/MetaData.cpp.s
.PHONY : MetaData.cpp.s

forms/ide_cfactorial.o: forms/ide_cfactorial.cpp.o

.PHONY : forms/ide_cfactorial.o

# target to build an object file
forms/ide_cfactorial.cpp.o:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/forms/ide_cfactorial.cpp.o
.PHONY : forms/ide_cfactorial.cpp.o

forms/ide_cfactorial.i: forms/ide_cfactorial.cpp.i

.PHONY : forms/ide_cfactorial.i

# target to preprocess a source file
forms/ide_cfactorial.cpp.i:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/forms/ide_cfactorial.cpp.i
.PHONY : forms/ide_cfactorial.cpp.i

forms/ide_cfactorial.s: forms/ide_cfactorial.cpp.s

.PHONY : forms/ide_cfactorial.s

# target to generate assembly for a file
forms/ide_cfactorial.cpp.s:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/forms/ide_cfactorial.cpp.s
.PHONY : forms/ide_cfactorial.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/main.cpp.o
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/main.cpp.i
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/main.cpp.s
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.s
.PHONY : main.cpp.s

translator_autogen/mocs_compilation.o: translator_autogen/mocs_compilation.cpp.o

.PHONY : translator_autogen/mocs_compilation.o

# target to build an object file
translator_autogen/mocs_compilation.cpp.o:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/translator_autogen/mocs_compilation.cpp.o
.PHONY : translator_autogen/mocs_compilation.cpp.o

translator_autogen/mocs_compilation.i: translator_autogen/mocs_compilation.cpp.i

.PHONY : translator_autogen/mocs_compilation.i

# target to preprocess a source file
translator_autogen/mocs_compilation.cpp.i:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/translator_autogen/mocs_compilation.cpp.i
.PHONY : translator_autogen/mocs_compilation.cpp.i

translator_autogen/mocs_compilation.s: translator_autogen/mocs_compilation.cpp.s

.PHONY : translator_autogen/mocs_compilation.s

# target to generate assembly for a file
translator_autogen/mocs_compilation.cpp.s:
	$(MAKE) -f CMakeFiles/translator.dir/build.make CMakeFiles/translator.dir/translator_autogen/mocs_compilation.cpp.s
.PHONY : translator_autogen/mocs_compilation.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... install/local"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... translator"
	@echo "... main"
	@echo "... translator_autogen"
	@echo "... Client.o"
	@echo "... Client.i"
	@echo "... Client.s"
	@echo "... MetaData.o"
	@echo "... MetaData.i"
	@echo "... MetaData.s"
	@echo "... forms/ide_cfactorial.o"
	@echo "... forms/ide_cfactorial.i"
	@echo "... forms/ide_cfactorial.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... translator_autogen/mocs_compilation.o"
	@echo "... translator_autogen/mocs_compilation.i"
	@echo "... translator_autogen/mocs_compilation.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

