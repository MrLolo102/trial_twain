#!/bin/bash
OS="`uname`"
ARCH="`uname -m`"
echo $OS
pip3 install wheel
if [ $OS = "Linux" ];then
  if [ $ARCH = "x86_64" ];then
    pip3 install https://github.com/google-coral/pycoral/releases/download/release-frogfish/tflite_runtime-2.5.0-cp38-cp38-linux_x86_64.whl
  elif [ $ARCH = "arm64" ];then
    pip3 install https://github.com/google-coral/pycoral/releases/download/release-frogfish/tflite_runtime-2.5.0-cp38-cp38-linux_aarch64.whl
  elif [ $ARCH = "arm32" ];then
    pip3 install https://github.com/google-coral/pycoral/releases/download/release-frogfish/tflite_runtime-2.5.0-cp38-cp38-linux_armv7l.whl
  else
    echo "don't know ARCH"
  fi
  pip3 install -r requirements.txt
elif [ $OS = "Darwin" ];then
  echo 2222
else
  echo unkown os-system
fi


