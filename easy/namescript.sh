#!/bin/bash

#make a folder called "name"  
mkdir name 

#create a script in the name folder to print out my name 
##give proper permissions to the name.sh script
touch name/names.sh;chmod 755 name/names.sh
cat > name/names.sh << EOF
echo "Jespson Saint-Pierre"
EOF

cd name;./names.sh;cd ..;rm -rf name



