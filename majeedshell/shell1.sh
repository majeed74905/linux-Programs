echo "Enter the Date1 (YYYY-MM-DD):"
read date1
echo "Enter the Date2 (YYYY-MM-DD):"
read date2
datetosec1=$(date -d "$date1" +%s)
datetosec2=$(date -d "$date2" +%s)
diffsec=$((datetosec2-datetosec1))
diffdays=$((diffsec/86400))
echo "Number of Day between '$date1' and '$date2' is : $diffdays days"