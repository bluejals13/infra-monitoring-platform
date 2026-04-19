#!/bin/bash
set -e

echo -e "\nstress-ng --cpu 2 --timeout 60s\n"

read -r -p "stress-ng --cpu 2 --timeout 60s=2, top=1 선택 : " C

if [ "$C" = "2" ]; then

    stress-ng --cpu 2 --timeout 60s

else

    top


if
