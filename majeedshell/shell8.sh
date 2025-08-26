DATE=$(date +%y%m%d) 
read -p "Give name to the archive file:" file 
FILE=$file$DATE.tgz 
read -p "Enter the Filename: " SOURCE 
read -p "Enter the Destination path: " des 
DESTINATION=$des/$FILE 
if [ -f "$SOURCE" ] 
then 
echo 
else 
echo "$SOURCE doesn't exist, BACKUP INCOMPLETE" 
exit 
fi 
FILE_NO=1 
exec < "$SOURCE"        
read FILE_NAME 
while [ $? -eq 0 ] 
do
    if [ -f "$FILE_NAME" ] || [ -d "$FILE_NAME" ] 
    then 
        FILE_LIST="$FILE_LIST $FILE_NAME" 
    else 
        echo "BACKUP is still on process" 
        echo 
        echo "$FILE_NAME doesn’t exist, thus it is not included"  
    fi 
    FILE_NO=$((FILE_NO+1))  
    read FILE_NAME 
done 
echo "Starting Archive..." 
tar -czf "$DESTINATION" $FILE_LIST 2>/dev/null 
echo "Archive COMPLETED at $DESTINATION" 
exit 
