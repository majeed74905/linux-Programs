echo "1. Replacing or subsituting string: "
echo "---------------------------------------"
sed 's/unix/linus/' sed.txt
echo
echo "2. Replacing the nth occurrence of a patternin a line: "
echo "--------------------------------------------------------"
sed 's/unix/linus/2' sed.txt
echo
echo "3. Replacing all the occurence of the patternin a line: "
echo "------------------------------------------------------------"
sed 's/unix/linux/g' sed.txt
echo
echo "4. Replacing from nth occurence to all occurences in a line: "
echo "--------------------------------------------------------------"
sed 's/unix/linus/3g' sed.txt
echo
echo "5. Replacing string on a specific line number: "
echo "-------------------------------------------------"
sed '3 s/unix/linux/' sed.txt
echo
echo "6. Duplicating the replaced line with /p flag: "
echo "----------------------------------------------"
sed 's/unix/linux/p' sed.txt
echo
echo "7. Printing only the replaced lines: "
echo "--------------------------------------"
sed -n 's/unix/linux/p' sed.txt
echo
echo "8.Replacing string on a range of lines: "
echo "-------------------------------------------"
sed '2,$ s/unix/linux/' sed.txt
echo
echo "9. Deleting lines from a particular file: "
echo "------------------------------------------"
sed '2.4d' sed.txt
