#!/bin/bash

read -p "Enter file name (include extension): " FILE

g++ "$FILE"
./a.out
