; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#include "D:\NOO\MTRF-64-USB\nooLite_one\script\ExecAndWait.iss"

#define MyAppName "nooLite ONE"
#define MyAppVersion "1.5"
#define MyAppPublisher "�� ����������"
#define MyAppURL "http://www.noo.com.by/"
#define MyAppExeName "nooLite_ONE.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{33DF76A5-9DA9-43EF-999B-EAB6DD5C4885}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=D:\NOO\MTRF-64-USB\nooLite_one\OUT
OutputBaseFilename=noolite_one_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "D:\NOO\MTRF-64-USB\nooLite_one\INSTALL\nooLite_ONE.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\NOO\MTRF-64-USB\nooLite_one\INSTALL\SEND_CMD_API.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\NOO\MTRF-64-USB\nooLite_one\INSTALL\MTRF-64-USB.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\NOO\MTRF-64-USB\nooLite_one\INSTALL\Driver\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\NOO\MTRF-64-USB\nooLite_one\INSTALL\Driver\CDM21224_Setup.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\CDM21224_Setup.exe"; Description: "���������� ������� ��������"; Flags: runascurrentuser nowait postinstall
