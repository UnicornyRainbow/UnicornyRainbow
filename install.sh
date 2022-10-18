#!/bin/bash
echo "Creating Dirs"
mkdir ~/.config
mkdir ~/.config/neofetch
mkdir ~/.config/nano
mkdir ~/.config/fish
mkdir ~/.config/fish/functions

echo "Copying Files"
cp bashrc ~/.bashrc
cp nanorc ~/.nanorc

cp config.conf.neofetch ~/.config/neofetch/config.conf

cp clojure.nanorc ~/.config/nano/clojure.nanorc
cp mermaid.nanorc ~/.config/nano/mermaid.nanorc
cp mermaid.nanorc ~/.config/nano/python.nanorc

cp config.fish ~/.config/fish/config.fish
cp fish_variables ~/.config/fish/fish_variables
cp fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

echo "Done"
