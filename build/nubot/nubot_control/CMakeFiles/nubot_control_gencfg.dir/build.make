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

# Utility rule file for nubot_control_gencfg.

# Include the progress variables for this target.
include nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/progress.make

nubot/nubot_control/CMakeFiles/nubot_control_gencfg: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
nubot/nubot_control/CMakeFiles/nubot_control_gencfg: /home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control/cfg/nubotcontrolConfig.py


/home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h: /home/lex/nubot_ws/src/nubot/nubot_control/cfg/nubotcontrol.cfg
/home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lex/nubot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/nubotcontrol.cfg: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h /home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control/cfg/nubotcontrolConfig.py"
	cd /home/lex/nubot_ws/build/nubot/nubot_control && ../../catkin_generated/env_cached.sh /home/lex/nubot_ws/build/nubot/nubot_control/setup_custom_pythonpath.sh /home/lex/nubot_ws/src/nubot/nubot_control/cfg/nubotcontrol.cfg /opt/ros/kinetic/share/dynamic_reconfigure/cmake/.. /home/lex/nubot_ws/devel/share/nubot_control /home/lex/nubot_ws/devel/include/nubot_control /home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control

/home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.dox: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.dox

/home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig-usage.dox: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig-usage.dox

/home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control/cfg/nubotcontrolConfig.py: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control/cfg/nubotcontrolConfig.py

/home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.wikidoc: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.wikidoc

nubot_control_gencfg: nubot/nubot_control/CMakeFiles/nubot_control_gencfg
nubot_control_gencfg: /home/lex/nubot_ws/devel/include/nubot_control/nubotcontrolConfig.h
nubot_control_gencfg: /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.dox
nubot_control_gencfg: /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig-usage.dox
nubot_control_gencfg: /home/lex/nubot_ws/devel/lib/python2.7/dist-packages/nubot_control/cfg/nubotcontrolConfig.py
nubot_control_gencfg: /home/lex/nubot_ws/devel/share/nubot_control/docs/nubotcontrolConfig.wikidoc
nubot_control_gencfg: nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/build.make

.PHONY : nubot_control_gencfg

# Rule to build all files generated by this target.
nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/build: nubot_control_gencfg

.PHONY : nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/build

nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/clean:
	cd /home/lex/nubot_ws/build/nubot/nubot_control && $(CMAKE_COMMAND) -P CMakeFiles/nubot_control_gencfg.dir/cmake_clean.cmake
.PHONY : nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/clean

nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/depend:
	cd /home/lex/nubot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lex/nubot_ws/src /home/lex/nubot_ws/src/nubot/nubot_control /home/lex/nubot_ws/build /home/lex/nubot_ws/build/nubot/nubot_control /home/lex/nubot_ws/build/nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nubot/nubot_control/CMakeFiles/nubot_control_gencfg.dir/depend

