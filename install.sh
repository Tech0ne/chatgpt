#!/bin/bash

if (( $EUID == 0 )); then
	echo "Do not run as root !!!"
	exit
fi

pip install --upgrade openai
pip3 install --upgrade openai

mkdir /home/$USER/.cache/
mkdir /home/$USER/.cache/openai/

cp TOKEN /home/$USER/.cache/openai/TOKEN
cp chatgpt /home/$USER/.cache/openai/chatgpt

sudo rm /usr/bin/chatgpt
sudo cp launcher /usr/bin/chatgpt
sudo chmod +x /usr/bin/chatgpt

echo
echo "\"chatgpt\" should now be available as a command"
echo
echo "You're welcome x)"
