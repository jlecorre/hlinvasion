# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=hl - Win32 Release
!MESSAGE No configuration specified.  Defaulting to hl - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "hl - Win32 Release" && "$(CFG)" != "hl - Win32 Debug" &&\
 "$(CFG)" != "hl - Win32 Germany" && "$(CFG)" != "hl - Win32 Profile" &&\
 "$(CFG)" != "hl - Win32 HLDEMO Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "hl.mak" CFG="hl - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "hl - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "hl - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "hl - Win32 Germany" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "hl - Win32 Profile" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "hl - Win32 HLDEMO Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "hl - Win32 Profile"
MTL=mktyplib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "hl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Releasehl"
# PROP Intermediate_Dir "Releasehl"
# PROP Target_Dir ""
OUTDIR=.\Releasehl
INTDIR=.\Releasehl
# Begin Custom Macros
TargetName=hl
# End Custom Macros

ALL : "$(OUTDIR)\hl.dll" ".\hl"

CLEAN : 
	-@erase "$(INTDIR)\aflock.obj"
	-@erase "$(INTDIR)\agrunt.obj"
	-@erase "$(INTDIR)\airtank.obj"
	-@erase "$(INTDIR)\animating.obj"
	-@erase "$(INTDIR)\animation.obj"
	-@erase "$(INTDIR)\apache.obj"
	-@erase "$(INTDIR)\barnacle.obj"
	-@erase "$(INTDIR)\barney.obj"
	-@erase "$(INTDIR)\bigmomma.obj"
	-@erase "$(INTDIR)\bloater.obj"
	-@erase "$(INTDIR)\bmodels.obj"
	-@erase "$(INTDIR)\bullsquid.obj"
	-@erase "$(INTDIR)\buttons.obj"
	-@erase "$(INTDIR)\cbase.obj"
	-@erase "$(INTDIR)\client.obj"
	-@erase "$(INTDIR)\combat.obj"
	-@erase "$(INTDIR)\controller.obj"
	-@erase "$(INTDIR)\crossbow.obj"
	-@erase "$(INTDIR)\crowbar.obj"
	-@erase "$(INTDIR)\defaultai.obj"
	-@erase "$(INTDIR)\doors.obj"
	-@erase "$(INTDIR)\effects.obj"
	-@erase "$(INTDIR)\egon.obj"
	-@erase "$(INTDIR)\explode.obj"
	-@erase "$(INTDIR)\flyingmonster.obj"
	-@erase "$(INTDIR)\func_break.obj"
	-@erase "$(INTDIR)\func_tank.obj"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\gamerules.obj"
	-@erase "$(INTDIR)\gargantua.obj"
	-@erase "$(INTDIR)\gauss.obj"
	-@erase "$(INTDIR)\genericmonster.obj"
	-@erase "$(INTDIR)\ggrenade.obj"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\glock.obj"
	-@erase "$(INTDIR)\gman.obj"
	-@erase "$(INTDIR)\h_ai.obj"
	-@erase "$(INTDIR)\h_battery.obj"
	-@erase "$(INTDIR)\h_cine.obj"
	-@erase "$(INTDIR)\h_cycler.obj"
	-@erase "$(INTDIR)\h_export.obj"
	-@erase "$(INTDIR)\handgrenade.obj"
	-@erase "$(INTDIR)\hassassin.obj"
	-@erase "$(INTDIR)\headcrab.obj"
	-@erase "$(INTDIR)\healthkit.obj"
	-@erase "$(INTDIR)\hgrunt.obj"
	-@erase "$(INTDIR)\hornet.obj"
	-@erase "$(INTDIR)\hornetgun.obj"
	-@erase "$(INTDIR)\houndeye.obj"
	-@erase "$(INTDIR)\ichthyosaur.obj"
	-@erase "$(INTDIR)\islave.obj"
	-@erase "$(INTDIR)\items.obj"
	-@erase "$(INTDIR)\leech.obj"
	-@erase "$(INTDIR)\lights.obj"
	-@erase "$(INTDIR)\maprules.obj"
	-@erase "$(INTDIR)\monstermaker.obj"
	-@erase "$(INTDIR)\monsters.obj"
	-@erase "$(INTDIR)\monsterstate.obj"
	-@erase "$(INTDIR)\mortar.obj"
	-@erase "$(INTDIR)\mp5.obj"
	-@erase "$(INTDIR)\multiplay_gamerules.obj"
	-@erase "$(INTDIR)\nihilanth.obj"
	-@erase "$(INTDIR)\nodes.obj"
	-@erase "$(INTDIR)\osprey.obj"
	-@erase "$(INTDIR)\pathcorner.obj"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\plats.obj"
	-@erase "$(INTDIR)\player.obj"
	-@erase "$(INTDIR)\python.obj"
	-@erase "$(INTDIR)\rat.obj"
	-@erase "$(INTDIR)\roach.obj"
	-@erase "$(INTDIR)\rpg.obj"
	-@erase "$(INTDIR)\satchel.obj"
	-@erase "$(INTDIR)\schedule.obj"
	-@erase "$(INTDIR)\scientist.obj"
	-@erase "$(INTDIR)\scripted.obj"
	-@erase "$(INTDIR)\shotgun.obj"
	-@erase "$(INTDIR)\singleplay_gamerules.obj"
	-@erase "$(INTDIR)\skill.obj"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\soundent.obj"
	-@erase "$(INTDIR)\spectator.obj"
	-@erase "$(INTDIR)\squadmonster.obj"
	-@erase "$(INTDIR)\squeakgrenade.obj"
	-@erase "$(INTDIR)\subs.obj"
	-@erase "$(INTDIR)\talkmonster.obj"
	-@erase "$(INTDIR)\teamplay_gamerules.obj"
	-@erase "$(INTDIR)\tempmonster.obj"
	-@erase "$(INTDIR)\tentacle.obj"
	-@erase "$(INTDIR)\triggers.obj"
	-@erase "$(INTDIR)\tripmine.obj"
	-@erase "$(INTDIR)\turret.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\weapons.obj"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\WXDEBUG.OBJ"
	-@erase "$(INTDIR)\xen.obj"
	-@erase "$(INTDIR)\zombie.obj"
	-@erase "$(OUTDIR)\hl.dll"
	-@erase "$(OUTDIR)\hl.exp"
	-@erase "$(OUTDIR)\hl.lib"
	-@erase "$(OUTDIR)\hl.map"
	-@erase "$(OUTDIR)\hl.pdb"
	-@erase ".\hl"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL"\
 /Fp"$(INTDIR)/hl.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Releasehl/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /map /debug /machine:I386 /def:".\hl.def"
# SUBTRACT LINK32 /profile
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/hl.pdb"\
 /map:"$(INTDIR)/hl.map" /debug /machine:I386 /def:".\hl.def"\
 /out:"$(OUTDIR)/hl.dll" /implib:"$(OUTDIR)/hl.lib" 
LINK32_OBJS= \
	"$(INTDIR)\aflock.obj" \
	"$(INTDIR)\agrunt.obj" \
	"$(INTDIR)\airtank.obj" \
	"$(INTDIR)\animating.obj" \
	"$(INTDIR)\animation.obj" \
	"$(INTDIR)\apache.obj" \
	"$(INTDIR)\barnacle.obj" \
	"$(INTDIR)\barney.obj" \
	"$(INTDIR)\bigmomma.obj" \
	"$(INTDIR)\bloater.obj" \
	"$(INTDIR)\bmodels.obj" \
	"$(INTDIR)\bullsquid.obj" \
	"$(INTDIR)\buttons.obj" \
	"$(INTDIR)\cbase.obj" \
	"$(INTDIR)\client.obj" \
	"$(INTDIR)\combat.obj" \
	"$(INTDIR)\controller.obj" \
	"$(INTDIR)\crossbow.obj" \
	"$(INTDIR)\crowbar.obj" \
	"$(INTDIR)\defaultai.obj" \
	"$(INTDIR)\doors.obj" \
	"$(INTDIR)\effects.obj" \
	"$(INTDIR)\egon.obj" \
	"$(INTDIR)\explode.obj" \
	"$(INTDIR)\flyingmonster.obj" \
	"$(INTDIR)\func_break.obj" \
	"$(INTDIR)\func_tank.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\gamerules.obj" \
	"$(INTDIR)\gargantua.obj" \
	"$(INTDIR)\gauss.obj" \
	"$(INTDIR)\genericmonster.obj" \
	"$(INTDIR)\ggrenade.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\glock.obj" \
	"$(INTDIR)\gman.obj" \
	"$(INTDIR)\h_ai.obj" \
	"$(INTDIR)\h_battery.obj" \
	"$(INTDIR)\h_cine.obj" \
	"$(INTDIR)\h_cycler.obj" \
	"$(INTDIR)\h_export.obj" \
	"$(INTDIR)\handgrenade.obj" \
	"$(INTDIR)\hassassin.obj" \
	"$(INTDIR)\headcrab.obj" \
	"$(INTDIR)\healthkit.obj" \
	"$(INTDIR)\hgrunt.obj" \
	"$(INTDIR)\hornet.obj" \
	"$(INTDIR)\hornetgun.obj" \
	"$(INTDIR)\houndeye.obj" \
	"$(INTDIR)\ichthyosaur.obj" \
	"$(INTDIR)\islave.obj" \
	"$(INTDIR)\items.obj" \
	"$(INTDIR)\leech.obj" \
	"$(INTDIR)\lights.obj" \
	"$(INTDIR)\maprules.obj" \
	"$(INTDIR)\monstermaker.obj" \
	"$(INTDIR)\monsters.obj" \
	"$(INTDIR)\monsterstate.obj" \
	"$(INTDIR)\mortar.obj" \
	"$(INTDIR)\mp5.obj" \
	"$(INTDIR)\multiplay_gamerules.obj" \
	"$(INTDIR)\nihilanth.obj" \
	"$(INTDIR)\nodes.obj" \
	"$(INTDIR)\osprey.obj" \
	"$(INTDIR)\pathcorner.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\plats.obj" \
	"$(INTDIR)\player.obj" \
	"$(INTDIR)\python.obj" \
	"$(INTDIR)\rat.obj" \
	"$(INTDIR)\roach.obj" \
	"$(INTDIR)\rpg.obj" \
	"$(INTDIR)\satchel.obj" \
	"$(INTDIR)\schedule.obj" \
	"$(INTDIR)\scientist.obj" \
	"$(INTDIR)\scripted.obj" \
	"$(INTDIR)\shotgun.obj" \
	"$(INTDIR)\singleplay_gamerules.obj" \
	"$(INTDIR)\skill.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\soundent.obj" \
	"$(INTDIR)\spectator.obj" \
	"$(INTDIR)\squadmonster.obj" \
	"$(INTDIR)\squeakgrenade.obj" \
	"$(INTDIR)\subs.obj" \
	"$(INTDIR)\talkmonster.obj" \
	"$(INTDIR)\teamplay_gamerules.obj" \
	"$(INTDIR)\tempmonster.obj" \
	"$(INTDIR)\tentacle.obj" \
	"$(INTDIR)\triggers.obj" \
	"$(INTDIR)\tripmine.obj" \
	"$(INTDIR)\turret.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\weapons.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\WXDEBUG.OBJ" \
	"$(INTDIR)\xen.obj" \
	"$(INTDIR)\zombie.obj"

"$(OUTDIR)\hl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
TargetPath=.\Releasehl\hl.dll
TargetName=hl
InputPath=.\Releasehl\hl.dll
SOURCE=$(InputPath)

"$(TargetName)" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy $(TargetPath) u:\quiver\valve\dlls

# End Custom Build

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "hl___Win"
# PROP BASE Intermediate_Dir "hl___Win"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "debughl"
# PROP Intermediate_Dir "debughl"
# PROP Target_Dir ""
OUTDIR=.\debughl
INTDIR=.\debughl

ALL : "$(OUTDIR)\hl.dll" "$(OUTDIR)\hl.bsc" "..\..\valve\dlls\hl.dll"

