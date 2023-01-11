#!/bin/bash

if (( $EUID == 0 )); then
	echo "Do not run as root !!!"
	exit
fi

pip install --upgrade openai
pip3 install --upgrade openai

mkdir $HOME/.cache/
mkdir $HOME/.cache/openai/

cp TOKEN $HOME/.cache/openai/TOKEN
cp chatgpt $HOME/.cache/openai/chatgpt

sudo rm -rf /usr/bin/chatgpt
sudo cp launcher /usr/bin/chatgpt
sudo chmod +x /usr/bin/chatgpt

echo
echo "\"chatgpt\" should now be available as a command"
echo
echo "You're welcome x)"
