#!/bin/bash
shopt -s extglob
echo "enter First "
read word
pat="^[[:upper:]]"
if [[ $word =~ $pat ]]
then
  echo valid
else
  echo invalid
fi

echo "enter Last"
read word
pat="^[[:upper:]]"
if [[ $word =~ $pat ]]
then
  echo valid
else
  echo invalid
fi

echo "enter mail"
read word

#pat="^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-z]{2,4}$"
pat="^[a-zA-Z0-9]+([._+#][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})$"

if [[ $word =~ $pat ]]
then
   echo valid
else
  echo invalid
fi

echo "enter phone no"
read word
pat="^[1-9]{2}[ ][6-9]{1}[0-9]{9}$"
if [[ $word =~ $pat ]]
then
  echo valid
else
  echo invalid
fi

echo "enter Password"
read word
pat="^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[#_])[a-zA-Z0-9#_]{8,}$"
if [[ $word =~ $pat ]]
then
  echo valid
else
  echo invalid
fi