CLEAN : 
	-@erase "$(INTDIR)\aflock.obj"
	-@erase "$(INTDIR)\aflock.sbr"
	-@erase "$(INTDIR)\agrunt.obj"
	-@erase "$(INTDIR)\agrunt.sbr"
	-@erase "$(INTDIR)\airtank.obj"
	-@erase "$(INTDIR)\airtank.sbr"
	-@erase "$(INTDIR)\animating.obj"
	-@erase "$(INTDIR)\animating.sbr"
	-@erase "$(INTDIR)\animation.obj"
	-@erase "$(INTDIR)\animation.sbr"
	-@erase "$(INTDIR)\apache.obj"
	-@erase "$(INTDIR)\apache.sbr"
	-@erase "$(INTDIR)\barnacle.obj"
	-@erase "$(INTDIR)\barnacle.sbr"
	-@erase "$(INTDIR)\barney.obj"
	-@erase "$(INTDIR)\barney.sbr"
	-@erase "$(INTDIR)\bigmomma.obj"
	-@erase "$(INTDIR)\bigmomma.sbr"
	-@erase "$(INTDIR)\bloater.obj"
	-@erase "$(INTDIR)\bloater.sbr"
	-@erase "$(INTDIR)\bmodels.obj"
	-@erase "$(INTDIR)\bmodels.sbr"
	-@erase "$(INTDIR)\bullsquid.obj"
	-@erase "$(INTDIR)\bullsquid.sbr"
	-@erase "$(INTDIR)\buttons.obj"
	-@erase "$(INTDIR)\buttons.sbr"
	-@erase "$(INTDIR)\cbase.obj"
	-@erase "$(INTDIR)\cbase.sbr"
	-@erase "$(INTDIR)\client.obj"
	-@erase "$(INTDIR)\client.sbr"
	-@erase "$(INTDIR)\combat.obj"
	-@erase "$(INTDIR)\combat.sbr"
	-@erase "$(INTDIR)\controller.obj"
	-@erase "$(INTDIR)\controller.sbr"
	-@erase "$(INTDIR)\crossbow.obj"
	-@erase "$(INTDIR)\crossbow.sbr"
	-@erase "$(INTDIR)\crowbar.obj"
	-@erase "$(INTDIR)\crowbar.sbr"
	-@erase "$(INTDIR)\defaultai.obj"
	-@erase "$(INTDIR)\defaultai.sbr"
	-@erase "$(INTDIR)\doors.obj"
	-@erase "$(INTDIR)\doors.sbr"
	-@erase "$(INTDIR)\effects.obj"
	-@erase "$(INTDIR)\effects.sbr"
	-@erase "$(INTDIR)\egon.obj"
	-@erase "$(INTDIR)\egon.sbr"
	-@erase "$(INTDIR)\explode.obj"
	-@erase "$(INTDIR)\explode.sbr"
	-@erase "$(INTDIR)\flyingmonster.obj"
	-@erase "$(INTDIR)\flyingmonster.sbr"
	-@erase "$(INTDIR)\func_break.obj"
	-@erase "$(INTDIR)\func_break.sbr"
	-@erase "$(INTDIR)\func_tank.obj"
	-@erase "$(INTDIR)\func_tank.sbr"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\game.sbr"
	-@erase "$(INTDIR)\gamerules.obj"
	-@erase "$(INTDIR)\gamerules.sbr"
	-@erase "$(INTDIR)\gargantua.obj"
	-@erase "$(INTDIR)\gargantua.sbr"
	-@erase "$(INTDIR)\gauss.obj"
	-@erase "$(INTDIR)\gauss.sbr"
	-@erase "$(INTDIR)\genericmonster.obj"
	-@erase "$(INTDIR)\genericmonster.sbr"
	-@erase "$(INTDIR)\ggrenade.obj"
	-@erase "$(INTDIR)\ggrenade.sbr"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\globals.sbr"
	-@erase "$(INTDIR)\glock.obj"
	-@erase "$(INTDIR)\glock.sbr"
	-@erase "$(INTDIR)\gman.obj"
	-@erase "$(INTDIR)\gman.sbr"
	-@erase "$(INTDIR)\h_ai.obj"
	-@erase "$(INTDIR)\h_ai.sbr"
	-@erase "$(INTDIR)\h_battery.obj"
	-@erase "$(INTDIR)\h_battery.sbr"
	-@erase "$(INTDIR)\h_cine.obj"
	-@erase "$(INTDIR)\h_cine.sbr"
	-@erase "$(INTDIR)\h_cycler.obj"
	-@erase "$(INTDIR)\h_cycler.sbr"
	-@erase "$(INTDIR)\h_export.obj"
	-@erase "$(INTDIR)\h_export.sbr"
	-@erase "$(INTDIR)\handgrenade.obj"
	-@erase "$(INTDIR)\handgrenade.sbr"
	-@erase "$(INTDIR)\hassassin.obj"
	-@erase "$(INTDIR)\hassassin.sbr"
	-@erase "$(INTDIR)\headcrab.obj"
	-@erase "$(INTDIR)\headcrab.sbr"
	-@erase "$(INTDIR)\healthkit.obj"
	-@erase "$(INTDIR)\healthkit.sbr"
	-@erase "$(INTDIR)\hgrunt.obj"
	-@erase "$(INTDIR)\hgrunt.sbr"
	-@erase "$(INTDIR)\hornet.obj"
	-@erase "$(INTDIR)\hornet.sbr"
	-@erase "$(INTDIR)\hornetgun.obj"
	-@erase "$(INTDIR)\hornetgun.sbr"
	-@erase "$(INTDIR)\houndeye.obj"
	-@erase "$(INTDIR)\houndeye.sbr"
	-@erase "$(INTDIR)\ichthyosaur.obj"
	-@erase "$(INTDIR)\ichthyosaur.sbr"
	-@erase "$(INTDIR)\islave.obj"
	-@erase "$(INTDIR)\islave.sbr"
	-@erase "$(INTDIR)\items.obj"
	-@erase "$(INTDIR)\items.sbr"
	-@erase "$(INTDIR)\leech.obj"
	-@erase "$(INTDIR)\leech.sbr"
	-@erase "$(INTDIR)\lights.obj"
	-@erase "$(INTDIR)\lights.sbr"
	-@erase "$(INTDIR)\maprules.obj"
	-@erase "$(INTDIR)\maprules.sbr"
	-@erase "$(INTDIR)\monstermaker.obj"
	-@erase "$(INTDIR)\monstermaker.sbr"
	-@erase "$(INTDIR)\monsters.obj"
	-@erase "$(INTDIR)\monsters.sbr"
	-@erase "$(INTDIR)\monsterstate.obj"
	-@erase "$(INTDIR)\monsterstate.sbr"
	-@erase "$(INTDIR)\mortar.obj"
	-@erase "$(INTDIR)\mortar.sbr"
	-@erase "$(INTDIR)\mp5.obj"
	-@erase "$(INTDIR)\mp5.sbr"
	-@erase "$(INTDIR)\multiplay_gamerules.obj"
	-@erase "$(INTDIR)\multiplay_gamerules.sbr"
	-@erase "$(INTDIR)\nihilanth.obj"
	-@erase "$(INTDIR)\nihilanth.sbr"
	-@erase "$(INTDIR)\nodes.obj"
	-@erase "$(INTDIR)\nodes.sbr"
	-@erase "$(INTDIR)\osprey.obj"
	-@erase "$(INTDIR)\osprey.sbr"
	-@erase "$(INTDIR)\pathcorner.obj"
	-@erase "$(INTDIR)\pathcorner.sbr"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\plane.sbr"
	-@erase "$(INTDIR)\plats.obj"
	-@erase "$(INTDIR)\plats.sbr"
	-@erase "$(INTDIR)\player.obj"
	-@erase "$(INTDIR)\player.sbr"
	-@erase "$(INTDIR)\python.obj"
	-@erase "$(INTDIR)\python.sbr"
	-@erase "$(INTDIR)\rat.obj"
	-@erase "$(INTDIR)\rat.sbr"
	-@erase "$(INTDIR)\roach.obj"
	-@erase "$(INTDIR)\roach.sbr"
	-@erase "$(INTDIR)\rpg.obj"
	-@erase "$(INTDIR)\rpg.sbr"
	-@erase "$(INTDIR)\satchel.obj"
	-@erase "$(INTDIR)\satchel.sbr"
	-@erase "$(INTDIR)\schedule.obj"
	-@erase "$(INTDIR)\schedule.sbr"
	-@erase "$(INTDIR)\scientist.obj"
	-@erase "$(INTDIR)\scientist.sbr"
	-@erase "$(INTDIR)\scripted.obj"
	-@erase "$(INTDIR)\scripted.sbr"
	-@erase "$(INTDIR)\shotgun.obj"
	-@erase "$(INTDIR)\shotgun.sbr"
	-@erase "$(INTDIR)\singleplay_gamerules.obj"
	-@erase "$(INTDIR)\singleplay_gamerules.sbr"
	-@erase "$(INTDIR)\skill.obj"
	-@erase "$(INTDIR)\skill.sbr"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\sound.sbr"
	-@erase "$(INTDIR)\soundent.obj"
	-@erase "$(INTDIR)\soundent.sbr"
	-@erase "$(INTDIR)\spectator.obj"
	-@erase "$(INTDIR)\spectator.sbr"
	-@erase "$(INTDIR)\squadmonster.obj"
	-@erase "$(INTDIR)\squadmonster.sbr"
	-@erase "$(INTDIR)\squeakgrenade.obj"
	-@erase "$(INTDIR)\squeakgrenade.sbr"
	-@erase "$(INTDIR)\subs.obj"
	-@erase "$(INTDIR)\subs.sbr"
	-@erase "$(INTDIR)\talkmonster.obj"
	-@erase "$(INTDIR)\talkmonster.sbr"
	-@erase "$(INTDIR)\teamplay_gamerules.obj"
	-@erase "$(INTDIR)\teamplay_gamerules.sbr"
	-@erase "$(INTDIR)\tempmonster.obj"
	-@erase "$(INTDIR)\tempmonster.sbr"
	-@erase "$(INTDIR)\tentacle.obj"
	-@erase "$(INTDIR)\tentacle.sbr"
	-@erase "$(INTDIR)\triggers.obj"
	-@erase "$(INTDIR)\triggers.sbr"
	-@erase "$(INTDIR)\tripmine.obj"
	-@erase "$(INTDIR)\tripmine.sbr"
	-@erase "$(INTDIR)\turret.obj"
	-@erase "$(INTDIR)\turret.sbr"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\util.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\weapons.obj"
	-@erase "$(INTDIR)\weapons.sbr"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\world.sbr"
	-@erase "$(INTDIR)\WXDEBUG.OBJ"
	-@erase "$(INTDIR)\WXDEBUG.SBR"
	-@erase "$(INTDIR)\xen.obj"
	-@erase "$(INTDIR)\xen.sbr"
	-@erase "$(INTDIR)\zombie.obj"
	-@erase "$(INTDIR)\zombie.sbr"
	-@erase "$(OUTDIR)\hl.bsc"
	-@erase "$(OUTDIR)\hl.dll"
	-@erase "$(OUTDIR)\hl.ilk"
	-@erase "$(OUTDIR)\hl.pdb"
	-@erase "..\..\valve\dlls\hl.dll"
	-@erase ".\Debug\hl.exp"
	-@erase ".\Debug\hl.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /I "..\engine" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /FR /YX /c
CPP_PROJ=/nologo /G5 /MTd /W3 /Gm /GX /Zi /Od /I "..\engine" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/hl.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\debughl/
CPP_SBRS=.\debughl/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /i "..\engine" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hl.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\aflock.sbr" \
	"$(INTDIR)\agrunt.sbr" \
	"$(INTDIR)\airtank.sbr" \
	"$(INTDIR)\animating.sbr" \
	"$(INTDIR)\animation.sbr" \
	"$(INTDIR)\apache.sbr" \
	"$(INTDIR)\barnacle.sbr" \
	"$(INTDIR)\barney.sbr" \
	"$(INTDIR)\bigmomma.sbr" \
	"$(INTDIR)\bloater.sbr" \
	"$(INTDIR)\bmodels.sbr" \
	"$(INTDIR)\bullsquid.sbr" \
	"$(INTDIR)\buttons.sbr" \
	"$(INTDIR)\cbase.sbr" \
	"$(INTDIR)\client.sbr" \
	"$(INTDIR)\combat.sbr" \
	"$(INTDIR)\controller.sbr" \
	"$(INTDIR)\crossbow.sbr" \
	"$(INTDIR)\crowbar.sbr" \
	"$(INTDIR)\defaultai.sbr" \
	"$(INTDIR)\doors.sbr" \
	"$(INTDIR)\effects.sbr" \
	"$(INTDIR)\egon.sbr" \
	"$(INTDIR)\explode.sbr" \
	"$(INTDIR)\flyingmonster.sbr" \
	"$(INTDIR)\func_break.sbr" \
	"$(INTDIR)\func_tank.sbr" \
	"$(INTDIR)\game.sbr" \
	"$(INTDIR)\gamerules.sbr" \
	"$(INTDIR)\gargantua.sbr" \
	"$(INTDIR)\gauss.sbr" \
	"$(INTDIR)\genericmonster.sbr" \
	"$(INTDIR)\ggrenade.sbr" \
	"$(INTDIR)\globals.sbr" \
	"$(INTDIR)\glock.sbr" \
	"$(INTDIR)\gman.sbr" \
	"$(INTDIR)\h_ai.sbr" \
	"$(INTDIR)\h_battery.sbr" \
	"$(INTDIR)\h_cine.sbr" \
	"$(INTDIR)\h_cycler.sbr" \
	"$(INTDIR)\h_export.sbr" \
	"$(INTDIR)\handgrenade.sbr" \
	"$(INTDIR)\hassassin.sbr" \
	"$(INTDIR)\headcrab.sbr" \
	"$(INTDIR)\healthkit.sbr" \
	"$(INTDIR)\hgrunt.sbr" \
	"$(INTDIR)\hornet.sbr" \
	"$(INTDIR)\hornetgun.sbr" \
	"$(INTDIR)\houndeye.sbr" \
	"$(INTDIR)\ichthyosaur.sbr" \
	"$(INTDIR)\islave.sbr" \
	"$(INTDIR)\items.sbr" \
	"$(INTDIR)\leech.sbr" \
	"$(INTDIR)\lights.sbr" \
	"$(INTDIR)\maprules.sbr" \
	"$(INTDIR)\monstermaker.sbr" \
	"$(INTDIR)\monsters.sbr" \
	"$(INTDIR)\monsterstate.sbr" \
	"$(INTDIR)\mortar.sbr" \
	"$(INTDIR)\mp5.sbr" \
	"$(INTDIR)\multiplay_gamerules.sbr" \
	"$(INTDIR)\nihilanth.sbr" \
	"$(INTDIR)\nodes.sbr" \
	"$(INTDIR)\osprey.sbr" \
	"$(INTDIR)\pathcorner.sbr" \
	"$(INTDIR)\plane.sbr" \
	"$(INTDIR)\plats.sbr" \
	"$(INTDIR)\player.sbr" \
	"$(INTDIR)\python.sbr" \
	"$(INTDIR)\rat.sbr" \
	"$(INTDIR)\roach.sbr" \
	"$(INTDIR)\rpg.sbr" \
	"$(INTDIR)\satchel.sbr" \
	"$(INTDIR)\schedule.sbr" \
	"$(INTDIR)\scientist.sbr" \
	"$(INTDIR)\scripted.sbr" \
	"$(INTDIR)\shotgun.sbr" \
	"$(INTDIR)\singleplay_gamerules.sbr" \
	"$(INTDIR)\skill.sbr" \
	"$(INTDIR)\sound.sbr" \
	"$(INTDIR)\soundent.sbr" \
	"$(INTDIR)\spectator.sbr" \
	"$(INTDIR)\squadmonster.sbr" \
	"$(INTDIR)\squeakgrenade.sbr" \
	"$(INTDIR)\subs.sbr" \
	"$(INTDIR)\talkmonster.sbr" \
	"$(INTDIR)\teamplay_gamerules.sbr" \
	"$(INTDIR)\tempmonster.sbr" \
	"$(INTDIR)\tentacle.sbr" \
	"$(INTDIR)\triggers.sbr" \
	"$(INTDIR)\tripmine.sbr" \
	"$(INTDIR)\turret.sbr" \
	"$(INTDIR)\util.sbr" \
	"$(INTDIR)\weapons.sbr" \
	"$(INTDIR)\world.sbr" \
	"$(INTDIR)\WXDEBUG.SBR" \
	"$(INTDIR)\xen.sbr" \
	"$(INTDIR)\zombie.sbr"

"$(OUTDIR)\hl.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 user32.lib advapi32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /def:".\hl.def" /implib:"Debug/hl.lib"
# SUBTRACT LINK32 /profile
LINK32_FLAGS=user32.lib advapi32.lib /nologo /subsystem:windows /dll\
 /incremental:yes /pdb:"$(OUTDIR)/hl.pdb" /debug /machine:I386 /def:".\hl.def"\
 /out:"$(OUTDIR)/hl.dll" /implib:"Debug/hl.lib" 
