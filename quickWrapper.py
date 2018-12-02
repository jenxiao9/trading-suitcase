import re
Filename = input("Enter file name (including .sv)")
file=open(Filename, "r")
temp=Filename.split(".")
fwrapper=open(temp[0] + "Wrapper.v", "w")
found=0
inputstage=0
count=0
replacement=[]
for line in file:
	if line.find("module")!=-1:
		found=1
		print ("Found")
	if found:
		restring=re.sub(r'(\[.*\])|(logic)',"",line)
		replacement.append(restring)
		fwrapper.write(restring)
		print(restring)
	if line.find(");")!=-1:
		break
	#print (line)
print ("done")
for s in replacement:
        t=re.sub(r'(input)|(output)',"wire",re.sub(r'module.*\(',"",s))
        fwrapper.write(t)
file.close()
fwrapper.close()
