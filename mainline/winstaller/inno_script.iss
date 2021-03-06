; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Magicor"
#define MyVersion "1.0"
#define MyAppPublisher "Peter Gebauer"
#define MyAppURL "http://magicor.sourceforge.net"
#define MyAppExeName "Magicor.exe"
#define MyAppCopyright "(C) 2006 Peter Gebauer - Released as  Public Domain"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppName} {#MyVersion}
AppVersion={#MyVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright={#MyAppCopyright}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=Magicor{#MyVersion}_Installer
Compression=lzma
SolidCompression=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Languages: 

[Files]
Source: .\magi\dist\magicor.exe; DestDir: {app}; Flags: ignoreversion
Source: .\magi\dist\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; IconFilename: {app}\penguin_icon3.ico
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon; IconFilename: {app}\penguin_icon3.ico

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