LINK32_OBJS= \
	"$(INTDIR)\aflock.obj" \
	"$(INTDIR)\agrunt.obj" \
	"$(INTDIR)\airtank.obj" \
	"$(INTDIR)\animating.obj" \
	"$(INTDIR)\animation.obj" \
	"$(INTDIR)\apache.obj" \
	"$(INTDIR)\barnacle.obj" \
	"$(INTDIR)\barney.obj" \
	"$(INTDIR)\bigmomma.obj" \
	"$(INTDIR)\bloater.obj" \
	"$(INTDIR)\bmodels.obj" \
	"$(INTDIR)\bullsquid.obj" \
	"$(INTDIR)\buttons.obj" \
	"$(INTDIR)\cbase.obj" \
	"$(INTDIR)\client.obj" \
	"$(INTDIR)\combat.obj" \
	"$(INTDIR)\controller.obj" \
	"$(INTDIR)\crossbow.obj" \
	"$(INTDIR)\crowbar.obj" \
	"$(INTDIR)\defaultai.obj" \
	"$(INTDIR)\doors.obj" \
	"$(INTDIR)\effects.obj" \
	"$(INTDIR)\egon.obj" \
	"$(INTDIR)\explode.obj" \
	"$(INTDIR)\flyingmonster.obj" \
	"$(INTDIR)\func_break.obj" \
	"$(INTDIR)\func_tank.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\gamerules.obj" \
	"$(INTDIR)\gargantua.obj" \
	"$(INTDIR)\gauss.obj" \
	"$(INTDIR)\genericmonster.obj" \
	"$(INTDIR)\ggrenade.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\glock.obj" \
	"$(INTDIR)\gman.obj" \
	"$(INTDIR)\h_ai.obj" \
	"$(INTDIR)\h_battery.obj" \
	"$(INTDIR)\h_cine.obj" \
	"$(INTDIR)\h_cycler.obj" \
	"$(INTDIR)\h_export.obj" \
	"$(INTDIR)\handgrenade.obj" \
	"$(INTDIR)\hassassin.obj" \
	"$(INTDIR)\headcrab.obj" \
	"$(INTDIR)\healthkit.obj" \
	"$(INTDIR)\hgrunt.obj" \
	"$(INTDIR)\hornet.obj" \
	"$(INTDIR)\hornetgun.obj" \
	"$(INTDIR)\houndeye.obj" \
	"$(INTDIR)\ichthyosaur.obj" \
	"$(INTDIR)\islave.obj" \
	"$(INTDIR)\items.obj" \
	"$(INTDIR)\leech.obj" \
	"$(INTDIR)\lights.obj" \
	"$(INTDIR)\maprules.obj" \
	"$(INTDIR)\monstermaker.obj" \
	"$(INTDIR)\monsters.obj" \
	"$(INTDIR)\monsterstate.obj" \
	"$(INTDIR)\mortar.obj" \
	"$(INTDIR)\mp5.obj" \
	"$(INTDIR)\multiplay_gamerules.obj" \
	"$(INTDIR)\nihilanth.obj" \
	"$(INTDIR)\nodes.obj" \
	"$(INTDIR)\osprey.obj" \
	"$(INTDIR)\pathcorner.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\plats.obj" \
	"$(INTDIR)\player.obj" \
	"$(INTDIR)\python.obj" \
	"$(INTDIR)\rat.obj" \
	"$(INTDIR)\roach.obj" \
	"$(INTDIR)\rpg.obj" \
	"$(INTDIR)\satchel.obj" \
	"$(INTDIR)\schedule.obj" \
	"$(INTDIR)\scientist.obj" \
	"$(INTDIR)\scripted.obj" \
	"$(INTDIR)\shotgun.obj" \
	"$(INTDIR)\singleplay_gamerules.obj" \
	"$(INTDIR)\skill.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\soundent.obj" \
	"$(INTDIR)\spectator.obj" \
	"$(INTDIR)\squadmonster.obj" \
	"$(INTDIR)\squeakgrenade.obj" \
	"$(INTDIR)\subs.obj" \
	"$(INTDIR)\talkmonster.obj" \
	"$(INTDIR)\teamplay_gamerules.obj" \
	"$(INTDIR)\tempmonster.obj" \
	"$(INTDIR)\tentacle.obj" \
	"$(INTDIR)\triggers.obj" \
	"$(INTDIR)\tripmine.obj" \
	"$(INTDIR)\turret.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\weapons.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\WXDEBUG.OBJ" \
	"$(INTDIR)\xen.obj" \
	"$(INTDIR)\zombie.obj"

"$(OUTDIR)\hl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Copying to \quiver\valve\dlls
TargetDir=.\debughl
InputPath=.\debughl\hl.dll
SOURCE=$(InputPath)

"\quiver\valve\dlls\hl.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy $(TargetDir)\hl.dll \quiver\valve\dlls

# End Custom Build

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "hl___Win"
# PROP BASE Intermediate_Dir "hl___Win"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Germany"
# PROP Intermediate_Dir "Germany"
# PROP Target_Dir ""
OUTDIR=.\Germany
INTDIR=.\Germany

ALL : "$(OUTDIR)\hl.dll" "$(OUTDIR)\hl.bsc" "..\..\valve\Germandlls\hl.dll"

CLEAN : 
	-@erase "$(INTDIR)\aflock.obj"
	-@erase "$(INTDIR)\aflock.sbr"
	-@erase "$(INTDIR)\agrunt.obj"
	-@erase "$(INTDIR)\agrunt.sbr"
	-@erase "$(INTDIR)\airtank.obj"
	-@erase "$(INTDIR)\airtank.sbr"
	-@erase "$(INTDIR)\animating.obj"
	-@erase "$(INTDIR)\animating.sbr"
	-@erase "$(INTDIR)\animation.obj"
	-@erase "$(INTDIR)\animation.sbr"
	-@erase "$(INTDIR)\apache.obj"
	-@erase "$(INTDIR)\apache.sbr"
	-@erase "$(INTDIR)\barnacle.obj"
	-@erase "$(INTDIR)\barnacle.sbr"
	-@erase "$(INTDIR)\barney.obj"
	-@erase "$(INTDIR)\barney.sbr"
	-@erase "$(INTDIR)\bigmomma.obj"
	-@erase "$(INTDIR)\bigmomma.sbr"
	-@erase "$(INTDIR)\bloater.obj"
	-@erase "$(INTDIR)\bloater.sbr"
	-@erase "$(INTDIR)\bmodels.obj"
	-@erase "$(INTDIR)\bmodels.sbr"
	-@erase "$(INTDIR)\bullsquid.obj"
	-@erase "$(INTDIR)\bullsquid.sbr"
	-@erase "$(INTDIR)\buttons.obj"
	-@erase "$(INTDIR)\buttons.sbr"
	-@erase "$(INTDIR)\cbase.obj"
	-@erase "$(INTDIR)\cbase.sbr"
	-@erase "$(INTDIR)\client.obj"
	-@erase "$(INTDIR)\client.sbr"
	-@erase "$(INTDIR)\combat.obj"
	-@erase "$(INTDIR)\combat.sbr"
	-@erase "$(INTDIR)\controller.obj"
	-@erase "$(INTDIR)\controller.sbr"
	-@erase "$(INTDIR)\crossbow.obj"
	-@erase "$(INTDIR)\crossbow.sbr"
	-@erase "$(INTDIR)\crowbar.obj"
	-@erase "$(INTDIR)\crowbar.sbr"
	-@erase "$(INTDIR)\defaultai.obj"
	-@erase "$(INTDIR)\defaultai.sbr"
	-@erase "$(INTDIR)\doors.obj"
	-@erase "$(INTDIR)\doors.sbr"
	-@erase "$(INTDIR)\effects.obj"
	-@erase "$(INTDIR)\effects.sbr"
	-@erase "$(INTDIR)\egon.obj"
	-@erase "$(INTDIR)\egon.sbr"
	-@erase "$(INTDIR)\explode.obj"
	-@erase "$(INTDIR)\explode.sbr"
	-@erase "$(INTDIR)\flyingmonster.obj"
	-@erase "$(INTDIR)\flyingmonster.sbr"
	-@erase "$(INTDIR)\func_break.obj"
	-@erase "$(INTDIR)\func_break.sbr"
	-@erase "$(INTDIR)\func_tank.obj"
	-@erase "$(INTDIR)\func_tank.sbr"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\game.sbr"
	-@erase "$(INTDIR)\gamerules.obj"
	-@erase "$(INTDIR)\gamerules.sbr"
	-@erase "$(INTDIR)\gargantua.obj"
	-@erase "$(INTDIR)\gargantua.sbr"
	-@erase "$(INTDIR)\gauss.obj"
	-@erase "$(INTDIR)\gauss.sbr"
	-@erase "$(INTDIR)\genericmonster.obj"
	-@erase "$(INTDIR)\genericmonster.sbr"
	-@erase "$(INTDIR)\ggrenade.obj"
	-@erase "$(INTDIR)\ggrenade.sbr"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\globals.sbr"
	-@erase "$(INTDIR)\glock.obj"
	-@erase "$(INTDIR)\glock.sbr"
	-@erase "$(INTDIR)\gman.obj"
	-@erase "$(INTDIR)\gman.sbr"
	-@erase "$(INTDIR)\h_ai.obj"
	-@erase "$(INTDIR)\h_ai.sbr"
	-@erase "$(INTDIR)\h_battery.obj"
	-@erase "$(INTDIR)\h_battery.sbr"
	-@erase "$(INTDIR)\h_cine.obj"
	-@erase "$(INTDIR)\h_cine.sbr"
	-@erase "$(INTDIR)\h_cycler.obj"
	-@erase "$(INTDIR)\h_cycler.sbr"
	-@erase "$(INTDIR)\h_export.obj"
	-@erase "$(INTDIR)\h_export.sbr"
	-@erase "$(INTDIR)\handgrenade.obj"
	-@erase "$(INTDIR)\handgrenade.sbr"
	-@erase "$(INTDIR)\hassassin.obj"
	-@erase "$(INTDIR)\hassassin.sbr"
	-@erase "$(INTDIR)\headcrab.obj"
	-@erase "$(INTDIR)\headcrab.sbr"
	-@erase "$(INTDIR)\healthkit.obj"
	-@erase "$(INTDIR)\healthkit.sbr"
	-@erase "$(INTDIR)\hgrunt.obj"
	-@erase "$(INTDIR)\hgrunt.sbr"
	-@erase "$(INTDIR)\hornet.obj"
	-@erase "$(INTDIR)\hornet.sbr"
	-@erase "$(INTDIR)\hornetgun.obj"
	-@erase "$(INTDIR)\hornetgun.sbr"
	-@erase "$(INTDIR)\houndeye.obj"
	-@erase "$(INTDIR)\houndeye.sbr"
	-@erase "$(INTDIR)\ichthyosaur.obj"
	-@erase "$(INTDIR)\ichthyosaur.sbr"
	-@erase "$(INTDIR)\islave.obj"
	-@erase "$(INTDIR)\islave.sbr"
	-@erase "$(INTDIR)\items.obj"
	-@erase "$(INTDIR)\items.sbr"
	-@erase "$(INTDIR)\leech.obj"
	-@erase "$(INTDIR)\leech.sbr"
	-@erase "$(INTDIR)\lights.obj"
	-@erase "$(INTDIR)\lights.sbr"
	-@erase "$(INTDIR)\maprules.obj"
	-@erase "$(INTDIR)\maprules.sbr"
	-@erase "$(INTDIR)\monstermaker.obj"
	-@erase "$(INTDIR)\monstermaker.sbr"
	-@erase "$(INTDIR)\monsters.obj"
	-@erase "$(INTDIR)\monsters.sbr"
	-@erase "$(INTDIR)\monsterstate.obj"
	-@erase "$(INTDIR)\monsterstate.sbr"
	-@erase "$(INTDIR)\mortar.obj"
	-@erase "$(INTDIR)\mortar.sbr"
	-@erase "$(INTDIR)\mp5.obj"
	-@erase "$(INTDIR)\mp5.sbr"
	-@erase "$(INTDIR)\multiplay_gamerules.obj"
	-@erase "$(INTDIR)\multiplay_gamerules.sbr"
	-@erase "$(INTDIR)\nihilanth.obj"
	-@erase "$(INTDIR)\nihilanth.sbr"
	-@erase "$(INTDIR)\nodes.obj"
	-@erase "$(INTDIR)\nodes.sbr"
	-@erase "$(INTDIR)\osprey.obj"
	-@erase "$(INTDIR)\osprey.sbr"
	-@erase "$(INTDIR)\pathcorner.obj"
	-@erase "$(INTDIR)\pathcorner.sbr"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\plane.sbr"
	-@erase "$(INTDIR)\plats.obj"
	-@erase "$(INTDIR)\plats.sbr"
	-@erase "$(INTDIR)\player.obj"
	-@erase "$(INTDIR)\player.sbr"
	-@erase "$(INTDIR)\python.obj"
	-@erase "$(INTDIR)\python.sbr"
	-@erase "$(INTDIR)\rat.obj"
	-@erase "$(INTDIR)\rat.sbr"
	-@erase "$(INTDIR)\roach.obj"
	-@erase "$(INTDIR)\roach.sbr"
	-@erase "$(INTDIR)\rpg.obj"
	-@erase "$(INTDIR)\rpg.sbr"
	-@erase "$(INTDIR)\satchel.obj"
	-@erase "$(INTDIR)\satchel.sbr"
	-@erase "$(INTDIR)\schedule.obj"
	-@erase "$(INTDIR)\schedule.sbr"
	-@erase "$(INTDIR)\scientist.obj"
	-@erase "$(INTDIR)\scientist.sbr"
	-@erase "$(INTDIR)\scripted.obj"
	-@erase "$(INTDIR)\scripted.sbr"
	-@erase "$(INTDIR)\shotgun.obj"
	-@erase "$(INTDIR)\shotgun.sbr"
	-@erase "$(INTDIR)\singleplay_gamerules.obj"
	-@erase "$(INTDIR)\singleplay_gamerules.sbr"
	-@erase "$(INTDIR)\skill.obj"
	-@erase "$(INTDIR)\skill.sbr"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\sound.sbr"
	-@erase "$(INTDIR)\soundent.obj"
	-@erase "$(INTDIR)\soundent.sbr"
	-@erase "$(INTDIR)\spectator.obj"
	-@erase "$(INTDIR)\spectator.sbr"
	-@erase "$(INTDIR)\squadmonster.obj"
	-@erase "$(INTDIR)\squadmonster.sbr"
	-@erase "$(INTDIR)\squeakgrenade.obj"
	-@erase "$(INTDIR)\squeakgrenade.sbr"
	-@erase "$(INTDIR)\subs.obj"
	-@erase "$(INTDIR)\subs.sbr"
	-@erase "$(INTDIR)\talkmonster.obj"
	-@erase "$(INTDIR)\talkmonster.sbr"
	-@erase "$(INTDIR)\teamplay_gamerules.obj"
	-@erase "$(INTDIR)\teamplay_gamerules.sbr"
	-@erase "$(INTDIR)\tempmonster.obj"
	-@erase "$(INTDIR)\tempmonster.sbr"
	-@erase "$(INTDIR)\tentacle.obj"
	-@erase "$(INTDIR)\tentacle.sbr"
	-@erase "$(INTDIR)\triggers.obj"
	-@erase "$(INTDIR)\triggers.sbr"
	-@erase "$(INTDIR)\tripmine.obj"
	-@erase "$(INTDIR)\tripmine.sbr"
	-@erase "$(INTDIR)\turret.obj"
	-@erase "$(INTDIR)\turret.sbr"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\util.sbr"
	-@erase "$(INTDIR)\weapons.obj"
	-@erase "$(INTDIR)\weapons.sbr"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\world.sbr"
	-@erase "$(INTDIR)\WXDEBUG.OBJ"
	-@erase "$(INTDIR)\WXDEBUG.SBR"
	-@erase "$(INTDIR)\xen.obj"
	-@erase "$(INTDIR)\xen.sbr"
	-@erase "$(INTDIR)\zombie.obj"
	-@erase "$(INTDIR)\zombie.sbr"
	-@erase "$(OUTDIR)\hl.bsc"
	-@erase "$(OUTDIR)\hl.dll"
	-@erase "$(OUTDIR)\hl.exp"
	-@erase "$(OUTDIR)\hl.lib"
	-@erase "..\..\valve\Germandlls\hl.dll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /FR /YX /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /D "GERMANY" /FR /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /D "GERMANY"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/hl.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Germany/
