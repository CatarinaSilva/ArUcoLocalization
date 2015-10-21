# ArUcoLocalization 

### Instalation 

#### 1) Installing video encoder/decoder libraries, ffmpeg and openCV3


* Copy install.sh and uninstall.sh to your home folder
* Change permissions of ~/install.sh to 777 - in terminal run: sudo chmod 777 install.sh
* Change permissions of ~/uninstall.sh to 777 - in terminal run: sudo chmod 777 uninstall.sh
* [OPTIONAL] If you previously tried to install with this script run uninstall.sh - in terminal run: sudo ./uninstall.sh
* [OPTIONAL] If you previously tried to install in some other way - in terminal, check if the folders were organized in a similar manner as described here and if so, run uninstall.sh 
* Open terminal in home folder and run install.sh - in terminal run: sudo ./install.sh

The installation should be done in the home folder and the resulting folder structure should be the following:

Folder structure
 --> home folder 
 ------> opencv  
 ----------> opencv_contrib (optional)
 ----------> opencv_extras (optional)
 ----------> release 
 ----> ffmpeg
 ----------> sources
 ----------> build

Sources:
 ---- http://docs.opencv.org/doc/tutorials/introduction/linux_install/linux_install.html 
 ---- http://docs.opencv.org/3.0-last-rst/doc/tutorials/introduction/linux_install/linux_install.html
 ---- https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu
 ---- http://milq.github.io/install-opencv-ubuntu-debian/
http://www.ozbotz.org/opencv-installation/

