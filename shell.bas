dim m as string
dim t as integer
color 7,5
t=0
on error goto nexts
goto starts
nexts:
goto extss
starts:
while t=0
	line input m
	shell "./"+m
extss:
	if lcase(trim(m))="exit" then t=1
wend
