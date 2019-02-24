gcal -N -q jp+in+gb_en | \
sed -E 's/[ ]+/ /g' | \
sed 's/\(.*)\).*\([+-].*\) days/\1 \2/' | \
awk -F')' '$2>0 {print}' | \
awk -F'+' '{print "/remind #channel \"Tomorrow is " $1 "- Have a good holiday.\" in " $2-1 " days"}' | \
sed s/"(JP)"/"in :flag-jp:"/ | \
sed s/"(GB_EN)"/"in :flag-gb:"/ | \
sed s/"(IN)"/"in :flag-in:"/
