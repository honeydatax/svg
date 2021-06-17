w=1
h=1
printf "w\n"
read w
printf "h\n"
read h
echo $w $h 
ksvgtopng $w $h out.svg out.png