CPP_SBRS=.\Germany/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hl.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\aflock.sbr" \
	"$(INTDIR)\agrunt.sbr" \
	"$(INTDIR)\airtank.sbr" \
	"$(INTDIR)\animating.sbr" \
	"$(INTDIR)\animation.sbr" \
	"$(INTDIR)\apache.sbr" \
	"$(INTDIR)\barnacle.sbr" \
	"$(INTDIR)\barney.sbr" \
	"$(INTDIR)\bigmomma.sbr" \
	"$(INTDIR)\bloater.sbr" \
	"$(INTDIR)\bmodels.sbr" \
	"$(INTDIR)\bullsquid.sbr" \
	"$(INTDIR)\buttons.sbr" \
	"$(INTDIR)\cbase.sbr" \
	"$(INTDIR)\client.sbr" \
	"$(INTDIR)\combat.sbr" \
	"$(INTDIR)\controller.sbr" \
	"$(INTDIR)\crossbow.sbr" \
	"$(INTDIR)\crowbar.sbr" \
	"$(INTDIR)\defaultai.sbr" \
	"$(INTDIR)\doors.sbr" \
	"$(INTDIR)\effects.sbr" \
	"$(INTDIR)\egon.sbr" \
	"$(INTDIR)\explode.sbr" \
	"$(INTDIR)\flyingmonster.sbr" \
	"$(INTDIR)\func_break.sbr" \
	"$(INTDIR)\func_tank.sbr" \
	"$(INTDIR)\game.sbr" \
	"$(INTDIR)\gamerules.sbr" \
	"$(INTDIR)\gargantua.sbr" \
	"$(INTDIR)\gauss.sbr" \
	"$(INTDIR)\genericmonster.sbr" \
	"$(INTDIR)\ggrenade.sbr" \
	"$(INTDIR)\globals.sbr" \
	"$(INTDIR)\glock.sbr" \
	"$(INTDIR)\gman.sbr" \
	"$(INTDIR)\h_ai.sbr" \
	"$(INTDIR)\h_battery.sbr" \
	"$(INTDIR)\h_cine.sbr" \
	"$(INTDIR)\h_cycler.sbr" \
	"$(INTDIR)\h_export.sbr" \
	"$(INTDIR)\handgrenade.sbr" \
	"$(INTDIR)\hassassin.sbr" \
	"$(INTDIR)\headcrab.sbr" \
	"$(INTDIR)\healthkit.sbr" \
	"$(INTDIR)\hgrunt.sbr" \
	"$(INTDIR)\hornet.sbr" \
	"$(INTDIR)\hornetgun.sbr" \
	"$(INTDIR)\houndeye.sbr" \
	"$(INTDIR)\ichthyosaur.sbr" \
	"$(INTDIR)\islave.sbr" \
	"$(INTDIR)\items.sbr" \
	"$(INTDIR)\leech.sbr" \
	"$(INTDIR)\lights.sbr" \
	"$(INTDIR)\maprules.sbr" \
	"$(INTDIR)\monstermaker.sbr" \
	"$(INTDIR)\monsters.sbr" \
	"$(INTDIR)\monsterstate.sbr" \
	"$(INTDIR)\mortar.sbr" \
	"$(INTDIR)\mp5.sbr" \
	"$(INTDIR)\multiplay_gamerules.sbr" \
	"$(INTDIR)\nihilanth.sbr" \
	"$(INTDIR)\nodes.sbr" \
	"$(INTDIR)\osprey.sbr" \
	"$(INTDIR)\pathcorner.sbr" \
	"$(INTDIR)\plane.sbr" \
	"$(INTDIR)\plats.sbr" \
	"$(INTDIR)\player.sbr" \
	"$(INTDIR)\python.sbr" \
	"$(INTDIR)\rat.sbr" \
	"$(INTDIR)\roach.sbr" \
	"$(INTDIR)\rpg.sbr" \
	"$(INTDIR)\satchel.sbr" \
	"$(INTDIR)\schedule.sbr" \
	"$(INTDIR)\scientist.sbr" \
	"$(INTDIR)\scripted.sbr" \
	"$(INTDIR)\shotgun.sbr" \
	"$(INTDIR)\singleplay_gamerules.sbr" \
	"$(INTDIR)\skill.sbr" \
	"$(INTDIR)\sound.sbr" \
	"$(INTDIR)\soundent.sbr" \
	"$(INTDIR)\spectator.sbr" \
	"$(INTDIR)\squadmonster.sbr" \
	"$(INTDIR)\squeakgrenade.sbr" \
	"$(INTDIR)\subs.sbr" \
	"$(INTDIR)\talkmonster.sbr" \
	"$(INTDIR)\teamplay_gamerules.sbr" \
	"$(INTDIR)\tempmonster.sbr" \
	"$(INTDIR)\tentacle.sbr" \
	"$(INTDIR)\triggers.sbr" \
	"$(INTDIR)\tripmine.sbr" \
	"$(INTDIR)\turret.sbr" \
	"$(INTDIR)\util.sbr" \
	"$(INTDIR)\weapons.sbr" \
	"$(INTDIR)\world.sbr" \
	"$(INTDIR)\WXDEBUG.SBR" \
	"$(INTDIR)\xen.sbr" \
	"$(INTDIR)\zombie.sbr"

"$(OUTDIR)\hl.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386 /def:".\hl.def"
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386 /def:".\hl.def"
# SUBTRACT LINK32 /profile
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/hl.pdb" /machine:I386 /def:".\hl.def" /out:"$(OUTDIR)/hl.dll"\
 /implib:"$(OUTDIR)/hl.lib" 
LINK32_OBJS= \
	"$(INTDIR)\aflock.obj" \
	"$(INTDIR)\agrunt.obj" \
	"$(INTDIR)\airtank.obj" \
	"$(INTDIR)\animating.obj" \
	"$(INTDIR)\animation.obj" \
	"$(INTDIR)\apache.obj" \
	"$(INTDIR)\barnacle.obj" \
	"$(INTDIR)\barney.obj" \
	"$(INTDIR)\bigmomma.obj" \
	"$(INTDIR)\bloater.obj" \
	"$(INTDIR)\bmodels.obj" \
	"$(INTDIR)\bullsquid.obj" \
	"$(INTDIR)\buttons.obj" \
	"$(INTDIR)\cbase.obj" \
	"$(INTDIR)\client.obj" \
	"$(INTDIR)\combat.obj" \
	"$(INTDIR)\controller.obj" \
	"$(INTDIR)\crossbow.obj" \
	"$(INTDIR)\crowbar.obj" \
	"$(INTDIR)\defaultai.obj" \
	"$(INTDIR)\doors.obj" \
	"$(INTDIR)\effects.obj" \
	"$(INTDIR)\egon.obj" \
	"$(INTDIR)\explode.obj" \
	"$(INTDIR)\flyingmonster.obj" \
	"$(INTDIR)\func_break.obj" \
	"$(INTDIR)\func_tank.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\gamerules.obj" \
	"$(INTDIR)\gargantua.obj" \
	"$(INTDIR)\gauss.obj" \
	"$(INTDIR)\genericmonster.obj" \
	"$(INTDIR)\ggrenade.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\glock.obj" \
	"$(INTDIR)\gman.obj" \
	"$(INTDIR)\h_ai.obj" \
	"$(INTDIR)\h_battery.obj" \
	"$(INTDIR)\h_cine.obj" \
	"$(INTDIR)\h_cycler.obj" \
	"$(INTDIR)\h_export.obj" \
	"$(INTDIR)\handgrenade.obj" \
	"$(INTDIR)\hassassin.obj" \
	"$(INTDIR)\headcrab.obj" \
	"$(INTDIR)\healthkit.obj" \
	"$(INTDIR)\hgrunt.obj" \
	"$(INTDIR)\hornet.obj" \
	"$(INTDIR)\hornetgun.obj" \
	"$(INTDIR)\houndeye.obj" \
	"$(INTDIR)\ichthyosaur.obj" \
	"$(INTDIR)\islave.obj" \
	"$(INTDIR)\items.obj" \
	"$(INTDIR)\leech.obj" \
	"$(INTDIR)\lights.obj" \
	"$(INTDIR)\maprules.obj" \
	"$(INTDIR)\monstermaker.obj" \
	"$(INTDIR)\monsters.obj" \
	"$(INTDIR)\monsterstate.obj" \
	"$(INTDIR)\mortar.obj" \
	"$(INTDIR)\mp5.obj" \
	"$(INTDIR)\multiplay_gamerules.obj" \
	"$(INTDIR)\nihilanth.obj" \
	"$(INTDIR)\nodes.obj" \
	"$(INTDIR)\osprey.obj" \
	"$(INTDIR)\pathcorner.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\plats.obj" \
	"$(INTDIR)\player.obj" \
	"$(INTDIR)\python.obj" \
	"$(INTDIR)\rat.obj" \
	"$(INTDIR)\roach.obj" \
	"$(INTDIR)\rpg.obj" \
	"$(INTDIR)\satchel.obj" \
	"$(INTDIR)\schedule.obj" \
	"$(INTDIR)\scientist.obj" \
	"$(INTDIR)\scripted.obj" \
	"$(INTDIR)\shotgun.obj" \
	"$(INTDIR)\singleplay_gamerules.obj" \
	"$(INTDIR)\skill.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\soundent.obj" \
	"$(INTDIR)\spectator.obj" \
	"$(INTDIR)\squadmonster.obj" \
	"$(INTDIR)\squeakgrenade.obj" \
	"$(INTDIR)\subs.obj" \
	"$(INTDIR)\talkmonster.obj" \
	"$(INTDIR)\teamplay_gamerules.obj" \
	"$(INTDIR)\tempmonster.obj" \
	"$(INTDIR)\tentacle.obj" \
	"$(INTDIR)\triggers.obj" \
	"$(INTDIR)\tripmine.obj" \
	"$(INTDIR)\turret.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\weapons.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\WXDEBUG.OBJ" \
	"$(INTDIR)\xen.obj" \
	"$(INTDIR)\zombie.obj"

"$(OUTDIR)\hl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Copying to \quiver\valve\dlls
TargetDir=.\Germany
InputPath=.\Germany\hl.dll
SOURCE=$(InputPath)

"\quiver\valve\Germandlls\hl.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy $(TargetDir)\hl.dll \quiver\valve\Germandlls

# End Custom Build

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "hl___Win"
# PROP BASE Intermediate_Dir "hl___Win"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Profilehl"
# PROP Intermediate_Dir "Profilehl"
# PROP Target_Dir ""
OUTDIR=.\Profilehl
INTDIR=.\Profilehl

ALL : "$(OUTDIR)\hl.dll" "..\..\valve\dlls\hl.dll" "..\..\valve\dlls\hl.map"

CLEAN : 
	-@erase "$(INTDIR)\aflock.obj"
	-@erase "$(INTDIR)\agrunt.obj"
	-@erase "$(INTDIR)\airtank.obj"
	-@erase "$(INTDIR)\animating.obj"
	-@erase "$(INTDIR)\animation.obj"
	-@erase "$(INTDIR)\apache.obj"
	-@erase "$(INTDIR)\barnacle.obj"
	-@erase "$(INTDIR)\barney.obj"
	-@erase "$(INTDIR)\bigmomma.obj"
	-@erase "$(INTDIR)\bloater.obj"
	-@erase "$(INTDIR)\bmodels.obj"
	-@erase "$(INTDIR)\bullsquid.obj"
	-@erase "$(INTDIR)\buttons.obj"
	-@erase "$(INTDIR)\cbase.obj"
	-@erase "$(INTDIR)\client.obj"
	-@erase "$(INTDIR)\combat.obj"
	-@erase "$(INTDIR)\controller.obj"
	-@erase "$(INTDIR)\crossbow.obj"
	-@erase "$(INTDIR)\crowbar.obj"
	-@erase "$(INTDIR)\defaultai.obj"
	-@erase "$(INTDIR)\doors.obj"
	-@erase "$(INTDIR)\effects.obj"
	-@erase "$(INTDIR)\egon.obj"
	-@erase "$(INTDIR)\explode.obj"
	-@erase "$(INTDIR)\flyingmonster.obj"
	-@erase "$(INTDIR)\func_break.obj"
	-@erase "$(INTDIR)\func_tank.obj"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\gamerules.obj"
	-@erase "$(INTDIR)\gargantua.obj"
	-@erase "$(INTDIR)\gauss.obj"
	-@erase "$(INTDIR)\genericmonster.obj"
	-@erase "$(INTDIR)\ggrenade.obj"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\glock.obj"
	-@erase "$(INTDIR)\gman.obj"
	-@erase "$(INTDIR)\h_ai.obj"
	-@erase "$(INTDIR)\h_battery.obj"
	-@erase "$(INTDIR)\h_cine.obj"
	-@erase "$(INTDIR)\h_cycler.obj"
	-@erase "$(INTDIR)\h_export.obj"
	-@erase "$(INTDIR)\handgrenade.obj"
	-@erase "$(INTDIR)\hassassin.obj"
	-@erase "$(INTDIR)\headcrab.obj"
	-@erase "$(INTDIR)\healthkit.obj"
	-@erase "$(INTDIR)\hgrunt.obj"
	-@erase "$(INTDIR)\hornet.obj"
	-@erase "$(INTDIR)\hornetgun.obj"
	-@erase "$(INTDIR)\houndeye.obj"
	-@erase "$(INTDIR)\ichthyosaur.obj"
	-@erase "$(INTDIR)\islave.obj"
	-@erase "$(INTDIR)\items.obj"
	-@erase "$(INTDIR)\leech.obj"
	-@erase "$(INTDIR)\lights.obj"
	-@erase "$(INTDIR)\maprules.obj"
	-@erase "$(INTDIR)\monstermaker.obj"
	-@erase "$(INTDIR)\monsters.obj"
	-@erase "$(INTDIR)\monsterstate.obj"
	-@erase "$(INTDIR)\mortar.obj"
	-@erase "$(INTDIR)\mp5.obj"
	-@erase "$(INTDIR)\multiplay_gamerules.obj"
	-@erase "$(INTDIR)\nihilanth.obj"
	-@erase "$(INTDIR)\nodes.obj"
	-@erase "$(INTDIR)\osprey.obj"
	-@erase "$(INTDIR)\pathcorner.obj"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\plats.obj"
	-@erase "$(INTDIR)\player.obj"
	-@erase "$(INTDIR)\python.obj"
	-@erase "$(INTDIR)\rat.obj"
	-@erase "$(INTDIR)\roach.obj"
	-@erase "$(INTDIR)\rpg.obj"
	-@erase "$(INTDIR)\satchel.obj"
	-@erase "$(INTDIR)\schedule.obj"
	-@erase "$(INTDIR)\scientist.obj"
	-@erase "$(INTDIR)\scripted.obj"
	-@erase "$(INTDIR)\shotgun.obj"
	-@erase "$(INTDIR)\singleplay_gamerules.obj"
	-@erase "$(INTDIR)\skill.obj"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\soundent.obj"
	-@erase "$(INTDIR)\spectator.obj"
	-@erase "$(INTDIR)\squadmonster.obj"
	-@erase "$(INTDIR)\squeakgrenade.obj"
	-@erase "$(INTDIR)\subs.obj"
	-@erase "$(INTDIR)\talkmonster.obj"
	-@erase "$(INTDIR)\teamplay_gamerules.obj"
	-@erase "$(INTDIR)\tempmonster.obj"
	-@erase "$(INTDIR)\tentacle.obj"
	-@erase "$(INTDIR)\triggers.obj"
	-@erase "$(INTDIR)\tripmine.obj"
	-@erase "$(INTDIR)\turret.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\weapons.obj"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\WXDEBUG.OBJ"
	-@erase "$(INTDIR)\xen.obj"
	-@erase "$(INTDIR)\zombie.obj"
	-@erase "$(OUTDIR)\hl.dll"
	-@erase "$(OUTDIR)\hl.exp"
	-@erase "$(OUTDIR)\hl.lib"
	-@erase "..\..\valve\dlls\hl.dll"
	-@erase "..\..\valve\dlls\hl.map"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /YX /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL"\
 /Fp"$(INTDIR)/hl.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Profilehl/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386 /def:".\hl.def"
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /profile /debug /machine:I386 /def:".\hl.def"
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:windows /dll /profile /debug /machine:I386 /def:".\hl.def"\
 /out:"$(OUTDIR)/hl.dll" /implib:"$(OUTDIR)/hl.lib" 
