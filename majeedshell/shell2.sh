echo "Enter the Base IP Address (e.g 192.168.1):"
read base_ip
echo "Enter the start of the IP range:"
read start_ip
echo "Enter the end of the IP range:"
read end_ip
if [ -z "$base_ip" ] || [ -z "$start_ip" ] || [ -z "$end_ip" ]
then
echo "Invalid IP Address,Please enter valid IP and range"
exit 1
fi
for ip in $(seq $start_ip $end_ip )
do
current_ip="$base_ip.$ip"
ping -c 1 -w 1 "$current_ip" &> /dev/null
if [ $? -eq 0 ]
then
echo "IP $current_ip is online"
else
echo "IP $current_ip is offline"
fi
done