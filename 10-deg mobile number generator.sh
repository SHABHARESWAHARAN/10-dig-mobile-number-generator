#!/bin/bash

clear
echo "10-dig mobile number generator"
echo
echo "Date: $(date)"
echo "Location: $(pwd)"
echo
read -p "Do you want to generate 10-dig mobile number from (+00)0000000000 to (+99)9999999999 [Y/N]: " choice
if [[ "$choice" == "Y" || "$choice" == "y" ]] ; then
read -p "Enter country code [eg:+91]: " code

a="0"
b="0"
c="0"
d="0"
e="0"
f="0"
g="0"
h="0"
i="0"
j="0"

echo "Task running..."

while :
do
cat >> "10-dig mobile number.txt" << EOF
$code$a$b$c$d$e$f$g$h$i$j
EOF
j=$(( "$j" + 1 ))
if [[ "$j" == "10" ]] ; then
j="0"
i=$(( "$i" + 1 ))
fi

if [[ "$i" == "10" ]] ; then
j="0"
i="0"
h=$(( "$h" + 1 ))
fi

if [[ "$h" == "10" ]] ; then
j="0"
i="0"
h="0"
g=$(( "$g" + 1 ))
fi

if [[ "$g" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f=$(( "$f" + 1 ))
fi

if [[ "$f" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f="0"
e=$(( "$e" + 1 ))
fi

if [[ "$e" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f="0"
e="0"
d=$(( "$d" + 1 ))
fi

if [[ "$d" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f="0"
e="0"
d="0"
c=$(( "$c" + 1 ))
fi

if [[ "$c" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f="0"
e="0"
d="0"
c="0"
b=$(( "$b" + 1 ))
fi

if [[ "$b" == "10" ]] ; then
j="0"
i="0"
h="0"
g="0"
f="0"
e="0"
d="0"
c="0"
b="0"
a=$(( "$a" + 1 ))
fi

if [[ "$a" == "10" ]] ; then
clear
echo "Task Completed"
sleep 7
exit 1
fi
done

elif [[ "$choice" == "N" || "$choice" == "n" ]] ; then
echo "Thanks for conformation"
sleep 2
exit 1

else
echo "Invalid input"
sleep 3
exit 1
fi
