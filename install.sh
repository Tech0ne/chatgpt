#!/bin/bash

if [ "$EUID" -e 0 ]; then
	echo "Do not run as root !!!"
	exit
fi

pip install --upgrade openai
pip3 install --upgrade openai

mkdir /home/$USER/.cache/
mkdir /home/$USER/.cache/openai/

mv TOKEN /home/$USER/.cache/openai/TOKEN

mv chatgpt /usr/bin/chatgpt
chmod +x /usr/bin/chatbot

echo "\"chatbot\" should now be available as a command"
echo
echo "You're welcome x)"
