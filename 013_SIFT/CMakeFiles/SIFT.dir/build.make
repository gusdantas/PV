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
CMAKE_SOURCE_DIR = "/home/ufabc/Área de Trabalho/013_SIFT"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ufabc/Área de Trabalho/013_SIFT"

# Include any dependencies generated for this target.
include CMakeFiles/SIFT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SIFT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SIFT.dir/flags.make

CMakeFiles/SIFT.dir/sift.cpp.o: CMakeFiles/SIFT.dir/flags.make
CMakeFiles/SIFT.dir/sift.cpp.o: sift.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/ufabc/Área de Trabalho/013_SIFT/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SIFT.dir/sift.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SIFT.dir/sift.cpp.o -c "/home/ufabc/Área de Trabalho/013_SIFT/sift.cpp"

CMakeFiles/SIFT.dir/sift.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIFT.dir/sift.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/ufabc/Área de Trabalho/013_SIFT/sift.cpp" > CMakeFiles/SIFT.dir/sift.cpp.i

CMakeFiles/SIFT.dir/sift.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIFT.dir/sift.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/ufabc/Área de Trabalho/013_SIFT/sift.cpp" -o CMakeFiles/SIFT.dir/sift.cpp.s

CMakeFiles/SIFT.dir/sift.cpp.o.requires:
.PHONY : CMakeFiles/SIFT.dir/sift.cpp.o.requires

CMakeFiles/SIFT.dir/sift.cpp.o.provides: CMakeFiles/SIFT.dir/sift.cpp.o.requires
	$(MAKE) -f CMakeFiles/SIFT.dir/build.make CMakeFiles/SIFT.dir/sift.cpp.o.provides.build
.PHONY : CMakeFiles/SIFT.dir/sift.cpp.o.provides

CMakeFiles/SIFT.dir/sift.cpp.o.provides.build: CMakeFiles/SIFT.dir/sift.cpp.o

# Object files for target SIFT
SIFT_OBJECTS = \
"CMakeFiles/SIFT.dir/sift.cpp.o"

# External object files for target SIFT
SIFT_EXTERNAL_OBJECTS =

SIFT: CMakeFiles/SIFT.dir/sift.cpp.o
SIFT: CMakeFiles/SIFT.dir/build.make
SIFT: /usr/local/lib/libopencv_videostab.so.3.0.0
SIFT: /usr/local/lib/libopencv_videoio.so.3.0.0
SIFT: /usr/local/lib/libopencv_video.so.3.0.0
SIFT: /usr/local/lib/libopencv_ts.a
SIFT: /usr/local/lib/libopencv_superres.so.3.0.0
SIFT: /usr/local/lib/libopencv_stitching.so.3.0.0
SIFT: /usr/local/lib/libopencv_shape.so.3.0.0
SIFT: /usr/local/lib/libopencv_photo.so.3.0.0
SIFT: /usr/local/lib/libopencv_objdetect.so.3.0.0
SIFT: /usr/local/lib/libopencv_ml.so.3.0.0
SIFT: /usr/local/lib/libopencv_imgproc.so.3.0.0
SIFT: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
SIFT: /usr/local/lib/libopencv_highgui.so.3.0.0
SIFT: /usr/local/lib/libopencv_flann.so.3.0.0
SIFT: /usr/local/lib/libopencv_features2d.so.3.0.0
SIFT: /usr/local/lib/libopencv_core.so.3.0.0
SIFT: /usr/local/lib/libopencv_calib3d.so.3.0.0
SIFT: /usr/lib/x86_64-linux-gnu/libGLU.so
SIFT: /usr/lib/x86_64-linux-gnu/libGL.so
SIFT: /usr/lib/x86_64-linux-gnu/libSM.so
SIFT: /usr/lib/x86_64-linux-gnu/libICE.so
SIFT: /usr/lib/x86_64-linux-gnu/libX11.so
SIFT: /usr/lib/x86_64-linux-gnu/libXext.so
SIFT: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
SIFT: /usr/local/lib/libopencv_features2d.so.3.0.0
SIFT: /usr/local/lib/libopencv_highgui.so.3.0.0
SIFT: /usr/local/lib/libopencv_videoio.so.3.0.0
SIFT: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
SIFT: /usr/local/lib/libopencv_flann.so.3.0.0
SIFT: /usr/local/lib/libopencv_video.so.3.0.0
SIFT: /usr/local/lib/libopencv_imgproc.so.3.0.0
SIFT: /usr/local/lib/libopencv_core.so.3.0.0
SIFT: CMakeFiles/SIFT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SIFT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SIFT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SIFT.dir/build: SIFT
.PHONY : CMakeFiles/SIFT.dir/build

CMakeFiles/SIFT.dir/requires: CMakeFiles/SIFT.dir/sift.cpp.o.requires
.PHONY : CMakeFiles/SIFT.dir/requires

CMakeFiles/SIFT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SIFT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SIFT.dir/clean

CMakeFiles/SIFT.dir/depend:
	cd "/home/ufabc/Área de Trabalho/013_SIFT" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ufabc/Área de Trabalho/013_SIFT" "/home/ufabc/Área de Trabalho/013_SIFT" "/home/ufabc/Área de Trabalho/013_SIFT" "/home/ufabc/Área de Trabalho/013_SIFT" "/home/ufabc/Área de Trabalho/013_SIFT/CMakeFiles/SIFT.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/SIFT.dir/depend

