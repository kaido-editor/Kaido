#!/usr/bin/bash

echo "Installing Kaido editor..."

echo "#! /bin/sh" > ./kaido
mkdir -p ~/.kaido.d/
cp -r ./contexts ~/.kaido.d/
cp -r ./lib ~/.kaido.d/
cp kaido-config.el ~/.kaido.d/kaido-config.el

echo 'export KAIDO_HOME=~/.kaido.d' >> ./kaido
echo 'emacs --name Kaido --no-site-file --no-site-lisp --no-splash --title Kaido -q -l ~/.kaido.d/kaido-config.el $@' >> ./kaido

sudo mv ./kaido /usr/bin
sudo chmod -R 777 ~/.kaido.d/
sudo chmod +x /usr/bin/kaido

echo "Done."
