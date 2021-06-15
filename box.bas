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
dim m as integer
dim mm as integer
dim a as integer
dim z as integer
dim x as integer
dim y as integer

print "W?"
input w
print "H?"
input h
print "Z?"
input z
m=4
mm=4
print "border?"
input b
bb=b*2
bbb=bb*2

image1=creating(z+w+z+bb+1,bb+z+h+z+h+1,paper, "out.svg")
'1
	rect b+z,b,b+z+w,b+z,image1
'2
	rect b,b+z,b+z,b+z+h,image1
'3
	rect b+z,b+z,b+z+w,b+z+h,image1
'4
	rect b+z+w,b+z,b+z+w+z,b+z+h,image1
'5
	rect b+z,b+z+h,b+z+w,b+z+h+z,image1
'6
	rect b+z,b+z+h+z,b+z+w,b+z+h+z+h,image1
' 


closeimg image1
