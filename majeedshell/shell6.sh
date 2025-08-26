fruits_file==$(cat fruit.txt | grep App.e)
echo "\n 1. Using '.' to find out all the original wordwheres given word is 'App.e'"
echo "Output:\n $fruits_file"
fruits_file=$(cat fruit.txt | grep Ap*le)
echo "\n2. Using '*' to find out all the fruits name  of 'Ap' one after another in it"
echo "Output:\n $fruits_file"
fruits_file=$(cat fruit.txt | grep '^B')
echo "\n3.Using'^' to find out all the words that start with the letter 'B'"
echo "output:\n $fruits_file"
fruits_file=$(cat fruit.txt | grep "\ ")
echo "\n 4.Using '\' to find out all the fruits name that has single space in their full name"
echo "output:\n $fruits_file"
fruits_file=$(cat fruit.txt | grep -E Ch?)
echo " \n 5.Using '?' to find out all the fruits name that has 'Ch' in it"
echo "Output:\n $fruits_file"
fruits_file=$(cat fruit.txt | grep -E "(fruit)")
echo "\n 6.Using '()' to find out all the fruits name that has word 'fruit' in it"
echo "Output:\n $fruits_file"


