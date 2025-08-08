#!/bin/zsh

echo "Ricer v1.0"
echo "Ricer repo will be cloned to this directory"

if [ -d "./Ricer" ]; then
  echo "Cannot clone Ricer here, as directory Ricer already exists. Delete the directory? (y/n)"
  read answer
  if [ $answer = y ]; then
    rm -rf Ricer
  else
    echo "Exiting..."
    exit
  fi
fi

git clone https://github.com/BlueVihor/Ricer.git

cd Ricer

ls -al

echo "Type the name of the rice you want to apply"

read rice

cd $rice

dir=`pwd`

cp -r $dir/.config/* ~/.config/

echo "Done copying. Reload the window manager and enjoy the chosen rice"
