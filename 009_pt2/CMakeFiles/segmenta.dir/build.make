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
CMAKE_SOURCE_DIR = "/home/ufabc/Área de Trabalho/009_pt2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ufabc/Área de Trabalho/009_pt2"

# Include any dependencies generated for this target.
include CMakeFiles/segmenta.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/segmenta.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/segmenta.dir/flags.make

CMakeFiles/segmenta.dir/segmentaImage.cpp.o: CMakeFiles/segmenta.dir/flags.make
CMakeFiles/segmenta.dir/segmentaImage.cpp.o: segmentaImage.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/ufabc/Área de Trabalho/009_pt2/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/segmenta.dir/segmentaImage.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/segmenta.dir/segmentaImage.cpp.o -c "/home/ufabc/Área de Trabalho/009_pt2/segmentaImage.cpp"

CMakeFiles/segmenta.dir/segmentaImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/segmenta.dir/segmentaImage.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/ufabc/Área de Trabalho/009_pt2/segmentaImage.cpp" > CMakeFiles/segmenta.dir/segmentaImage.cpp.i

CMakeFiles/segmenta.dir/segmentaImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/segmenta.dir/segmentaImage.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/ufabc/Área de Trabalho/009_pt2/segmentaImage.cpp" -o CMakeFiles/segmenta.dir/segmentaImage.cpp.s

CMakeFiles/segmenta.dir/segmentaImage.cpp.o.requires:
.PHONY : CMakeFiles/segmenta.dir/segmentaImage.cpp.o.requires

CMakeFiles/segmenta.dir/segmentaImage.cpp.o.provides: CMakeFiles/segmenta.dir/segmentaImage.cpp.o.requires
	$(MAKE) -f CMakeFiles/segmenta.dir/build.make CMakeFiles/segmenta.dir/segmentaImage.cpp.o.provides.build
.PHONY : CMakeFiles/segmenta.dir/segmentaImage.cpp.o.provides

CMakeFiles/segmenta.dir/segmentaImage.cpp.o.provides.build: CMakeFiles/segmenta.dir/segmentaImage.cpp.o

# Object files for target segmenta
segmenta_OBJECTS = \
"CMakeFiles/segmenta.dir/segmentaImage.cpp.o"

# External object files for target segmenta
segmenta_EXTERNAL_OBJECTS =

segmenta: CMakeFiles/segmenta.dir/segmentaImage.cpp.o
segmenta: CMakeFiles/segmenta.dir/build.make
segmenta: /usr/local/lib/libopencv_videostab.so.3.0.0
segmenta: /usr/local/lib/libopencv_videoio.so.3.0.0
segmenta: /usr/local/lib/libopencv_video.so.3.0.0
segmenta: /usr/local/lib/libopencv_ts.a
segmenta: /usr/local/lib/libopencv_superres.so.3.0.0
segmenta: /usr/local/lib/libopencv_stitching.so.3.0.0
segmenta: /usr/local/lib/libopencv_shape.so.3.0.0
segmenta: /usr/local/lib/libopencv_photo.so.3.0.0
segmenta: /usr/local/lib/libopencv_objdetect.so.3.0.0
segmenta: /usr/local/lib/libopencv_ml.so.3.0.0
segmenta: /usr/local/lib/libopencv_imgproc.so.3.0.0
segmenta: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
segmenta: /usr/local/lib/libopencv_highgui.so.3.0.0
segmenta: /usr/local/lib/libopencv_flann.so.3.0.0
segmenta: /usr/local/lib/libopencv_features2d.so.3.0.0
segmenta: /usr/local/lib/libopencv_core.so.3.0.0
segmenta: /usr/local/lib/libopencv_calib3d.so.3.0.0
segmenta: /usr/lib/x86_64-linux-gnu/libGLU.so
segmenta: /usr/lib/x86_64-linux-gnu/libGL.so
segmenta: /usr/lib/x86_64-linux-gnu/libSM.so
segmenta: /usr/lib/x86_64-linux-gnu/libICE.so
segmenta: /usr/lib/x86_64-linux-gnu/libX11.so
segmenta: /usr/lib/x86_64-linux-gnu/libXext.so
segmenta: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
segmenta: /usr/local/lib/libopencv_features2d.so.3.0.0
segmenta: /usr/local/lib/libopencv_highgui.so.3.0.0
segmenta: /usr/local/lib/libopencv_videoio.so.3.0.0
segmenta: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
segmenta: /usr/local/lib/libopencv_flann.so.3.0.0
segmenta: /usr/local/lib/libopencv_video.so.3.0.0
segmenta: /usr/local/lib/libopencv_imgproc.so.3.0.0
segmenta: /usr/local/lib/libopencv_core.so.3.0.0
segmenta: CMakeFiles/segmenta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable segmenta"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/segmenta.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/segmenta.dir/build: segmenta
.PHONY : CMakeFiles/segmenta.dir/build

CMakeFiles/segmenta.dir/requires: CMakeFiles/segmenta.dir/segmentaImage.cpp.o.requires
.PHONY : CMakeFiles/segmenta.dir/requires

CMakeFiles/segmenta.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/segmenta.dir/cmake_clean.cmake
.PHONY : CMakeFiles/segmenta.dir/clean

CMakeFiles/segmenta.dir/depend:
	cd "/home/ufabc/Área de Trabalho/009_pt2" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ufabc/Área de Trabalho/009_pt2" "/home/ufabc/Área de Trabalho/009_pt2" "/home/ufabc/Área de Trabalho/009_pt2" "/home/ufabc/Área de Trabalho/009_pt2" "/home/ufabc/Área de Trabalho/009_pt2/CMakeFiles/segmenta.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/segmenta.dir/depend

