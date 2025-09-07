#This is comment line.Any line that starts with # is commented
#!/bin/bash #This tells the shell script to user /bin/bash shell to interpreted the below lines.
#Now the program begins
echo "Enter a value"
read val
echo "The given value is $val"
read -p "Enter a value of x: " x
echo 'The value of $x' is $x
echo "Read password from the keyboard.This must not be echo'ed"
echo "Enter Your password:"
read -s pass
echo "The given password is $pass"
#Supress the new line with -n option in echo
echo -n "Enter Your password:"
read -s pass
echo "The given password is $pass"
#End of the shell script
