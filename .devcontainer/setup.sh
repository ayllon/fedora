#!/bin/bash

echo "${SSH_PUBLIC_KEY}" > ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

git clone https://github.com/ayllon/dot.git ~/dot

rm ~/.zsh*

ln -s ~/dot/.gitconfig* ~
ln -s ~/dot/.gitignore_global* ~
ln -s ~/dot/.vimrc ~
ln -s ~/dot/.zsh* ~
