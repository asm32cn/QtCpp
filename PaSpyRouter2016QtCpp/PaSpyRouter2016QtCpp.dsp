# Microsoft Developer Studio Project File - Name="PaSpyRouter2016QtCpp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG="PaSpyRouter2016QtCpp - Win32 Release"
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f PaSpyRouter2016QtCpp.mak.
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f PaSpyRouter2016QtCpp.mak CFG="PaSpyRouter2016QtCpp - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PaSpyRouter2016QtCpp - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "PaSpyRouter2016QtCpp - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl
MTL=midl
RSC=rc
BSC32=bscmake.exe

!IF  "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir release
# PROP BASE Intermediate_Dir release
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir release
# PROP Intermediate_Dir release
# PROP Target_Dir ""
# ADD CPP /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtCore /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtCore /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtGui /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtGui /I..\..\lib\qt-win-opensource-src-4.3.4\include /I. /Ie:\lib\qt-win-opensource-src-4.3.4\include\ActiveQt /Irelease /I. /I..\..\lib\qt-win-opensource-src-4.3.4\mkspecs\win32-msvc /c /FD -nologo -Zm200 -O1 -MD -GR -GX -W3  /D "_WINDOWS"  /D UNICODE /D QT_LARGEFILE_SUPPORT /D QT_DLL /D QT_NO_DEBUG /D QT_GUI_LIB /D QT_CORE_LIB /D QT_THREAD_SUPPORT  /D "WIN32"   /D "QT_THREAD_SUPPORT" 
# ADD MTL /nologo /mktyplib203 /win32 /D "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
# ADD BSC32 /nologo
LINK32=link
# ADD LINK32 /NOLOGO /INCREMENTAL:NO /SUBSYSTEM:windows /LIBPATH:e:\lib\qt-win-opensource-src-4.3.4\lib e:\lib\qt-win-opensource-src-4.3.4\lib\qtmain.lib e:\lib\qt-win-opensource-src-4.3.4\lib\QtGui4.lib e:\lib\qt-win-opensource-src-4.3.4\lib\QtCore4.lib /out:release\PaSpyRouter2016QtCpp.exe 

!ELSEIF  "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir debug
# PROP BASE Intermediate_Dir debug
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir debug
# PROP Intermediate_Dir debug
# PROP Target_Dir ""
# ADD CPP /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtCore /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtCore /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtGui /I..\..\lib\qt-win-opensource-src-4.3.4\include\QtGui /I..\..\lib\qt-win-opensource-src-4.3.4\include /I. /Ie:\lib\qt-win-opensource-src-4.3.4\include\ActiveQt /Idebug /I. /I..\..\lib\qt-win-opensource-src-4.3.4\mkspecs\win32-msvc /c /FD -nologo -Zm200 -Zi -MDd -GR -GX -W3  /D "_WINDOWS"  /D UNICODE /D QT_LARGEFILE_SUPPORT /D QT_DLL /D QT_GUI_LIB /D QT_CORE_LIB /D QT_THREAD_SUPPORT  /D "WIN32"   /D "QT_THREAD_SUPPORT" 
# ADD MTL /nologo /mktyplib203 /win32 /D "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
# ADD BSC32 /nologo
LINK32=link
# ADD LINK32 /NOLOGO /DEBUG /SUBSYSTEM:windows /LIBPATH:e:\lib\qt-win-opensource-src-4.3.4\lib e:\lib\qt-win-opensource-src-4.3.4\lib\qtmaind.lib e:\lib\qt-win-opensource-src-4.3.4\lib\QtGuid4.lib e:\lib\qt-win-opensource-src-4.3.4\lib\QtCored4.lib /out:debug\PaSpyRouter2016QtCpp.exe 

!ENDIF 

# Begin Target

# Name "PaSpyRouter2016QtCpp - Win32 Release"
# Name "PaSpyRouter2016QtCpp - Win32 Debug"

# Begin Group "Source Files"
# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File
SOURCE=PaSpyRouter2016QtCpp.cpp
# End Source File

# End Group

# Begin Group "Resources"
# PROP Default_Filter "rc;qrc"
# Begin Source File
SOURCE=PaSpyRouter2016QtCpp.qrc
!IF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Release"

USERDEP_PaSpyRouter2016QtCpp.qrc=
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Running RCC on PaSpyRouter2016QtCpp.qrc
InputPath=PaSpyRouter2016QtCpp.qrc
BuildCmds=  \
	E:\lib\qt-win-opensource-src-4.3.4\bin\rcc.exe -name PaSpyRouter2016QtCpp $(InputPath) -o release\qrc_PaSpyRouter2016QtCpp.cpp
release\qrc_PaSpyRouter2016QtCpp.cpp : $(SOURCE) $(INTDIR) $(OUTDIR)
	$(BuildCmds)

# End Custom Build

!ELSEIF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Debug"

USERDEP_PaSpyRouter2016QtCpp.qrc=
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Running RCC on PaSpyRouter2016QtCpp.qrc
InputPath=PaSpyRouter2016QtCpp.qrc
BuildCmds=  \
	E:\lib\qt-win-opensource-src-4.3.4\bin\rcc.exe -name PaSpyRouter2016QtCpp $(InputPath) -o debug\qrc_PaSpyRouter2016QtCpp.cpp
debug\qrc_PaSpyRouter2016QtCpp.cpp : $(SOURCE) $(INTDIR) $(OUTDIR)
	$(BuildCmds)

# End Custom Build

!ENDIF
# End Source File

# End Group

# Begin Group "Generated"
# PROP Default_Filter ""
# Begin Source File
SOURCE=debug\qrc_PaSpyRouter2016QtCpp.cpp
!IF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Debug"


!ENDIF
# End Source File

# Begin Source File
SOURCE=release\qrc_PaSpyRouter2016QtCpp.cpp
!IF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Release"


!ELSEIF "$(CFG)" == "PaSpyRouter2016QtCpp - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF
# End Source File

# End Group


# End Target
# End Project