LINK32_OBJS= \
	"$(INTDIR)\aflock.obj" \
	"$(INTDIR)\agrunt.obj" \
	"$(INTDIR)\airtank.obj" \
	"$(INTDIR)\animating.obj" \
	"$(INTDIR)\animation.obj" \
	"$(INTDIR)\apache.obj" \
	"$(INTDIR)\barnacle.obj" \
	"$(INTDIR)\barney.obj" \
	"$(INTDIR)\bigmomma.obj" \
	"$(INTDIR)\bloater.obj" \
	"$(INTDIR)\bmodels.obj" \
	"$(INTDIR)\bullsquid.obj" \
	"$(INTDIR)\buttons.obj" \
	"$(INTDIR)\cbase.obj" \
	"$(INTDIR)\client.obj" \
	"$(INTDIR)\combat.obj" \
	"$(INTDIR)\controller.obj" \
	"$(INTDIR)\crossbow.obj" \
	"$(INTDIR)\crowbar.obj" \
	"$(INTDIR)\defaultai.obj" \
	"$(INTDIR)\doors.obj" \
	"$(INTDIR)\effects.obj" \
	"$(INTDIR)\egon.obj" \
	"$(INTDIR)\explode.obj" \
	"$(INTDIR)\flyingmonster.obj" \
	"$(INTDIR)\func_break.obj" \
	"$(INTDIR)\func_tank.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\gamerules.obj" \
	"$(INTDIR)\gargantua.obj" \
	"$(INTDIR)\gauss.obj" \
	"$(INTDIR)\genericmonster.obj" \
	"$(INTDIR)\ggrenade.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\glock.obj" \
	"$(INTDIR)\gman.obj" \
	"$(INTDIR)\h_ai.obj" \
	"$(INTDIR)\h_battery.obj" \
	"$(INTDIR)\h_cine.obj" \
	"$(INTDIR)\h_cycler.obj" \
	"$(INTDIR)\h_export.obj" \
	"$(INTDIR)\handgrenade.obj" \
	"$(INTDIR)\hassassin.obj" \
	"$(INTDIR)\headcrab.obj" \
	"$(INTDIR)\healthkit.obj" \
	"$(INTDIR)\hgrunt.obj" \
	"$(INTDIR)\hornet.obj" \
	"$(INTDIR)\hornetgun.obj" \
	"$(INTDIR)\houndeye.obj" \
	"$(INTDIR)\ichthyosaur.obj" \
	"$(INTDIR)\islave.obj" \
	"$(INTDIR)\items.obj" \
	"$(INTDIR)\leech.obj" \
	"$(INTDIR)\lights.obj" \
	"$(INTDIR)\maprules.obj" \
	"$(INTDIR)\monstermaker.obj" \
	"$(INTDIR)\monsters.obj" \
	"$(INTDIR)\monsterstate.obj" \
	"$(INTDIR)\mortar.obj" \
	"$(INTDIR)\mp5.obj" \
	"$(INTDIR)\multiplay_gamerules.obj" \
	"$(INTDIR)\nihilanth.obj" \
	"$(INTDIR)\nodes.obj" \
	"$(INTDIR)\osprey.obj" \
	"$(INTDIR)\pathcorner.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\plats.obj" \
	"$(INTDIR)\player.obj" \
	"$(INTDIR)\python.obj" \
	"$(INTDIR)\rat.obj" \
	"$(INTDIR)\roach.obj" \
	"$(INTDIR)\rpg.obj" \
	"$(INTDIR)\satchel.obj" \
	"$(INTDIR)\schedule.obj" \
	"$(INTDIR)\scientist.obj" \
	"$(INTDIR)\scripted.obj" \
	"$(INTDIR)\shotgun.obj" \
	"$(INTDIR)\singleplay_gamerules.obj" \
	"$(INTDIR)\skill.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\soundent.obj" \
	"$(INTDIR)\spectator.obj" \
	"$(INTDIR)\squadmonster.obj" \
	"$(INTDIR)\squeakgrenade.obj" \
	"$(INTDIR)\subs.obj" \
	"$(INTDIR)\talkmonster.obj" \
	"$(INTDIR)\teamplay_gamerules.obj" \
	"$(INTDIR)\tempmonster.obj" \
	"$(INTDIR)\tentacle.obj" \
	"$(INTDIR)\triggers.obj" \
	"$(INTDIR)\tripmine.obj" \
	"$(INTDIR)\turret.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\weapons.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\WXDEBUG.OBJ" \
	"$(INTDIR)\xen.obj" \
	"$(INTDIR)\zombie.obj"

"$(OUTDIR)\hl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build - Copying to \quiver\valve\dlls
TargetDir=.\Profilehl
InputPath=.\Profilehl\hl.dll
SOURCE=$(InputPath)

BuildCmds= \
	copy $(TargetDir)\hl.dll \quiver\valve\dlls \
	copy $(TargetDir)\hl.map \quiver\valve\dlls \
	

"\quiver\valve\dlls\hl.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"\quiver\valve\dlls\hl.map" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "hl___Win"
# PROP BASE Intermediate_Dir "hl___Win"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "HLDEMO"
# PROP Intermediate_Dir "HLDEMO"
# PROP Target_Dir ""
OUTDIR=.\HLDEMO
INTDIR=.\HLDEMO
# Begin Custom Macros
TargetName=hl
# End Custom Macros

ALL : "$(OUTDIR)\hl.dll" ".\hl"

CLEAN : 
	-@erase "$(INTDIR)\aflock.obj"
	-@erase "$(INTDIR)\agrunt.obj"
	-@erase "$(INTDIR)\airtank.obj"
	-@erase "$(INTDIR)\animating.obj"
	-@erase "$(INTDIR)\animation.obj"
	-@erase "$(INTDIR)\apache.obj"
	-@erase "$(INTDIR)\barnacle.obj"
	-@erase "$(INTDIR)\barney.obj"
	-@erase "$(INTDIR)\bigmomma.obj"
	-@erase "$(INTDIR)\bloater.obj"
	-@erase "$(INTDIR)\bmodels.obj"
	-@erase "$(INTDIR)\bullsquid.obj"
	-@erase "$(INTDIR)\buttons.obj"
	-@erase "$(INTDIR)\cbase.obj"
	-@erase "$(INTDIR)\client.obj"
	-@erase "$(INTDIR)\combat.obj"
	-@erase "$(INTDIR)\controller.obj"
	-@erase "$(INTDIR)\crossbow.obj"
	-@erase "$(INTDIR)\crowbar.obj"
	-@erase "$(INTDIR)\defaultai.obj"
	-@erase "$(INTDIR)\doors.obj"
	-@erase "$(INTDIR)\effects.obj"
	-@erase "$(INTDIR)\egon.obj"
	-@erase "$(INTDIR)\explode.obj"
	-@erase "$(INTDIR)\flyingmonster.obj"
	-@erase "$(INTDIR)\func_break.obj"
	-@erase "$(INTDIR)\func_tank.obj"
	-@erase "$(INTDIR)\game.obj"
	-@erase "$(INTDIR)\gamerules.obj"
	-@erase "$(INTDIR)\gargantua.obj"
	-@erase "$(INTDIR)\gauss.obj"
	-@erase "$(INTDIR)\genericmonster.obj"
	-@erase "$(INTDIR)\ggrenade.obj"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\glock.obj"
	-@erase "$(INTDIR)\gman.obj"
	-@erase "$(INTDIR)\h_ai.obj"
	-@erase "$(INTDIR)\h_battery.obj"
	-@erase "$(INTDIR)\h_cine.obj"
	-@erase "$(INTDIR)\h_cycler.obj"
	-@erase "$(INTDIR)\h_export.obj"
	-@erase "$(INTDIR)\handgrenade.obj"
	-@erase "$(INTDIR)\hassassin.obj"
	-@erase "$(INTDIR)\headcrab.obj"
	-@erase "$(INTDIR)\healthkit.obj"
	-@erase "$(INTDIR)\hgrunt.obj"
	-@erase "$(INTDIR)\hornet.obj"
	-@erase "$(INTDIR)\hornetgun.obj"
	-@erase "$(INTDIR)\houndeye.obj"
	-@erase "$(INTDIR)\ichthyosaur.obj"
	-@erase "$(INTDIR)\islave.obj"
	-@erase "$(INTDIR)\items.obj"
	-@erase "$(INTDIR)\leech.obj"
	-@erase "$(INTDIR)\lights.obj"
	-@erase "$(INTDIR)\maprules.obj"
	-@erase "$(INTDIR)\monstermaker.obj"
	-@erase "$(INTDIR)\monsters.obj"
	-@erase "$(INTDIR)\monsterstate.obj"
	-@erase "$(INTDIR)\mortar.obj"
	-@erase "$(INTDIR)\mp5.obj"
	-@erase "$(INTDIR)\multiplay_gamerules.obj"
	-@erase "$(INTDIR)\nihilanth.obj"
	-@erase "$(INTDIR)\nodes.obj"
	-@erase "$(INTDIR)\osprey.obj"
	-@erase "$(INTDIR)\pathcorner.obj"
	-@erase "$(INTDIR)\plane.obj"
	-@erase "$(INTDIR)\plats.obj"
	-@erase "$(INTDIR)\player.obj"
	-@erase "$(INTDIR)\python.obj"
	-@erase "$(INTDIR)\rat.obj"
	-@erase "$(INTDIR)\roach.obj"
	-@erase "$(INTDIR)\rpg.obj"
	-@erase "$(INTDIR)\satchel.obj"
	-@erase "$(INTDIR)\schedule.obj"
	-@erase "$(INTDIR)\scientist.obj"
	-@erase "$(INTDIR)\scripted.obj"
	-@erase "$(INTDIR)\shotgun.obj"
	-@erase "$(INTDIR)\singleplay_gamerules.obj"
	-@erase "$(INTDIR)\skill.obj"
	-@erase "$(INTDIR)\sound.obj"
	-@erase "$(INTDIR)\soundent.obj"
	-@erase "$(INTDIR)\spectator.obj"
	-@erase "$(INTDIR)\squadmonster.obj"
	-@erase "$(INTDIR)\squeakgrenade.obj"
	-@erase "$(INTDIR)\subs.obj"
	-@erase "$(INTDIR)\talkmonster.obj"
	-@erase "$(INTDIR)\teamplay_gamerules.obj"
	-@erase "$(INTDIR)\tempmonster.obj"
	-@erase "$(INTDIR)\tentacle.obj"
	-@erase "$(INTDIR)\triggers.obj"
	-@erase "$(INTDIR)\tripmine.obj"
	-@erase "$(INTDIR)\turret.obj"
	-@erase "$(INTDIR)\util.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\weapons.obj"
	-@erase "$(INTDIR)\world.obj"
	-@erase "$(INTDIR)\WXDEBUG.OBJ"
	-@erase "$(INTDIR)\xen.obj"
	-@erase "$(INTDIR)\zombie.obj"
	-@erase "$(OUTDIR)\hl.dll"
	-@erase "$(OUTDIR)\hl.exp"
	-@erase "$(OUTDIR)\hl.lib"
	-@erase "$(OUTDIR)\hl.map"
	-@erase "$(OUTDIR)\hl.pdb"
	-@erase ".\hl"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /YX /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /D "HLDEMO_BUILD" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /G5 /MT /W3 /GX /Zi /O2 /I "..\engine" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "QUIVER" /D "VOXEL" /D "QUAKE2" /D "VALVE_DLL" /D\
 "HLDEMO_BUILD" /Fp"$(INTDIR)/hl.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\HLDEMO/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG" /d "HLDEMO_BUILD"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/hl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /map /debug /machine:I386 /def:".\hl.def"
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /map /debug /machine:I386 /def:".\hl.def"
# SUBTRACT LINK32 /profile
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/hl.pdb"\
 /map:"$(INTDIR)/hl.map" /debug /machine:I386 /def:".\hl.def"\
 /out:"$(OUTDIR)/hl.dll" /implib:"$(OUTDIR)/hl.lib" 
