#!/bin/bash
echo "Creating dirs"
mkdir ~/.config
mkdir ~/.config/neofetch
mkdir ~/.config/nano
mkdir ~/.config/fish
mkdir ~/.config/fish/functions

echo "Copying .*rc files"
cp bashrc ~/.bashrc
cp nano/nanorc ~/.nanorc

echo "Copying neofetch files"
cp config.conf.neofetch ~/.config/neofetch/config.conf

echo "Copying *.nanorc files"
cp nano/*.nanorc ~/.config/nano/

echo "Copying fish files"
cp fish/config.fish ~/.config/fish/config.fish
cp fish/fish_variables ~/.config/fish/fish_variables
cp fish/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
cp fish/fish_greeting.fish ~/.config/fish/functions/fish_greeting.fish

echo "Done"
