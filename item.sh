#!/bin/bash
## NOTES ##
# Use exec if you want to replace the parent process, sh if you want to return to the parent when the child is finished

## SET VARIABLES ##
dew=1
printf "\n"

## STORY ##
echo "You have:"
if [ "$hasmap" = 1 ]; then
  echo "You have a map"
else
  echo "You have no map"
fi
if [ "$hasgun" = 1 ]; then
  echo "You have a gun"
else
  echo "You have no gun"
fi
printf "\n"

while [ "$dew" = 1 ]; do
## OPTIONS ##
echo "What do you want to use?"
if [ "$hasmap" = 1 ]; then
  echo "[m] Map"
fi
if [ "$hasgun" = 1 ]; then
  echo "[g] Gun"
fi
echo "[n] Nothing"

read -p ">> " -r response
  if [ "$response" = "m" ]; then
    if [ "$hasmap" = 1 ]; then
      echo "You used the map!
      "
      dew=0
    else
      echo "You have no map to use, stupid"
    fi
  elif [ "$response" = "g" ]; then
    if [ "$hasgun" = 1 ]; then
      echo "You used the gun!
      "
      dew=0
    else
      echo "You have no gun to use, stupid"
    fi
  elif [ "$response" = "n" ]; then
    echo "Good job, you wasted your time
    "
    dew=0
  else
    echo "Invalid Response, try again"
  fi
done