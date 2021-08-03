#!/bin/bash

#This script archives everything in the Desktop and Documents folder.
#Please move your applications from the desktop before starting.

cd ~/Desktop
echo -n "Enter the name of the file/employee: " #Don't put spaces^^
read fileName

zip Desktop.zip * && mkdir Desktop && mv Desktop.zip Desktop || mkdir "Desktop - No docs"
mkdir $fileName
mv Desktop ~/Desktop/$fileName || mv "Desktop - No docs" ~/Desktop/$fileName 

cd ~/Documents/
zip Documents.zip * && mkdir Documents && mv Documents.zip Documents || mkdir "Documents - No docs"
mv Documents ~/Desktop/$fileName || mv "Documents - No docs" ~/Desktop/$fileName
