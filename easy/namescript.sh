#!/bin/bash

#make a folder called "name"  
mkdir name 

#create a script in the name folder to print out my name 
##give proper permissions to the name.sh script
touch name/names.sh;chmod +x name/names.sh
cat > name/names.sh << EOF
#!/bin/bash
echo "Jespson Saint-Pierre"
EOF

#run script then deletes the name folder and the script inside of it 
cd name;./names.sh;cd ..;rm -rf name



