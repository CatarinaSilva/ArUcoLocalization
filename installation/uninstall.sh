#!/bin/sh
## Revert
# Clean your home folder from previous ffmpeg and openCV installations or revert the changes made with *****
# Author: Catarina Silva
# Sources:
# ---- http://docs.opencv.org/doc/tutorials/introduction/linux_install/linux_install.html 
# ---- http://docs.opencv.org/3.0-last-rst/doc/tutorials/introduction/linux_install/linux_install.html
# ---- https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu
# ---- http://milq.github.io/install-opencv-ubuntu-debian/
# ---- http://www.ozbotz.org/opencv-installation/



##****************************************************************************************************************************************************************
## 1) openCV: uninstall openCV libraries if they exist and remove openCV folders created
#
# this assumes that openCV repository was fetched to the home folder and build was made using a "release" folder, using the following structure:
# --> opencv
# ------> opencv_contrib (optional)
# ------> opencv_extras (optional)
# ------> release 

cd ~/
if [ -d "opencv" ]; then
    if [ -d "release" ]; then
        cd ~/opencv/release
        sudo make uninstall
        cd ~/opencv
        sudo rm -R release
    fi
    cd ~/
    sudo rm -R opencv
fi




##****************************************************************************************************************************************************************
## 2) ffmpeg
#
# this assumes that ffmpeg was built in the home folder using the following structure
# --> ffmpeg
# ------> sources
# ------> build

# remove ffmpeg and x264 if already exists1
sudo apt-get remove ffmpeg x264 libx264-dev

# remove previous ffmpeg folders
if [ -d "ffmpeg" ]; then
    sudo rm -R ~/ffmpeg/build ~/ffmpeg/sources ~/bin/{ffmpeg,ffprobe,ffplay,ffserver,vsyasm,x264,x265,yasm,ytasm}
fi

# remove ffmpeg docs if already exist
sed -i '/ffmpeg/build/c\' ~/.manpath
hash -r

# remove previous ffmpeg folder
sudo rm -R ~/ffmpeg




##****************************************************************************************************************************************************************
## 3) dependencies

sudo apt-get autoremove build-essential cmake mercurial checkinstall git pkg-config autoconf automake libtool \
  libtbb2 libtbb-dev  \
  libgtk2.0-dev qt5-default libvtk6-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev \
  zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev libsdl1.2-dev libfreetype6-dev \
  libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev v4l-utils libvdpau-dev libva-dev libass-dev\
  libtbb-dev libeigen3-dev \
  python-dev python-tk python-numpy python3-dev python3-tk python3-numpy \
  ant default-jdk \
  doxygen texinfo \
  yasm libmp3lame-dev libopus-dev libvpx-dev \



