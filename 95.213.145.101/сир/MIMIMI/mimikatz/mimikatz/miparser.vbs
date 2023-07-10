Dim IndUsers1: IndUsers1=-1
Dim ListUsers(): ReDim ListUsers(0)

Dim IndPass1: IndPass1=-1
Dim ListPasswords(): ReDim ListPasswords(0)

Dim IndNTLM1: IndNTLM1=-1
Dim ListNTLM(): ReDim ListNTLM(0)

Dim IndSHA1: IndSHA1=-1
Dim ListSHA(): ReDim ListSHA(0)

On Error Resume Next 

set WshArguments=WScript.Arguments
str_LogFile = WshArguments(0)
 
Gl_WorkDir = Replace(WScript.ScriptFullName, WScript.ScriptName, "", 1, -1, vbTextCompare)


Set obj_FSO	= CreateObject("Scripting.FileSystemObject")

If obj_FSO.FileExists(str_LogFile) Then
	Set InFile = obj_FSO.OpenTextFile(str_LogFile)  
End If

str_SavePath = Replace(obj_FSO.GetFile(str_LogFile), obj_FSO.GetFileName(str_LogFile), "", 1, -1, vbTextCompare)

 
Do While Not InFile.AtEndOfStream
	Str = Replace(Replace(Replace(InFile.ReadLine, " ", ""), vbTab, ""), "*", "")
	NeedAdd = True
	If (InStr(1, Str, "username:", vbTextCompare) <> 0) Or (InStr(1, Str, "user:", vbTextCompare) <> 0) Then
		Str = Replace(Replace(Replace(Replace(Str, "username:", ""), "Username:", ""), "UserName:", ""), "USERNAME:", "")
		Str = Replace(Replace(Replace(Str, "user:", ""), "User:", ""), "USER:", "")
		For IndUsers2=0 To IndUsers1
			If (InStr(1, ListUsers(IndUsers2), Str, vbTextCompare) <> 0) Then
				NeedAdd = False
				Exit For
			Else
				NeedAdd = True
			End If
		Next
		If (IndUsers1 < 0) or NeedAdd Then
			If  (InStr(1, Str, "null", vbTextCompare) = 0) and _
				(InStr(1, Str, "$", vbTextCompare) = 0) and _
				(InStr(1, Str, "defaultaccount", vbTextCompare) = 0) and _
				(InStr(1, Str, "wdagutilityaccount", vbTextCompare) = 0) and _
				(InStr(1, Str, "localservice", vbTextCompare) = 0) _
				Then
					IndUsers1=IndUsers1+1
					ReDim Preserve ListUsers(IndUsers1)
					ListUsers(IndUsers1) = Str
			End If
		End If
	End If

	NeedAdd = True
	If (InStr(1, Str, "password:", vbTextCompare) <> 0) Then
		Str = Replace(Replace(Replace(Str, "password:", ""), "Password:", ""), "PASSWORD:", "")
		For IndPass2=0 To IndPass1
			If (InStr(1, ListPasswords(IndPass2), Str, vbBinaryCompare) <> 0) Then
				NeedAdd = False
				Exit For
			Else
				NeedAdd = True
			End If
		Next
		If (IndPass1 < 0) or NeedAdd Then
			If  (InStr(1, Str, "null", vbTextCompare) = 0) _
				Then
					IndPass1=IndPass1+1
					ReDim Preserve ListPasswords(IndPass1)
					ListPasswords(IndPass1) = Str
			End If
		End If
	End If
	
	NeedAdd = True
	If (InStr(1, Str, "hashntlm:", vbTextCompare) <> 0) Or (InStr(1, Str, "ntlm:", vbTextCompare) <> 0) Then
		Str = Replace(Replace(Replace(Replace(Str, "hashntlm:", ""), "Hashntlm:", ""), "HashNTLM:", ""), "HASHNTLM:", "")
		Str = Replace(Replace(Replace(Str, "ntlm:", ""), "Ntlm:", ""), "NTLM:", "")
		For IndNTLM2=0 To IndNTLM1
			If (InStr(1, ListNTLM(IndNTLM2), Str, vbTextCompare) <> 0) Then
				NeedAdd = False
				Exit For
			Else
				NeedAdd = True
			End If
		Next
		If (IndNTLM1 < 0) or NeedAdd Then
			If  (InStr(1, Str, "null", vbTextCompare) = 0) _
				Then
					IndNTLM1=IndNTLM1+1
					ReDim Preserve ListNTLM(IndNTLM1)
					ListNTLM(IndNTLM1) = Str
			End If
		End If
	End If
	
	NeedAdd = True
	If InStr(1, Str, "SHA1:", vbTextCompare) <> 0 Then
		Str = Replace(Replace(Replace(Str, "sha1:", ""), "Sha1:", ""), "SHA1:", "")
		For IndSHA2=0 To IndSHA1
			If (InStr(1, ListSHA(IndSHA2), Str, vbTextCompare) <> 0) Then
				NeedAdd = False
				Exit For
			Else
				NeedAdd = True
			End If
		Next
		If (IndSHA1 < 0) or NeedAdd Then
			If  (InStr(1, Str, "null", vbTextCompare) = 0) _
				Then
					IndSHA1=IndSHA1+1
					ReDim Preserve ListSHA(IndSHA1)
					ListSHA(IndSHA1) = Str
			End If
		End If
	End If
Loop
InFile.Close
 
SaveReportToSMB str_SavePath, "Users.txt", Join(ListUsers, vbCrLf)
SaveReportToSMB str_SavePath, "Passwords.txt", Join(ListPasswords, vbCrLf)
SaveReportToSMB str_SavePath, "NTLM.txt", Join(ListNTLM, vbCrLf)
SaveReportToSMB str_SavePath, "SHA.txt", Join(ListSHA, vbCrLf)





Function SaveReportToSMB(SMBPath, SMBFileName, byRef SMBText)
	If Not obj_FSO.FolderExists(SMBPath) Then    
		MakeDirectory SMBPath
	End If
	If not obj_FSO.FileExists(SMBPath & SMBFileName) Then
		obj_FSO.CreateTextFile(SMBPath & SMBFileName)
	End If
	Set OutFile	= obj_FSO.OpenTextFile(SMBPath & SMBFileName, 2, True)
	OutFile.WriteLine(SMBText)
	OutFile.Close
	SMBText = ""
End Function

Sub AddToReport(ByRef Report, ByVal Text)
	Report = Report & Text
End Sub

Function MakeDirectory(ByVal Path)
	Dim fso, dir
	Set fso = CreateObject("Scripting.FileSystemObject")
	With fso
		If .FolderExists( .GetDriveName(path)) Then
			dir = Path
			Dim rdirs(): ReDim rdirs(-1)
			Do While not .FolderExists(dir) and not .GetDriveName(dir) = dir
				ReDim Preserve rdirs(ubound(rdirs) + 1)
				rdirs(ubound(rdirs)) = .GetFileName(dir)
				dir = .GetParentFolderName(dir)
			Loop
			Do While UBound(rdirs) > -1
				dir = .BuildPath(dir, rdirs(ubound(rdirs)) )
				.CreateFolder dir
				Redim Preserve rdirs(ubound(rdirs) - 1)
			Loop
			MakeDirectory = True
		Else
			MakeDirectory = False
		End If
	End With
End Function