LINK32_OBJS= \
	"$(INTDIR)\aflock.obj" \
	"$(INTDIR)\agrunt.obj" \
	"$(INTDIR)\airtank.obj" \
	"$(INTDIR)\animating.obj" \
	"$(INTDIR)\animation.obj" \
	"$(INTDIR)\apache.obj" \
	"$(INTDIR)\barnacle.obj" \
	"$(INTDIR)\barney.obj" \
	"$(INTDIR)\bigmomma.obj" \
	"$(INTDIR)\bloater.obj" \
	"$(INTDIR)\bmodels.obj" \
	"$(INTDIR)\bullsquid.obj" \
	"$(INTDIR)\buttons.obj" \
	"$(INTDIR)\cbase.obj" \
	"$(INTDIR)\client.obj" \
	"$(INTDIR)\combat.obj" \
	"$(INTDIR)\controller.obj" \
	"$(INTDIR)\crossbow.obj" \
	"$(INTDIR)\crowbar.obj" \
	"$(INTDIR)\defaultai.obj" \
	"$(INTDIR)\doors.obj" \
	"$(INTDIR)\effects.obj" \
	"$(INTDIR)\egon.obj" \
	"$(INTDIR)\explode.obj" \
	"$(INTDIR)\flyingmonster.obj" \
	"$(INTDIR)\func_break.obj" \
	"$(INTDIR)\func_tank.obj" \
	"$(INTDIR)\game.obj" \
	"$(INTDIR)\gamerules.obj" \
	"$(INTDIR)\gargantua.obj" \
	"$(INTDIR)\gauss.obj" \
	"$(INTDIR)\genericmonster.obj" \
	"$(INTDIR)\ggrenade.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\glock.obj" \
	"$(INTDIR)\gman.obj" \
	"$(INTDIR)\h_ai.obj" \
	"$(INTDIR)\h_battery.obj" \
	"$(INTDIR)\h_cine.obj" \
	"$(INTDIR)\h_cycler.obj" \
	"$(INTDIR)\h_export.obj" \
	"$(INTDIR)\handgrenade.obj" \
	"$(INTDIR)\hassassin.obj" \
	"$(INTDIR)\headcrab.obj" \
	"$(INTDIR)\healthkit.obj" \
	"$(INTDIR)\hgrunt.obj" \
	"$(INTDIR)\hornet.obj" \
	"$(INTDIR)\hornetgun.obj" \
	"$(INTDIR)\houndeye.obj" \
	"$(INTDIR)\ichthyosaur.obj" \
	"$(INTDIR)\islave.obj" \
	"$(INTDIR)\items.obj" \
	"$(INTDIR)\leech.obj" \
	"$(INTDIR)\lights.obj" \
	"$(INTDIR)\maprules.obj" \
	"$(INTDIR)\monstermaker.obj" \
	"$(INTDIR)\monsters.obj" \
	"$(INTDIR)\monsterstate.obj" \
	"$(INTDIR)\mortar.obj" \
	"$(INTDIR)\mp5.obj" \
	"$(INTDIR)\multiplay_gamerules.obj" \
	"$(INTDIR)\nihilanth.obj" \
	"$(INTDIR)\nodes.obj" \
	"$(INTDIR)\osprey.obj" \
	"$(INTDIR)\pathcorner.obj" \
	"$(INTDIR)\plane.obj" \
	"$(INTDIR)\plats.obj" \
	"$(INTDIR)\player.obj" \
	"$(INTDIR)\python.obj" \
	"$(INTDIR)\rat.obj" \
	"$(INTDIR)\roach.obj" \
	"$(INTDIR)\rpg.obj" \
	"$(INTDIR)\satchel.obj" \
	"$(INTDIR)\schedule.obj" \
	"$(INTDIR)\scientist.obj" \
	"$(INTDIR)\scripted.obj" \
	"$(INTDIR)\shotgun.obj" \
	"$(INTDIR)\singleplay_gamerules.obj" \
	"$(INTDIR)\skill.obj" \
	"$(INTDIR)\sound.obj" \
	"$(INTDIR)\soundent.obj" \
	"$(INTDIR)\spectator.obj" \
	"$(INTDIR)\squadmonster.obj" \
	"$(INTDIR)\squeakgrenade.obj" \
	"$(INTDIR)\subs.obj" \
	"$(INTDIR)\talkmonster.obj" \
	"$(INTDIR)\teamplay_gamerules.obj" \
	"$(INTDIR)\tempmonster.obj" \
	"$(INTDIR)\tentacle.obj" \
	"$(INTDIR)\triggers.obj" \
	"$(INTDIR)\tripmine.obj" \
	"$(INTDIR)\turret.obj" \
	"$(INTDIR)\util.obj" \
	"$(INTDIR)\weapons.obj" \
	"$(INTDIR)\world.obj" \
	"$(INTDIR)\WXDEBUG.OBJ" \
	"$(INTDIR)\xen.obj" \
	"$(INTDIR)\zombie.obj"

"$(OUTDIR)\hl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

# Begin Custom Build
TargetPath=.\HLDEMO\hl.dll
TargetName=hl
InputPath=.\HLDEMO\hl.dll
SOURCE=$(InputPath)

"$(TargetName)" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   copy $(TargetPath) u:\quiver\valve\dlls

# End Custom Build

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "hl - Win32 Release"
# Name "hl - Win32 Debug"
# Name "hl - Win32 Germany"
# Name "hl - Win32 Profile"
# Name "hl - Win32 HLDEMO Release"

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\world.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_WORLD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_WORLD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"

"$(INTDIR)\world.sbr" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_WORLD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"

"$(INTDIR)\world.sbr" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_WORLD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_WORLD=\
	".\activity.h"\
	".\cbase.h"\
	".\client.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\world.obj" : $(SOURCE) $(DEP_CPP_WORLD) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\bmodels.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BMODE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bmodels.obj" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BMODE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bmodels.obj" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"

"$(INTDIR)\bmodels.sbr" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BMODE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bmodels.obj" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"

"$(INTDIR)\bmodels.sbr" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BMODE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bmodels.obj" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BMODE=\
	".\activity.h"\
	".\cbase.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\bmodels.obj" : $(SOURCE) $(DEP_CPP_BMODE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\buttons.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BUTTO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\buttons.obj" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BUTTO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\buttons.obj" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"

"$(INTDIR)\buttons.sbr" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BUTTO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\buttons.obj" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"

"$(INTDIR)\buttons.sbr" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BUTTO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\buttons.obj" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BUTTO=\
	".\activity.h"\
	".\cbase.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\buttons.obj" : $(SOURCE) $(DEP_CPP_BUTTO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\client.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_CLIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_CLIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"

"$(INTDIR)\client.sbr" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_CLIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"

"$(INTDIR)\client.sbr" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_CLIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_CLIEN=\
	".\activity.h"\
	".\cbase.h"\
	".\client.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\spectator.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\client.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\combat.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_COMBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\combat.obj" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_COMBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\combat.obj" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"

"$(INTDIR)\combat.sbr" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_COMBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\combat.obj" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"

