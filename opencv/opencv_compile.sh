#!/bin/bash



# Install from source tutorial: :https://docs.opencv.org/3.4.1/d7/d9f/tutorial_linux_install.html

#     sudo apt-get -y install gtk2-dev



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

cmake -DCMAKE_BUILD_TYPE=RELEASE \
      -DCMAKE_INSTALL_PREFIX=$prefix \
      -DOPENCV_EXTRA_MODULES_PATH="$path_extra/modules" \
      -DWITH_V4L=on \
      -DWITH_LIBV4L=on \
      -DWITH_OPENGL=off \
      -DWITH_FFMPEG=off \
      -DENABLE_NEON=on \
      -DENABLE_VFPV3=on \
      -DWITH_TBB=off \
      -DWITH_OPENMP=off \
      -DWITH_IPP=off \
      -DWITH_NVCUVID=off \
      -DWITH_CUDA=off \
      -DWITH_OPENCL=off \
      -DWITH_CSTRIPES=off \
      -DWITH_QT=off \
      -DBUILD_DOCS=off \
      -DBUILD_EXAMPLES=off \
      -DBUILD_TESTS=off \
      -DBUILD_PERF_TESTS=off \
      -DINSTALL_PYTHON_EXAMPLES=off \
      -DBUILD_OPENCV_APPS=off \
      -DPYTHON_EXECUTABLE="$prefix/bin/python3.7m" \
      -DPYTHON_INCLUDE_DIR="$prefix/include/python3.7m" \
      -DPYTHON_LIBRARY="$prefix/lib/libpython3.7m.a" \
      -DPYTHON_NUMPY_INCLUDE_DIRS="$HOME/.virtualenvs/wand/lib/python3.7/site-packages/numpy/core/include" \
      $path_source

      # -D PYTHON_INCLUDE_DIR2 = /usr/include/x86_64-linux-gnu/python<version> \
# make -j4

# make install
