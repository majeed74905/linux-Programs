#!/bin/bash
trap "echo 'Signal caught! Exiting...'; exit" SIGINT
echo "This is a demonstration of script control commands."
echo "Enter a number (negative to exit the script):"
read num
if [ $num -lt 0 ]; then
 echo "You entered a negative number. Exiting..."
 exit 1
fi
echo "For loop demonstration with 'continue':"
for i in 1 2 3 4 5
do
 if [ $i -eq 3 ]; then
 echo "Skipping iteration $i using continue..."
 continue
 fi
 echo "Iteration $i"
done
echo "While loop demonstration with 'break':"
counter=5
while [ $counter -gt 0 ]; do
 echo "Counter is $counter"
 if [ $counter -eq 3 ]; then
 echo "Breaking the loop when counter is $counter"
 break
 fi
 counter=$((counter-1))
done
echo "Script execution completed."