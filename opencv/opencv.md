
Tutorials:

- install from source: https://docs.opencv.org/3.4.1/d7/d9f/tutorial_linux_install.html
- Python setup:        https://docs.opencv.org/3.4.1/d2/de6/tutorial_py_setup_in_ubuntu.html
- Another: https://github.com/intel/caffe/wiki/Ubuntu-16.04-or-15.10-OpenCV-3.1-Installation-Guide


- https://github.com/opencv/opencv/wiki/CPU-optimizations-build-options
- https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/
- http://amritamaz.net/blog/opencv-config


https://www.alatortsev.com/2018/04/27/installing-opencv-on-raspberry-pi-3-b/

RPi optimization options:

https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/


See step 6 on this page for info installing cv2.so into a virtual environment:

https://www.pyimagesearch.com/2017/10/09/optimizing-opencv-on-the-raspberry-pi/



# Prerequisits

I think installing this component takes care of all dependencies plus more stuff on top.

    sudo apt-get -y install libopencv-dev

And then at one point I also needed to install most of the following packages

### Image file I/O

    sudo apt-get -y install libjpeg-dev \
                            libpng-dev \
                            libtiff5-dev \
                            libwebp-dev \
                            libvorbis-dev \
                            libtheora-dev \
                            libjasper-dev

### Video file I/O

    sudo apt-get -y install libopencv-dev \
                            libavcodec-dev \
                            libavformat-dev \
                            libswscale-dev \
                            libv4l-dev \
                            libxvidcore-dev \
                            libx264-dev

### Gstreamer

    sudo apt-get -y install libgstreamer1.0-0 \
                            gstreamer1.0-plugins-base \
                            gstreamer1.0-plugins-good \
                            gstreamer1.0-plugins-bad \
                            gstreamer1.0-plugins-ugly \
                            gstreamer1.0-libav \
                            gstreamer1.0-doc \
                            gstreamer1.0-tools


- libcanberra-gtk???









cmake -DCMAKE_CXX_FLAGS="-DTBB_USE_GCC_BUILTINS=1 -D__TBB_64BIT_ATOMICS=0" \
   -DENABLE_VFPV3=ON \
   -DENABLE_NEON=ON \
   -DBUILD_TESTS=OFF \
   -DWITH_TBB=ON \
   -DCMAKE_BUILD_TYPE=Release ..


