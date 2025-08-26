gawk 'BEGIN {print "Enter the mark: "
getline mark < "-"
if (mark>=90) print "A+"
else if (mark>=80) print "A"
else if (mark>=70) print "B+"
else if (mark>=60) print "B"
else if (mark>=50) print "C+"
else print "Fail" }'
