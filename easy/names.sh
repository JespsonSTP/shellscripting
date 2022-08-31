echo "Enter your First Name, Last Name, Shell, Group, and Password on different lines"
read fName;
read lName;
read shell;
read group;
read pass;


firstlet=${fName::1}
nameComb="$firstlet$lName";
usname=$nameComb

echo $Name, $lName, $shell, $group, $pass, $usname