function creating(w as integer, h as integer, c as string,file as string) as integer
	dim img as integer
	img=freefile
	open file for output as img
	print #img,"<?xml version=""1.0"" encoding=""UTF-8"" standalone=""no"" ?>"
	print #img,"<svg width=""";
	print #img,trim(str(w+1));
	print #img,""" height=""";
	print #img,trim(str(h+1));
	print #img,""" >"
	print #img,"<rect stroke=""black"" fill=""#";
	print #img,trim(str(c));
	print #img,""" x=""0"" y=""0""  width=""";
	print #img,trim(str(w));
	print #img,""" height=""";
	print #img,trim(str(h));
	print #img,""" />"
	print #img,""
	return img
end function

sub closeimg(file as integer)
	print #file,"</svg>"
	close file
end sub

sub rect(x as integer, y as integer, x1 as integer,y1 as integer,img as integer)
	print #img,"<rect stroke=""black"" fill=""none"" ";
	print #img," x=""";
	print #img,trim(str(x));
	print #img,""" y=""";
	print #img,trim(str(y));
	print #img,""" width=""";
	print #img,trim(str(x1-x));
	print #img,""" height=""";
	print #img,trim(str(y1-y));
	print #img,""" />";
	print #img,""

end sub 

sub lines(x as integer, y as integer, x1 as integer,y1 as integer,img as integer)
	print #img,"<line stroke=""black"" stroke-width=""1"" ";
	print #img," x1=""";
	print #img,trim(str(x));
	print #img,""" y1=""";
	print #img,trim(str(y));
	print #img,""" x2=""";
	print #img,trim(str(x1));
	print #img,""" y2=""";
	print #img,trim(str(y1));
	print #img,""" />";
	print #img,""

end sub 

sub circles(x as integer,y as integer,r as integer,img as integer)
	print #img,"<circle stroke=""black"" stroke-width=""1"" fill=""none"" ";
	print #img," cx=""";
	print #img,trim(str(x));
	print #img,""" cy=""";
	print #img,trim(str(y));
	print #img,""" r=""";
	print #img,trim(str(r));
	print #img,""" />";
	print #img,""
end sub 

const paper="a0a"
dim w as integer
dim h as integer
dim b as integer
dim bb as integer
dim bbb as integer
dim image1 as integer
color 15,5
dim pi as double
dim x as double
dim y as double
dim xx as double
dim yy as double
dim xx2 as double
dim yy2 as double
dim n as integer
dim nn as double
dim r1 as double
dim centerx as double
dim centery as double
dim r as integer
dim rr as integer
dim rrr as integer
pi=3.1415927
print "R?"
input r
print "many?"
input w
print "border?"
input b
bb=b*2
rr=r*2+bb+1

image1=creating(rr,rr,paper, "out.svg")

rect 0,0,rr,rr,image1
r1=r
centerx=b+r1
centery=b+r1
for n=0 to w
	nn=n
	xx=centerx+(r1)*sin((nn/(w/2))*pi)
	yy=centery-(r1)*cos((nn/(w/2))*pi)
	xx2=centerx+(r1)*sin(((nn+1)/(w/2))*pi)
	yy2=centery-(r1)*cos(((nn+1)/(w/2))*pi)
	lines r+b,r+b,int(xx),int(yy),image1
	lines int(xx2),int(yy2),int(xx),int(yy),image1
	
next

closeimg image1
