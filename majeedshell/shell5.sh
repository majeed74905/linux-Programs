fibo(){
 a=0
 b=1
 c=0
 echo "The Fibonacci Series for $1 terms is:"
 for i in $(seq 1 $1)
 do
 echo "$c"
 c=$((a + b))
 b=$a
 a=$c
 done
}
echo "Enter the Fibonacci number: "
read n
fibo "$n"
