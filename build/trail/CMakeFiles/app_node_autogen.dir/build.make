# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lex/nubot_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lex/nubot_ws/build

# Utility rule file for app_node_autogen.

# Include the progress variables for this target.
include trail/CMakeFiles/app_node_autogen.dir/progress.make

trail/CMakeFiles/app_node_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lex/nubot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target app_node"
	cd /home/lex/nubot_ws/build/trail && /usr/local/bin/cmake -E cmake_autogen /home/lex/nubot_ws/build/trail/CMakeFiles/app_node_autogen.dir/AutogenInfo.cmake Debug

app_node_autogen: trail/CMakeFiles/app_node_autogen
app_node_autogen: trail/CMakeFiles/app_node_autogen.dir/build.make

.PHONY : app_node_autogen

# Rule to build all files generated by this target.
trail/CMakeFiles/app_node_autogen.dir/build: app_node_autogen

.PHONY : trail/CMakeFiles/app_node_autogen.dir/build

trail/CMakeFiles/app_node_autogen.dir/clean:
	cd /home/lex/nubot_ws/build/trail && $(CMAKE_COMMAND) -P CMakeFiles/app_node_autogen.dir/cmake_clean.cmake
.PHONY : trail/CMakeFiles/app_node_autogen.dir/clean

trail/CMakeFiles/app_node_autogen.dir/depend:
	cd /home/lex/nubot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lex/nubot_ws/src /home/lex/nubot_ws/src/trail /home/lex/nubot_ws/build /home/lex/nubot_ws/build/trail /home/lex/nubot_ws/build/trail/CMakeFiles/app_node_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : trail/CMakeFiles/app_node_autogen.dir/depend
