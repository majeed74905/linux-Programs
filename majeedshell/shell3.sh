echo "Enter the filename contains IP Address:"
read filename
if [ ! -f "$filename" ]
then
echo "File not Found, PLease enter valid Filename"
exit 1
fi
while IFS= read -r ip
do
if [ -n "$ip" ]
then
 ping -c 1 -w 1 "$ip" &> /dev/null
 if [ $? -eq 0 ]
 then
 echo "IP $ip is online"
 else
 echo "IP $ip is offline"
fi
fi
done <"$filename"