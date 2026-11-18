#!/bin/bash
echo "💻 NOOR COMMAND - TERMUX"
echo "From Peshawar ❤️"
while true; do
echo ""
echo "Type: help, calendar, create, cricket, exit"
read -p "noor@termux:~$ " cmd
if [ "$cmd" == "help" ]; then
echo "Commands: help, calendar, create, cricket, exit"
elif [ "$cmd" == "calendar" ]; then
cal
date
elif [ "$cmd" == "create" ]; then
read -p "File name: " name
echo "Hello from Noor" > "$name"
echo "File Created: $name ✅"
elif [ "$cmd" == "cricket" ]; then
echo "🏏 SIXXXXX! You hit a SIX!"
elif [ "$cmd" == "exit" ]; then
echo "Bye Noor! 👋"
break
else
echo "Unknown command! Type help"
fi
done
