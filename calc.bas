dim mm as double
dim t as integer
dim d as double
mm=2.824858D
color 7,5
cls
t=0
print "get milimiters 0 to exit"
print mm
while t=0
	input d
	d=d*mm
	print int(d);" px"
	if d = 0.00 then t=1
wend
