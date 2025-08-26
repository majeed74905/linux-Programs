diskspace() {
    clear
    df -k
}
diskspace
whoseon() {
    clear
    who
}
whoseon
memusage() {
clear
cat /proc/meminfo
}
memusage
menu() {
    clear
    echo
    echo "\t\t\t\t Sys Admin Menu\n"
    echo "\t\t 1. Display disk space"
    echo "\t\t 2. Display logged on users"
    echo "\t\t 3. Display memory usage"
    echo "\t\t 0. Exit program\n\n"
    echo
    echo "\t\t\t Enter option: "
    read option
    echo
}
menu
while [ True ]
do
menu
case $option in
0)
break ;;
1)
diskspace ;;
2)
whoseon ;;
3)
memusage ;;
*)
clear
echo "Sorry, wrong selection" ;;
esac
echo "\n\n\t\t Hit any key to continue"
read line
done
clear
