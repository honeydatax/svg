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
dim r as integer
dim rr as integer
dim rrr as integer

print "R?"
input r
print "W?"
input w
print "H?"
input h
print "border?"
input b
bb=b*2
rr=r*2+bb+1

image1=creating(rr,rr,paper, "out.svg")
circles b+r,b+r,r,image1

rect 0,0,r*2+bb,r*2+bb,image1
rect b,b,r*2+b,r*2+b,image1


lines 0,0,bb+r*2,bb+r*2,image1
lines 0,bb+r*2,bb+r*2,0,image1
lines r+b,0,r+b,bb+r*2,image1
lines 0,r+b,bb+r*2,r+b,image1
lines w+b,0,w+b,r*2+bb,image1
lines 0,h+b,r*2+bb,h+b,image1




closeimg image1
