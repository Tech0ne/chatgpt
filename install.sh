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
cp .version /home/$USER/.cache/openai/.version

sudo cp chatgpt /usr/bin/chatgpt
sudo chmod +x /usr/bin/chatgpt

echo "\"chatbot\" should now be available as a command"
echo
echo "You're welcome x)"
