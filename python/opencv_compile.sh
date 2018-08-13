#!/bin/bash

# Setup
path_source="$HOME/Projects/opencv"
path_extra="$HOME/Projects/opencv_contrib"

path_build="$path_source/build"

prefix="$HOME/.local"

echo $path_build

if [ ! -d $path_build ]; then
  mkdir $path_build
fi

cd $path_build


# Do it
      # -D WITH_TBB = ON \
      # -D WITH_QT = ON \

cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=$prefix \
      -D OPENCV_EXTRA_MODULES_PATH="$path_extra/modules" \
      -D WITH_V4L=OFF \
      -D WITH_LIBV4L=OFF \
      -D WITH_OPENGL=OFF \
      -D WITH_FFMPEG=OFF \
      -D ENABLE_NEON=ON \
      -D ENABLE_VFPV3=ON \
      -D WITH_TBB=OFF \
      -D WITH_OPENMP=OFF \
      -D WITH_IPP=OFF \
      -D WITH_NVCUVID=OFF \
      -D WITH_CUDA=OFF \
      -D WITH_OPENCL=OFF \
      -D WITH_CSTRIPES=OFF \
      -D BUILD_DOCS=OFF \
      -D BUILD_EXAMPLES=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D INSTALL_PYTHON_EXAMPLES=OFF \
      -D BUILD_OPENCV_APPS=OFF \
      -D PYTHON_EXECUTABLE="$prefix/bin/python3.7m" \
      -D PYTHON_INCLUDE_DIR="$prefix/include/python3.7m" \
      -D PYTHON_LIBRARY="$prefix/lib/libpython3.7m.a" \
      -D PYTHON_NUMPY_INCLUDE_DIRS="$HOME/.virtualenvs/wand/lib/python3.7/site-packages/numpy/core/include" \
      $path_source

      # -D PYTHON_INCLUDE_DIR2 = /usr/include/x86_64-linux-gnu/python<version> \
# make -j4

# make install
