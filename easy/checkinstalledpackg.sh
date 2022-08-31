#!/bin/bash

#get user input through positional arg
packagetoCheck=$1

#pass it to the cmd and store cmd out to variable
#apt list --installed to show only installed packages
#optional [installed,automatic], which means the package was installed as a dependency of some other package
packageCheck=$(apt list --installed $packagetoCheck  | awk 'NR==2' )


if [[ -n $packageCheck ]]
then
    printf "%s\n" "$packageCheck"
else
    printf "package is not installed\n"
fi

exit 0