# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas"

# Include any dependencies generated for this target.
include CMakeFiles/loadVideo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/loadVideo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/loadVideo.dir/flags.make

CMakeFiles/loadVideo.dir/displayVideo.cpp.o: CMakeFiles/loadVideo.dir/flags.make
CMakeFiles/loadVideo.dir/displayVideo.cpp.o: displayVideo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/loadVideo.dir/displayVideo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/loadVideo.dir/displayVideo.cpp.o -c "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas/displayVideo.cpp"

CMakeFiles/loadVideo.dir/displayVideo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/loadVideo.dir/displayVideo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas/displayVideo.cpp" > CMakeFiles/loadVideo.dir/displayVideo.cpp.i

CMakeFiles/loadVideo.dir/displayVideo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/loadVideo.dir/displayVideo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas/displayVideo.cpp" -o CMakeFiles/loadVideo.dir/displayVideo.cpp.s

CMakeFiles/loadVideo.dir/displayVideo.cpp.o.requires:
.PHONY : CMakeFiles/loadVideo.dir/displayVideo.cpp.o.requires

CMakeFiles/loadVideo.dir/displayVideo.cpp.o.provides: CMakeFiles/loadVideo.dir/displayVideo.cpp.o.requires
	$(MAKE) -f CMakeFiles/loadVideo.dir/build.make CMakeFiles/loadVideo.dir/displayVideo.cpp.o.provides.build
.PHONY : CMakeFiles/loadVideo.dir/displayVideo.cpp.o.provides

CMakeFiles/loadVideo.dir/displayVideo.cpp.o.provides.build: CMakeFiles/loadVideo.dir/displayVideo.cpp.o

# Object files for target loadVideo
loadVideo_OBJECTS = \
"CMakeFiles/loadVideo.dir/displayVideo.cpp.o"

# External object files for target loadVideo
loadVideo_EXTERNAL_OBJECTS =

loadVideo: CMakeFiles/loadVideo.dir/displayVideo.cpp.o
loadVideo: CMakeFiles/loadVideo.dir/build.make
loadVideo: /usr/local/lib/libopencv_videostab.so.3.0.0
loadVideo: /usr/local/lib/libopencv_videoio.so.3.0.0
loadVideo: /usr/local/lib/libopencv_video.so.3.0.0
loadVideo: /usr/local/lib/libopencv_ts.a
loadVideo: /usr/local/lib/libopencv_superres.so.3.0.0
loadVideo: /usr/local/lib/libopencv_stitching.so.3.0.0
loadVideo: /usr/local/lib/libopencv_shape.so.3.0.0
loadVideo: /usr/local/lib/libopencv_photo.so.3.0.0
loadVideo: /usr/local/lib/libopencv_objdetect.so.3.0.0
loadVideo: /usr/local/lib/libopencv_ml.so.3.0.0
loadVideo: /usr/local/lib/libopencv_imgproc.so.3.0.0
loadVideo: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
loadVideo: /usr/local/lib/libopencv_highgui.so.3.0.0
loadVideo: /usr/local/lib/libopencv_flann.so.3.0.0
loadVideo: /usr/local/lib/libopencv_features2d.so.3.0.0
loadVideo: /usr/local/lib/libopencv_core.so.3.0.0
loadVideo: /usr/local/lib/libopencv_calib3d.so.3.0.0
loadVideo: /usr/lib/x86_64-linux-gnu/libGLU.so
loadVideo: /usr/lib/x86_64-linux-gnu/libGL.so
loadVideo: /usr/lib/x86_64-linux-gnu/libSM.so
loadVideo: /usr/lib/x86_64-linux-gnu/libICE.so
loadVideo: /usr/lib/x86_64-linux-gnu/libX11.so
loadVideo: /usr/lib/x86_64-linux-gnu/libXext.so
loadVideo: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
loadVideo: /usr/local/lib/libopencv_features2d.so.3.0.0
loadVideo: /usr/local/lib/libopencv_highgui.so.3.0.0
loadVideo: /usr/local/lib/libopencv_videoio.so.3.0.0
loadVideo: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
loadVideo: /usr/local/lib/libopencv_flann.so.3.0.0
loadVideo: /usr/local/lib/libopencv_video.so.3.0.0
loadVideo: /usr/local/lib/libopencv_imgproc.so.3.0.0
loadVideo: /usr/local/lib/libopencv_core.so.3.0.0
loadVideo: CMakeFiles/loadVideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable loadVideo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/loadVideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/loadVideo.dir/build: loadVideo
.PHONY : CMakeFiles/loadVideo.dir/build

CMakeFiles/loadVideo.dir/requires: CMakeFiles/loadVideo.dir/displayVideo.cpp.o.requires
.PHONY : CMakeFiles/loadVideo.dir/requires

CMakeFiles/loadVideo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/loadVideo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/loadVideo.dir/clean

CMakeFiles/loadVideo.dir/depend:
	cd "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas" "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas" "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas" "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas" "/home/ufabc/Área de Trabalho/009_LAB_segmentacao_e_bordas/CMakeFiles/loadVideo.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/loadVideo.dir/depend

