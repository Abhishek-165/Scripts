Dim Fso,f,x
const timepoll=500

Set Fso = WScript.CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder("C:\Users\Abhishek\Desktop\Smart Irrigation")
x=1

For Each File In f.Files
	
    sNewFile = File.Name

    Fso.MoveFile sNewFile,Cstr(x)+" "+sNewFile

    wscript.sleep timepoll
    x=x+1

Next