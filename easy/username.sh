#! bin/bash
# two way to create a username by adding the first letter of the first name into the last name
firstname="firstname"
lastname="lastname"

#option 1 by slicing
firstletter=${firstname:0:1}
username=$firstletter$lastname

#option by using awk
echo jespson saint-pierre | awk '{str1 = substr($1,1,1); str2 = substr($2,1); new_var=str1 str2; print new_var}'

echo $username