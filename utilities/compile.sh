#!/bin/bash

read -p "Enter file name (include extension): " FILE


case "$FILE" in
	*.cpp)
		g++ $FILE
		./a.out
	;;

	*.py)
		python3 $FILE
	;;

	*.java)

		javac $FILE
		java $FILE
	;;

	*.html)
		xdg-open $FILE
	;;	
esac
#Trying out env variables
export LAST=$FILE