"$(INTDIR)\combat.sbr" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_COMBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\combat.obj" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_COMBA=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\combat.obj" : $(SOURCE) $(DEP_CPP_COMBA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\doors.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_DOORS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\doors.obj" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_DOORS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\doors.obj" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"

"$(INTDIR)\doors.sbr" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_DOORS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\doors.obj" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"

"$(INTDIR)\doors.sbr" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_DOORS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\doors.obj" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_DOORS=\
	".\activity.h"\
	".\cbase.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\doors.obj" : $(SOURCE) $(DEP_CPP_DOORS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\globals.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GLOBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\globals.obj" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GLOBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\globals.obj" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"

"$(INTDIR)\globals.sbr" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GLOBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\globals.obj" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"

"$(INTDIR)\globals.sbr" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GLOBA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\globals.obj" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GLOBA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\globals.obj" : $(SOURCE) $(DEP_CPP_GLOBA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\h_export.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_H_EXP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\h_export.obj" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_H_EXP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\h_export.obj" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"

"$(INTDIR)\h_export.sbr" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_H_EXP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\h_export.obj" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"

"$(INTDIR)\h_export.sbr" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_H_EXP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\h_export.obj" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_H_EXP=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\h_export.obj" : $(SOURCE) $(DEP_CPP_H_EXP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\lights.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_LIGHT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\lights.obj" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_LIGHT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\lights.obj" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"

"$(INTDIR)\lights.sbr" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_LIGHT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\lights.obj" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"

"$(INTDIR)\lights.sbr" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_LIGHT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\lights.obj" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_LIGHT=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\lights.obj" : $(SOURCE) $(DEP_CPP_LIGHT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\monsters.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MONST=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\monsters.obj" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MONST=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\monsters.obj" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"

"$(INTDIR)\monsters.sbr" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MONST=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\monsters.obj" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"

"$(INTDIR)\monsters.sbr" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MONST=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\monsters.obj" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MONST=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\monsters.obj" : $(SOURCE) $(DEP_CPP_MONST) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\monsters.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\plats.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_PLATS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\plats.obj" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_PLATS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\plats.obj" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"

"$(INTDIR)\plats.sbr" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_PLATS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\plats.obj" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"

"$(INTDIR)\plats.sbr" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_PLATS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\plats.obj" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_PLATS=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	

"$(INTDIR)\plats.obj" : $(SOURCE) $(DEP_CPP_PLATS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\player.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_PLAYE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\player.obj" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_PLAYE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\player.obj" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"

"$(INTDIR)\player.sbr" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_PLAYE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\player.obj" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"

"$(INTDIR)\player.sbr" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_PLAYE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\player.obj" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_PLAYE=\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\trains.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\player.obj" : $(SOURCE) $(DEP_CPP_PLAYE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\sound.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"

"$(INTDIR)\sound.sbr" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"

"$(INTDIR)\sound.sbr" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SOUND=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\subs.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SUBS_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\subs.obj" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SUBS_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\subs.obj" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"

"$(INTDIR)\subs.sbr" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SUBS_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\subs.obj" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"

"$(INTDIR)\subs.sbr" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SUBS_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\subs.obj" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SUBS_=\
	".\activity.h"\
	".\cbase.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\subs.obj" : $(SOURCE) $(DEP_CPP_SUBS_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\triggers.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TRIGG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\triggers.obj" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TRIGG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\triggers.obj" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"

"$(INTDIR)\triggers.sbr" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TRIGG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\triggers.obj" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"

"$(INTDIR)\triggers.sbr" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TRIGG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\triggers.obj" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TRIGG=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	

"$(INTDIR)\triggers.obj" : $(SOURCE) $(DEP_CPP_TRIGG) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\util.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_UTIL_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_UTIL_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"

"$(INTDIR)\util.sbr" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_UTIL_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"

"$(INTDIR)\util.sbr" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_UTIL_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_UTIL_=\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\util.obj" : $(SOURCE) $(DEP_CPP_UTIL_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\util.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\weapons.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_WEAPO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\weapons.obj" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_WEAPO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\weapons.obj" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"

"$(INTDIR)\weapons.sbr" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_WEAPO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\weapons.obj" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"

"$(INTDIR)\weapons.sbr" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_WEAPO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\weapons.obj" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_WEAPO=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\weapons.obj" : $(SOURCE) $(DEP_CPP_WEAPO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\quiver\SRC\engine\eiface.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\quiver\src\engine\extdll.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\quiver\SRC\engine\const.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\h_cine.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_H_CIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_cine.obj" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_H_CIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_cine.obj" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"

"$(INTDIR)\h_cine.sbr" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_H_CIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_cine.obj" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"

"$(INTDIR)\h_cine.sbr" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_H_CIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_cine.obj" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_H_CIN=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\h_cine.obj" : $(SOURCE) $(DEP_CPP_H_CIN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\cbase.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_CBASE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\cbase.obj" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_CBASE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\cbase.obj" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"

"$(INTDIR)\cbase.sbr" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_CBASE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\cbase.obj" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"

"$(INTDIR)\cbase.sbr" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_CBASE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\client.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\cbase.obj" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_CBASE=\
	".\activity.h"\
	".\cbase.h"\
	".\client.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\cbase.obj" : $(SOURCE) $(DEP_CPP_CBASE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\pathcorner.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_PATHC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\pathcorner.obj" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_PATHC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\pathcorner.obj" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"

"$(INTDIR)\pathcorner.sbr" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_PATHC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\pathcorner.obj" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"

"$(INTDIR)\pathcorner.sbr" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_PATHC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\pathcorner.obj" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_PATHC=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\trains.h"\
	".\util.h"\
	

"$(INTDIR)\pathcorner.obj" : $(SOURCE) $(DEP_CPP_PATHC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\h_cycler.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_H_CYC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_cycler.obj" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_H_CYC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_cycler.obj" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"

"$(INTDIR)\h_cycler.sbr" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_H_CYC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_cycler.obj" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"

"$(INTDIR)\h_cycler.sbr" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_H_CYC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_cycler.obj" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_H_CYC=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_cycler.obj" : $(SOURCE) $(DEP_CPP_H_CYC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\explode.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_EXPLO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\explode.obj" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_EXPLO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\explode.obj" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"

"$(INTDIR)\explode.sbr" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_EXPLO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\explode.obj" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"

"$(INTDIR)\explode.sbr" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_EXPLO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\explode.obj" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_EXPLO=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\explode.obj" : $(SOURCE) $(DEP_CPP_EXPLO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\turret.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TURRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\turret.obj" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TURRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\turret.obj" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"

"$(INTDIR)\turret.sbr" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TURRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\turret.obj" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"

"$(INTDIR)\turret.sbr" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TURRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\turret.obj" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TURRE=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\turret.obj" : $(SOURCE) $(DEP_CPP_TURRE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\func_break.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_FUNC_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\func_break.obj" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_FUNC_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\func_break.obj" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"

"$(INTDIR)\func_break.sbr" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_FUNC_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\func_break.obj" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"

"$(INTDIR)\func_break.sbr" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_FUNC_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\func_break.obj" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_FUNC_=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\func_break.obj" : $(SOURCE) $(DEP_CPP_FUNC_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\effects.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_EFFEC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\effects.obj" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_EFFEC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\effects.obj" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"

"$(INTDIR)\effects.sbr" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_EFFEC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\effects.obj" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"

"$(INTDIR)\effects.sbr" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_EFFEC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\effects.obj" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_EFFEC=\
	"..\engine\customentity.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\effects.obj" : $(SOURCE) $(DEP_CPP_EFFEC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\items.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ITEMS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\items.obj" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ITEMS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\items.obj" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"

"$(INTDIR)\items.sbr" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ITEMS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\items.obj" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"

"$(INTDIR)\items.sbr" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ITEMS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\items.obj" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ITEMS=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\items.obj" : $(SOURCE) $(DEP_CPP_ITEMS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\animation.cpp
DEP_CPP_ANIMA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\studio.h"\
	"..\utils\common\mathlib.h"\
	".\activity.h"\
	".\activitymap.h"\
	".\animation.h"\
	".\enginecallback.h"\
	".\monsterevent.h"\
	".\scriptevent.h"\
	

!IF  "$(CFG)" == "hl - Win32 Release"


"$(INTDIR)\animation.obj" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"


"$(INTDIR)\animation.obj" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"

"$(INTDIR)\animation.sbr" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"


"$(INTDIR)\animation.obj" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"

"$(INTDIR)\animation.sbr" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"


"$(INTDIR)\animation.obj" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"


"$(INTDIR)\animation.obj" : $(SOURCE) $(DEP_CPP_ANIMA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\src\engine\progdefs.h

!IF  "$(CFG)" == "hl - Win32 Release"

!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\nodes.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_NODES=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\nodes.obj" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_NODES=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\nodes.obj" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"

"$(INTDIR)\nodes.sbr" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_NODES=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\nodes.obj" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"

"$(INTDIR)\nodes.sbr" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_NODES=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\nodes.obj" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_NODES=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\doors.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\nodes.obj" : $(SOURCE) $(DEP_CPP_NODES) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\h_battery.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_H_BAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_battery.obj" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_H_BAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_battery.obj" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"

"$(INTDIR)\h_battery.sbr" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_H_BAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_battery.obj" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"

"$(INTDIR)\h_battery.sbr" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_H_BAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_battery.obj" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_H_BAT=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\h_battery.obj" : $(SOURCE) $(DEP_CPP_H_BAT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\headcrab.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HEADC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\headcrab.obj" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HEADC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\headcrab.obj" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"

"$(INTDIR)\headcrab.sbr" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HEADC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\headcrab.obj" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"

"$(INTDIR)\headcrab.sbr" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HEADC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\headcrab.obj" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HEADC=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\headcrab.obj" : $(SOURCE) $(DEP_CPP_HEADC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\houndeye.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\houndeye.obj" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\houndeye.obj" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"

"$(INTDIR)\houndeye.sbr" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\houndeye.obj" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"

"$(INTDIR)\houndeye.sbr" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HOUND=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\houndeye.obj" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HOUND=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	

"$(INTDIR)\houndeye.obj" : $(SOURCE) $(DEP_CPP_HOUND) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\hgrunt.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hgrunt.obj" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hgrunt.obj" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"

"$(INTDIR)\hgrunt.sbr" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hgrunt.obj" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"

"$(INTDIR)\hgrunt.sbr" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hgrunt.obj" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HGRUN=\
	"..\engine\customentity.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\hgrunt.obj" : $(SOURCE) $(DEP_CPP_HGRUN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\schedule.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SCHED=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\schedule.obj" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SCHED=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\schedule.obj" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"

"$(INTDIR)\schedule.sbr" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SCHED=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\schedule.obj" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"

"$(INTDIR)\schedule.sbr" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SCHED=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\schedule.obj" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SCHED=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\schedule.obj" : $(SOURCE) $(DEP_CPP_SCHED) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\monsterstate.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MONSTE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monsterstate.obj" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MONSTE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monsterstate.obj" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"

"$(INTDIR)\monsterstate.sbr" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MONSTE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monsterstate.obj" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"

"$(INTDIR)\monsterstate.sbr" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MONSTE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monsterstate.obj" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MONSTE=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\monsterstate.obj" : $(SOURCE) $(DEP_CPP_MONSTE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\defaultai.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_DEFAU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\defaultai.obj" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_DEFAU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\defaultai.obj" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"

"$(INTDIR)\defaultai.sbr" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_DEFAU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\defaultai.obj" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"

"$(INTDIR)\defaultai.sbr" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_DEFAU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\defaultai.obj" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_DEFAU=\
	".\activity.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\defaultai.obj" : $(SOURCE) $(DEP_CPP_DEFAU) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\h_ai.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_H_AI_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_ai.obj" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_H_AI_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_ai.obj" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"

"$(INTDIR)\h_ai.sbr" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_H_AI_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_ai.obj" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"

"$(INTDIR)\h_ai.sbr" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_H_AI_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\h_ai.obj" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_H_AI_=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\h_ai.obj" : $(SOURCE) $(DEP_CPP_H_AI_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\scripted.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SCRIP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scripted.obj" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SCRIP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scripted.obj" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"

"$(INTDIR)\scripted.sbr" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SCRIP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scripted.obj" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"

"$(INTDIR)\scripted.sbr" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SCRIP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scripted.obj" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SCRIP=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\scripted.obj" : $(SOURCE) $(DEP_CPP_SCRIP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\barney.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BARNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\barney.obj" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BARNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\barney.obj" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"

"$(INTDIR)\barney.sbr" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BARNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\barney.obj" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"

"$(INTDIR)\barney.sbr" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BARNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\barney.obj" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BARNE=\
	".\activity.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\barney.obj" : $(SOURCE) $(DEP_CPP_BARNE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\scientist.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SCIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scientist.obj" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SCIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scientist.obj" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"

"$(INTDIR)\scientist.sbr" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SCIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scientist.obj" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"

"$(INTDIR)\scientist.sbr" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SCIEN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\scientist.obj" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SCIEN=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	

"$(INTDIR)\scientist.obj" : $(SOURCE) $(DEP_CPP_SCIEN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\zombie.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ZOMBI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\zombie.obj" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ZOMBI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\zombie.obj" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"

"$(INTDIR)\zombie.sbr" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ZOMBI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\zombie.obj" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"

"$(INTDIR)\zombie.sbr" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ZOMBI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\zombie.obj" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ZOMBI=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\zombie.obj" : $(SOURCE) $(DEP_CPP_ZOMBI) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\roach.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ROACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\roach.obj" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ROACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\roach.obj" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"

"$(INTDIR)\roach.sbr" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ROACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\roach.obj" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"

"$(INTDIR)\roach.sbr" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ROACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\roach.obj" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ROACH=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\roach.obj" : $(SOURCE) $(DEP_CPP_ROACH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rat.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_RAT_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\rat.obj" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_RAT_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\rat.obj" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"

"$(INTDIR)\rat.sbr" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_RAT_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\rat.obj" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"

"$(INTDIR)\rat.sbr" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_RAT_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\rat.obj" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_RAT_C=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\rat.obj" : $(SOURCE) $(DEP_CPP_RAT_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\monstermaker.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MONSTER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monstermaker.obj" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MONSTER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monstermaker.obj" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"

"$(INTDIR)\monstermaker.sbr" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MONSTER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monstermaker.obj" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"

"$(INTDIR)\monstermaker.sbr" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MONSTER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\monstermaker.obj" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MONSTER=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\monstermaker.obj" : $(SOURCE) $(DEP_CPP_MONSTER) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\bullsquid.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BULLS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bullsquid.obj" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BULLS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bullsquid.obj" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"

"$(INTDIR)\bullsquid.sbr" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BULLS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bullsquid.obj" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"

"$(INTDIR)\bullsquid.sbr" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BULLS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bullsquid.obj" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BULLS=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\bullsquid.obj" : $(SOURCE) $(DEP_CPP_BULLS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ichthyosaur.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ICHTH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\ichthyosaur.obj" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ICHTH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\ichthyosaur.obj" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"

"$(INTDIR)\ichthyosaur.sbr" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ICHTH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\ichthyosaur.obj" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"

"$(INTDIR)\ichthyosaur.sbr" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ICHTH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\ichthyosaur.obj" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ICHTH=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\ichthyosaur.obj" : $(SOURCE) $(DEP_CPP_ICHTH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\barnacle.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BARNA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\barnacle.obj" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BARNA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\barnacle.obj" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"

"$(INTDIR)\barnacle.sbr" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BARNA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\barnacle.obj" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"

"$(INTDIR)\barnacle.sbr" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BARNA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\barnacle.obj" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BARNA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\barnacle.obj" : $(SOURCE) $(DEP_CPP_BARNA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\hassassin.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HASSA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hassassin.obj" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HASSA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hassassin.obj" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"

"$(INTDIR)\hassassin.sbr" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HASSA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hassassin.obj" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"

"$(INTDIR)\hassassin.sbr" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HASSA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hassassin.obj" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HASSA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\hassassin.obj" : $(SOURCE) $(DEP_CPP_HASSA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\agrunt.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_AGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\hornet.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\agrunt.obj" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_AGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\hornet.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\agrunt.obj" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"

"$(INTDIR)\agrunt.sbr" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_AGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\hornet.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\agrunt.obj" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"

"$(INTDIR)\agrunt.sbr" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_AGRUN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\hornet.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\agrunt.obj" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_AGRUN=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\hornet.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\agrunt.obj" : $(SOURCE) $(DEP_CPP_AGRUN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\islave.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ISLAV=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\islave.obj" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ISLAV=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\islave.obj" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"

"$(INTDIR)\islave.sbr" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ISLAV=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\islave.obj" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"

"$(INTDIR)\islave.sbr" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ISLAV=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\islave.obj" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ISLAV=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\islave.obj" : $(SOURCE) $(DEP_CPP_ISLAV) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\shotgun.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SHOTG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\shotgun.obj" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SHOTG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\shotgun.obj" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"

"$(INTDIR)\shotgun.sbr" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SHOTG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\shotgun.obj" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"

"$(INTDIR)\shotgun.sbr" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SHOTG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\shotgun.obj" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SHOTG=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\shotgun.obj" : $(SOURCE) $(DEP_CPP_SHOTG) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\glock.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GLOCK=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\glock.obj" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GLOCK=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\glock.obj" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"

"$(INTDIR)\glock.sbr" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GLOCK=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\glock.obj" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"

"$(INTDIR)\glock.sbr" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GLOCK=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\glock.obj" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GLOCK=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\glock.obj" : $(SOURCE) $(DEP_CPP_GLOCK) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\mp5.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MP5_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mp5.obj" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MP5_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mp5.obj" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"

"$(INTDIR)\mp5.sbr" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MP5_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mp5.obj" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"

"$(INTDIR)\mp5.sbr" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MP5_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mp5.obj" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MP5_C=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\mp5.obj" : $(SOURCE) $(DEP_CPP_MP5_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\python.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_PYTHO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\python.obj" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_PYTHO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\python.obj" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"

"$(INTDIR)\python.sbr" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_PYTHO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\python.obj" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"

"$(INTDIR)\python.sbr" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_PYTHO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\python.obj" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_PYTHO=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\python.obj" : $(SOURCE) $(DEP_CPP_PYTHO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\crowbar.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_CROWB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crowbar.obj" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_CROWB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crowbar.obj" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"

"$(INTDIR)\crowbar.sbr" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_CROWB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crowbar.obj" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"

"$(INTDIR)\crowbar.sbr" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_CROWB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crowbar.obj" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_CROWB=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\crowbar.obj" : $(SOURCE) $(DEP_CPP_CROWB) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\gauss.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GAUSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gauss.obj" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GAUSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gauss.obj" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"

"$(INTDIR)\gauss.sbr" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GAUSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gauss.obj" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"

"$(INTDIR)\gauss.sbr" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GAUSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gauss.obj" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GAUSS=\
	"..\engine\shake.h"\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\gauss.obj" : $(SOURCE) $(DEP_CPP_GAUSS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rpg.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_RPG_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\rpg.obj" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_RPG_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\rpg.obj" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"

"$(INTDIR)\rpg.sbr" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_RPG_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\rpg.obj" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"

"$(INTDIR)\rpg.sbr" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_RPG_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\rpg.obj" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_RPG_C=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\rpg.obj" : $(SOURCE) $(DEP_CPP_RPG_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\soundent.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SOUNDE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\soundent.obj" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SOUNDE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\soundent.obj" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"

"$(INTDIR)\soundent.sbr" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SOUNDE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\soundent.obj" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"

"$(INTDIR)\soundent.sbr" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SOUNDE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\soundent.obj" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SOUNDE=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	

"$(INTDIR)\soundent.obj" : $(SOURCE) $(DEP_CPP_SOUNDE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\gargantua.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GARGA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gargantua.obj" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GARGA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gargantua.obj" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"

"$(INTDIR)\gargantua.sbr" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GARGA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gargantua.obj" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"

"$(INTDIR)\gargantua.sbr" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GARGA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gargantua.obj" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GARGA=\
	"..\engine\customentity.h"\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\func_break.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\gargantua.obj" : $(SOURCE) $(DEP_CPP_GARGA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\crossbow.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_CROSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crossbow.obj" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_CROSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crossbow.obj" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"

"$(INTDIR)\crossbow.sbr" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_CROSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crossbow.obj" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"

"$(INTDIR)\crossbow.sbr" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_CROSS=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\crossbow.obj" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_CROSS=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\crossbow.obj" : $(SOURCE) $(DEP_CPP_CROSS) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\egon.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_EGON_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\egon.obj" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_EGON_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\egon.obj" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"

"$(INTDIR)\egon.sbr" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_EGON_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\egon.obj" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"

"$(INTDIR)\egon.sbr" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_EGON_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\egon.obj" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_EGON_=\
	"..\engine\customentity.h"\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\egon.obj" : $(SOURCE) $(DEP_CPP_EGON_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\bigmomma.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BIGMO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\bigmomma.obj" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BIGMO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\bigmomma.obj" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"

"$(INTDIR)\bigmomma.sbr" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BIGMO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\bigmomma.obj" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"

"$(INTDIR)\bigmomma.sbr" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BIGMO=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\bigmomma.obj" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BIGMO=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\bigmomma.obj" : $(SOURCE) $(DEP_CPP_BIGMO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\flyingmonster.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_FLYIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\flyingmonster.obj" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_FLYIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\flyingmonster.obj" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"

"$(INTDIR)\flyingmonster.sbr" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_FLYIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\flyingmonster.obj" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"

"$(INTDIR)\flyingmonster.sbr" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_FLYIN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\flyingmonster.obj" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_FLYIN=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\flyingmonster.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\flyingmonster.obj" : $(SOURCE) $(DEP_CPP_FLYIN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ggrenade.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GGREN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\ggrenade.obj" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GGREN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\ggrenade.obj" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"

"$(INTDIR)\ggrenade.sbr" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GGREN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\ggrenade.obj" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"

"$(INTDIR)\ggrenade.sbr" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GGREN=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\ggrenade.obj" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GGREN=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\ggrenade.obj" : $(SOURCE) $(DEP_CPP_GGREN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\handgrenade.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HANDG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\handgrenade.obj" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HANDG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\handgrenade.obj" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"

"$(INTDIR)\handgrenade.sbr" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HANDG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\handgrenade.obj" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"

"$(INTDIR)\handgrenade.sbr" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HANDG=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\handgrenade.obj" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HANDG=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\handgrenade.obj" : $(SOURCE) $(DEP_CPP_HANDG) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\satchel.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SATCH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\satchel.obj" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SATCH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\satchel.obj" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"

"$(INTDIR)\satchel.sbr" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SATCH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\satchel.obj" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"

"$(INTDIR)\satchel.sbr" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SATCH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\satchel.obj" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SATCH=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\satchel.obj" : $(SOURCE) $(DEP_CPP_SATCH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\squeakgrenade.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SQUEA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\squeakgrenade.obj" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SQUEA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\squeakgrenade.obj" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"

"$(INTDIR)\squeakgrenade.sbr" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SQUEA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\squeakgrenade.obj" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"

"$(INTDIR)\squeakgrenade.sbr" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SQUEA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\squeakgrenade.obj" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SQUEA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\squeakgrenade.obj" : $(SOURCE) $(DEP_CPP_SQUEA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\tempmonster.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TEMPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\tempmonster.obj" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TEMPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\tempmonster.obj" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"

"$(INTDIR)\tempmonster.sbr" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TEMPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\tempmonster.obj" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"

"$(INTDIR)\tempmonster.sbr" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TEMPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\tempmonster.obj" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TEMPM=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\tempmonster.obj" : $(SOURCE) $(DEP_CPP_TEMPM) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\tripmine.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TRIPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tripmine.obj" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TRIPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tripmine.obj" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"

"$(INTDIR)\tripmine.sbr" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TRIPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tripmine.obj" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"

"$(INTDIR)\tripmine.sbr" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TRIPM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tripmine.obj" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TRIPM=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\tripmine.obj" : $(SOURCE) $(DEP_CPP_TRIPM) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\hornetgun.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HORNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornetgun.obj" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HORNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornetgun.obj" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"

"$(INTDIR)\hornetgun.sbr" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HORNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornetgun.obj" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"

"$(INTDIR)\hornetgun.sbr" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HORNE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornetgun.obj" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HORNE=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornetgun.obj" : $(SOURCE) $(DEP_CPP_HORNE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\WXDEBUG.CPP

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_WXDEB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\WXDEBUG.OBJ" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_WXDEB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\WXDEBUG.OBJ" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"

"$(INTDIR)\WXDEBUG.SBR" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_WXDEB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\WXDEBUG.OBJ" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"

"$(INTDIR)\WXDEBUG.SBR" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_WXDEB=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\WXDEBUG.OBJ" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_WXDEB=\
	"..\engine\const.h"\
	".\activity.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\util.h"\
	".\vector.h"\
	".\wxdebug.h"\
	

"$(INTDIR)\WXDEBUG.OBJ" : $(SOURCE) $(DEP_CPP_WXDEB) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\squadmonster.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SQUAD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\squadmonster.obj" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SQUAD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\squadmonster.obj" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"

"$(INTDIR)\squadmonster.sbr" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SQUAD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\squadmonster.obj" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"

"$(INTDIR)\squadmonster.sbr" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SQUAD=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\squadmonster.obj" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SQUAD=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\plane.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	

"$(INTDIR)\squadmonster.obj" : $(SOURCE) $(DEP_CPP_SQUAD) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\plane.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_PLANE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\cdll_dll.h"\
	".\extdll.h"\
	".\plane.h"\
	".\vector.h"\
	

"$(INTDIR)\plane.obj" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_PLANE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\cdll_dll.h"\
	".\extdll.h"\
	".\plane.h"\
	".\vector.h"\
	

"$(INTDIR)\plane.obj" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"

"$(INTDIR)\plane.sbr" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_PLANE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\cdll_dll.h"\
	".\extdll.h"\
	".\plane.h"\
	".\vector.h"\
	

"$(INTDIR)\plane.obj" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"

"$(INTDIR)\plane.sbr" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_PLANE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\cdll_dll.h"\
	".\extdll.h"\
	".\plane.h"\
	".\vector.h"\
	

"$(INTDIR)\plane.obj" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_PLANE=\
	"..\engine\const.h"\
	".\extdll.h"\
	".\plane.h"\
	".\vector.h"\
	

"$(INTDIR)\plane.obj" : $(SOURCE) $(DEP_CPP_PLANE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\genericmonster.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GENER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\genericmonster.obj" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GENER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\genericmonster.obj" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"

"$(INTDIR)\genericmonster.sbr" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GENER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\genericmonster.obj" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"

"$(INTDIR)\genericmonster.sbr" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GENER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\genericmonster.obj" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GENER=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\genericmonster.obj" : $(SOURCE) $(DEP_CPP_GENER) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\tentacle.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TENTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tentacle.obj" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TENTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tentacle.obj" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"

"$(INTDIR)\tentacle.sbr" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TENTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tentacle.obj" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"

"$(INTDIR)\tentacle.sbr" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TENTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\tentacle.obj" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TENTA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\tentacle.obj" : $(SOURCE) $(DEP_CPP_TENTA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\leech.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_LEECH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\leech.obj" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_LEECH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\leech.obj" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"

"$(INTDIR)\leech.sbr" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_LEECH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\leech.obj" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"

"$(INTDIR)\leech.sbr" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_LEECH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\leech.obj" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_LEECH=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\leech.obj" : $(SOURCE) $(DEP_CPP_LEECH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\talkmonster.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TALKM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\talkmonster.obj" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TALKM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\talkmonster.obj" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"

"$(INTDIR)\talkmonster.sbr" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TALKM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\talkmonster.obj" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"

"$(INTDIR)\talkmonster.sbr" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TALKM=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\talkmonster.obj" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TALKM=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\defaultai.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\scripted.h"\
	".\scriptevent.h"\
	".\skill.h"\
	".\soundent.h"\
	".\talkmonster.h"\
	".\util.h"\
	

"$(INTDIR)\talkmonster.obj" : $(SOURCE) $(DEP_CPP_TALKM) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\osprey.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_OSPRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\osprey.obj" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_OSPRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\osprey.obj" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"

"$(INTDIR)\osprey.sbr" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_OSPRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\osprey.obj" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"

"$(INTDIR)\osprey.sbr" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_OSPRE=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\customentity.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\osprey.obj" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_OSPRE=\
	"..\engine\customentity.h"\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\osprey.obj" : $(SOURCE) $(DEP_CPP_OSPRE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\apache.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_APACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\apache.obj" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_APACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\apache.obj" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"

"$(INTDIR)\apache.sbr" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_APACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\apache.obj" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"

"$(INTDIR)\apache.sbr" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_APACH=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\apache.obj" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_APACH=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\apache.obj" : $(SOURCE) $(DEP_CPP_APACH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\mortar.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MORTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mortar.obj" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MORTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mortar.obj" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"

"$(INTDIR)\mortar.sbr" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MORTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mortar.obj" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"

"$(INTDIR)\mortar.sbr" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MORTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\mortar.obj" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MORTA=\
	".\activity.h"\
	".\cbase.h"\
	".\decals.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\mortar.obj" : $(SOURCE) $(DEP_CPP_MORTA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\bloater.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_BLOAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bloater.obj" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_BLOAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bloater.obj" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"

"$(INTDIR)\bloater.sbr" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_BLOAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bloater.obj" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"

"$(INTDIR)\bloater.sbr" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_BLOAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\bloater.obj" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_BLOAT=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	

"$(INTDIR)\bloater.obj" : $(SOURCE) $(DEP_CPP_BLOAT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\airtank.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_AIRTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\airtank.obj" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_AIRTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\airtank.obj" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"

"$(INTDIR)\airtank.sbr" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_AIRTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\airtank.obj" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"

"$(INTDIR)\airtank.sbr" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_AIRTA=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\airtank.obj" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_AIRTA=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\airtank.obj" : $(SOURCE) $(DEP_CPP_AIRTA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\healthkit.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HEALT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\healthkit.obj" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HEALT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\healthkit.obj" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"

"$(INTDIR)\healthkit.sbr" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HEALT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\healthkit.obj" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"

"$(INTDIR)\healthkit.sbr" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HEALT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\healthkit.obj" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HEALT=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\healthkit.obj" : $(SOURCE) $(DEP_CPP_HEALT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\nihilanth.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_NIHIL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\nihilanth.obj" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_NIHIL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\nihilanth.obj" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"

"$(INTDIR)\nihilanth.sbr" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_NIHIL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\nihilanth.obj" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"

"$(INTDIR)\nihilanth.sbr" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_NIHIL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\nihilanth.obj" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_NIHIL=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\nodes.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\nihilanth.obj" : $(SOURCE) $(DEP_CPP_NIHIL) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\aflock.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_AFLOC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\aflock.obj" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_AFLOC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\aflock.obj" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"

"$(INTDIR)\aflock.sbr" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_AFLOC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\aflock.obj" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"

"$(INTDIR)\aflock.sbr" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_AFLOC=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\aflock.obj" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_AFLOC=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	

"$(INTDIR)\aflock.obj" : $(SOURCE) $(DEP_CPP_AFLOC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\skill.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SKILL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\skill.obj" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SKILL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\skill.obj" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"

"$(INTDIR)\skill.sbr" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SKILL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\skill.obj" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"

"$(INTDIR)\skill.sbr" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SKILL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\skill.obj" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SKILL=\
	"..\engine\const.h"\
	".\activity.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\skill.obj" : $(SOURCE) $(DEP_CPP_SKILL) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\controller.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_CONTR=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\controller.obj" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_CONTR=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\controller.obj" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"

"$(INTDIR)\controller.sbr" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_CONTR=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\controller.obj" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"

"$(INTDIR)\controller.sbr" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_CONTR=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\controller.obj" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_CONTR=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\squadmonster.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\controller.obj" : $(SOURCE) $(DEP_CPP_CONTR) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\spectator.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SPECT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\spectator.obj" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SPECT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\spectator.obj" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"

"$(INTDIR)\spectator.sbr" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SPECT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\spectator.obj" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"

"$(INTDIR)\spectator.sbr" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SPECT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\spectator.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\spectator.obj" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SPECT=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\spectator.h"\
	".\util.h"\
	

"$(INTDIR)\spectator.obj" : $(SOURCE) $(DEP_CPP_SPECT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\gman.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GMAN_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gman.obj" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GMAN_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gman.obj" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"

"$(INTDIR)\gman.sbr" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GMAN_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gman.obj" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"

"$(INTDIR)\gman.sbr" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GMAN_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gman.obj" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GMAN_=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\gman.obj" : $(SOURCE) $(DEP_CPP_GMAN_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\gamerules.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GAMER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gamerules.obj" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GAMER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gamerules.obj" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"

"$(INTDIR)\gamerules.sbr" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GAMER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gamerules.obj" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"

"$(INTDIR)\gamerules.sbr" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GAMER=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\gamerules.obj" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GAMER=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\gamerules.obj" : $(SOURCE) $(DEP_CPP_GAMER) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\xen.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_XEN_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\xen.obj" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_XEN_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\xen.obj" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"

"$(INTDIR)\xen.sbr" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_XEN_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\xen.obj" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"

"$(INTDIR)\xen.sbr" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_XEN_C=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\xen.obj" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_XEN_C=\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\xen.obj" : $(SOURCE) $(DEP_CPP_XEN_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\func_tank.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_FUNC_T=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\func_tank.obj" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_FUNC_T=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\func_tank.obj" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"

"$(INTDIR)\func_tank.sbr" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_FUNC_T=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\func_tank.obj" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"

"$(INTDIR)\func_tank.sbr" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_FUNC_T=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\func_tank.obj" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_FUNC_T=\
	".\activity.h"\
	".\cbase.h"\
	".\effects.h"\
	".\enginecallback.h"\
	".\explode.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\func_tank.obj" : $(SOURCE) $(DEP_CPP_FUNC_T) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\hornet.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_HORNET=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornet.obj" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_HORNET=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornet.obj" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"

"$(INTDIR)\hornet.sbr" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_HORNET=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornet.obj" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"

"$(INTDIR)\hornet.sbr" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_HORNET=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornet.obj" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_HORNET=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\hornet.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\monsters.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\soundent.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\hornet.obj" : $(SOURCE) $(DEP_CPP_HORNET) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\teamplay_gamerules.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_TEAMP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\teamplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_TEAMP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\teamplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"

"$(INTDIR)\teamplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_TEAMP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\teamplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"

"$(INTDIR)\teamplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_TEAMP=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\teamplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_TEAMP=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\teamplay_gamerules.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\teamplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_TEAMP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\multiplay_gamerules.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MULTI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\multiplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MULTI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\multiplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"

"$(INTDIR)\multiplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MULTI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\multiplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"

"$(INTDIR)\multiplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MULTI=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\multiplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MULTI=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\multiplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_MULTI) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\singleplay_gamerules.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_SINGL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\singleplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_SINGL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\singleplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"

"$(INTDIR)\singleplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_SINGL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\singleplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"

"$(INTDIR)\singleplay_gamerules.sbr" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_SINGL=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\vector.h"\
	".\weapons.h"\
	

"$(INTDIR)\singleplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_SINGL=\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\items.h"\
	".\monsterevent.h"\
	".\player.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\skill.h"\
	".\util.h"\
	".\weapons.h"\
	

"$(INTDIR)\singleplay_gamerules.obj" : $(SOURCE) $(DEP_CPP_SINGL) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\game.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_GAME_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_GAME_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"

"$(INTDIR)\game.sbr" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_GAME_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"

"$(INTDIR)\game.sbr" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_GAME_=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_GAME_=\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	".\activity.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\game.h"\
	".\util.h"\
	

"$(INTDIR)\game.obj" : $(SOURCE) $(DEP_CPP_GAME_) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\maprules.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_MAPRU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\maprules.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\maprules.obj" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_MAPRU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\maprules.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\maprules.obj" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"

"$(INTDIR)\maprules.sbr" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_MAPRU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\maprules.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\maprules.obj" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"

"$(INTDIR)\maprules.sbr" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_MAPRU=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\maprules.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\maprules.obj" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_MAPRU=\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	".\activity.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\gamerules.h"\
	".\maprules.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	

"$(INTDIR)\maprules.obj" : $(SOURCE) $(DEP_CPP_MAPRU) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\animating.cpp

!IF  "$(CFG)" == "hl - Win32 Release"

DEP_CPP_ANIMAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\animating.obj" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Debug"

DEP_CPP_ANIMAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\animating.obj" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"

"$(INTDIR)\animating.sbr" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Germany"

DEP_CPP_ANIMAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\animating.obj" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"

"$(INTDIR)\animating.sbr" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 Profile"

DEP_CPP_ANIMAT=\
	"..\engine\const.h"\
	"..\engine\custom.h"\
	"..\engine\cvardef.h"\
	"..\engine\eiface.h"\
	"..\engine\progdefs.h"\
	"..\engine\progs.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\cdll_dll.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\animating.obj" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "hl - Win32 HLDEMO Release"

DEP_CPP_ANIMAT=\
	"..\engine\const.h"\
	".\activity.h"\
	".\animation.h"\
	".\cbase.h"\
	".\enginecallback.h"\
	".\extdll.h"\
	".\monsterevent.h"\
	".\saverestore.h"\
	".\schedule.h"\
	".\util.h"\
	".\vector.h"\
	

"$(INTDIR)\animating.obj" : $(SOURCE) $(DEP_CPP_ANIMAT) "$(INTDIR)"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
