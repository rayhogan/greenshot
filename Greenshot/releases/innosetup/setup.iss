﻿#define ExeName "Greenshot"
#define Version GetEnv('BuildVersionSimple')
#define FileVersion GetEnv('AssemblyInformationalVersion')
#define BaseDir "..\..\.."
#define ReleaseDir "..\..\bin\Release\net472"
#define BinDir "bin\Release\net472"

; Include the scripts to install .NET Framework
; See http://www.codeproject.com/KB/install/dotnetfx_innosetup_instal.aspx
#include "scripts\products.iss"
#include "scripts\products\stringversion.iss"
#include "scripts\products\winversion.iss"
#include "scripts\products\fileversion.iss"
#include "scripts\products\msi20.iss"
#include "scripts\products\msi31.iss"
#include "scripts\products\dotnetfxversion.iss"
#include "scripts\products\dotnetfx47.iss"

[Files]
Source: {#ReleaseDir}\Greenshot.exe; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\GreenshotPlugin.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Greenshot.exe.config; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\log4net.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Dapplo.Http*.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Dapplo.Log.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Svg.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Fizzler.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: {#ReleaseDir}\Newtonsoft.Json.dll; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
Source: ..\..\log4net.xml; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion
Source: {#ReleaseDir}\checksum.SHA256; DestDir: {app}; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion
;Source: ..\greenshot-defaults.ini; DestDir: {app}; Flags: overwritereadonly ignoreversion replacesameversion
Source: ..\additional_files\installer.txt; DestDir: {app}; Components: greenshot; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion
Source: ..\additional_files\license.txt; DestDir: {app}; Components: greenshot; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion
Source: ..\additional_files\readme.txt; DestDir: {app}; Components: greenshot; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion

; Core language files
Source: ..\..\Languages\*nl-NL*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*en-US*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*de-DE*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: greenshot; Flags: overwritereadonly ignoreversion replacesameversion;

; Additional language files
Source: ..\..\Languages\*ar-SY*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\arSY; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*ca-CA*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\caCA; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*cs-CZ*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\csCZ; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*da-DK*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\daDK; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*de-x-franconia*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\dexfranconia; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*el-GR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\elGR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*es-ES*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\esES; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*et-EE*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\etEE; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*fa-IR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\faIR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*fi-FI*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\fiFI; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*fr-FR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\frFR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*fr-QC*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\frQC; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*he-IL*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\heIL; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*hu-HU*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\huHU; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*id-ID*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\idID; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*it-IT*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\itIT; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*ja-JP*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\jaJP; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*ko-KR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\koKR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*kab-DZ*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\kabDZ; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*lt-LT*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\ltLT; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*lv-LV*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\lvLV; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*nn-NO*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\nnNO; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*pl-PL*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\plPL; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*pt-BR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\ptBR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*pt-PT*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\ptPT; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*ro-RO*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\roRO; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*ru-RU*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\ruRU; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*sk-SK*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\skSK; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*sl-SI*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\slSI; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*sr-RS*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\srRS; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*sv-SE*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\svSE; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*tr-TR*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\trTR; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*uk-UA*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\ukUA; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*vi-VN*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\viVN; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*zh-CN*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\zhCN; Flags: overwritereadonly ignoreversion replacesameversion;
Source: ..\..\Languages\*zh-TW*; Excludes: "*installer*,*website*"; DestDir: {app}\Languages; Components: languages\zhTW; Flags: overwritereadonly ignoreversion replacesameversion;

;Office Plugin
Source: {#BaseDir}\GreenshotOfficePlugin\{#BinDir}\GreenshotOfficePlugin.dll; DestDir: {app}\Plugins\GreenshotOfficePlugin; Components: plugins\office; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
;OCR Plugin
Source: {#BaseDir}\GreenshotOCRPlugin\{#BinDir}\GreenshotOCRPlugin.dll; DestDir: {app}\Plugins\GreenshotOCRPlugin; Components: plugins\ocr; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotOCRPlugin\Languages\language_ocr*.xml; DestDir: {app}\Languages\Plugins\GreenshotOCRPlugin; Components: plugins\ocr; Flags: overwritereadonly ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotOCRCommand\{#BinDir}\GreenshotOCRCommand.exe; DestDir: {app}\Plugins\GreenshotOCRPlugin; Components: plugins\ocr; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotOCRCommand\{#BinDir}\GreenshotOCRCommand.exe.config; DestDir: {app}\Plugins\GreenshotOCRPlugin; Components: plugins\ocr; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
;JIRA Plugin
Source: {#BaseDir}\GreenshotJiraPlugin\{#BinDir}\GreenshotJiraPlugin.dll; DestDir: {app}\Plugins\GreenshotJiraPlugin; Components: plugins\jira; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotJiraPlugin\{#BinDir}\Dapplo.Jira.dll; DestDir: {app}\Plugins\GreenshotJiraPlugin; Components: plugins\jira; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotJiraPlugin\Languages\language_jira*.xml; DestDir: {app}\Languages\Plugins\GreenshotJiraPlugin; Components: plugins\jira; Flags: overwritereadonly ignoreversion replacesameversion;
;Imgur Plugin
Source: {#BaseDir}\GreenshotImgurPlugin\{#BinDir}\GreenshotImgurPlugin.dll; DestDir: {app}\Plugins\GreenshotImgurPlugin; Components: plugins\imgur; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotImgurPlugin\Languages\language_imgur*.xml; DestDir: {app}\Languages\Plugins\GreenshotImgurPlugin; Components: plugins\imgur; Flags: overwritereadonly ignoreversion replacesameversion;
;Box Plugin
Source: {#BaseDir}\GreenshotBoxPlugin\{#BinDir}\GreenshotBoxPlugin.dll; DestDir: {app}\Plugins\GreenshotBoxPlugin; Components: plugins\box; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotBoxPlugin\Languages\language_box*.xml; DestDir: {app}\Languages\Plugins\GreenshotBoxPlugin; Components: plugins\box; Flags: overwritereadonly ignoreversion replacesameversion;
;DropBox Plugin
Source: {#BaseDir}\GreenshotDropBoxPlugin\{#BinDir}\GreenshotDropboxPlugin.dll; DestDir: {app}\Plugins\GreenshotDropBoxPlugin; Components: plugins\dropbox; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotDropBoxPlugin\Languages\language_dropbox*.xml; DestDir: {app}\Languages\Plugins\GreenshotDropBoxPlugin; Components: plugins\dropbox; Flags: overwritereadonly ignoreversion replacesameversion;
;Flickr Plugin
Source: {#BaseDir}\GreenshotFlickrPlugin\{#BinDir}\GreenshotFlickrPlugin.dll; DestDir: {app}\Plugins\GreenshotFlickrPlugin; Components: plugins\flickr; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotFlickrPlugin\Languages\language_flickr*.xml; DestDir: {app}\Languages\Plugins\GreenshotFlickrPlugin; Components: plugins\flickr; Flags: overwritereadonly ignoreversion replacesameversion;
;Photobucket Plugin
Source: {#BaseDir}\GreenshotPhotobucketPlugin\{#BinDir}\GreenshotPhotobucketPlugin.dll; DestDir: {app}\Plugins\GreenshotPhotobucketPlugin; Components: plugins\photobucket; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotPhotobucketPlugin\Languages\language_photo*.xml; DestDir: {app}\Languages\Plugins\GreenshotPhotobucketPlugin; Components: plugins\photobucket; Flags: overwritereadonly ignoreversion replacesameversion;
;Picasa Plugin
Source: {#BaseDir}\GreenshotPicasaPlugin\{#BinDir}\GreenshotPicasaPlugin.dll; DestDir: {app}\Plugins\GreenshotPicasaPlugin; Components: plugins\picasa; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotPicasaPlugin\Languages\language_picasa*.xml; DestDir: {app}\Languages\Plugins\GreenshotPicasaPlugin; Components: plugins\picasa; Flags: overwritereadonly ignoreversion replacesameversion;
;Confluence Plugin
Source: {#BaseDir}\GreenshotConfluencePlugin\{#BinDir}\GreenshotConfluencePlugin.dll; DestDir: {app}\Plugins\GreenshotConfluencePlugin; Components: plugins\confluence; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotConfluencePlugin\Languages\language_confluence*.xml; DestDir: {app}\Languages\Plugins\GreenshotConfluencePlugin; Components: plugins\confluence; Flags: overwritereadonly ignoreversion replacesameversion;
;ExternalCommand Plugin
Source: {#BaseDir}\GreenshotExternalCommandPlugin\{#BinDir}\GreenshotExternalCommandPlugin.dll; DestDir: {app}\Plugins\GreenshotExternalCommandPlugin; Components: plugins\externalcommand; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
Source: {#BaseDir}\GreenshotExternalCommandPlugin\Languages\language_externalcommand*.xml; DestDir: {app}\Languages\Plugins\GreenshotExternalCommandPlugin; Components: plugins\externalcommand; Flags: overwritereadonly ignoreversion replacesameversion;
;Win 10 Plugin
Source: {#BaseDir}\GreenshotWin10Plugin\{#BinDir}\GreenshotWin10Plugin.dll; DestDir: {app}\Plugins\GreenshotWin10Plugin; Components: plugins\win10; Flags: overwritereadonly recursesubdirs ignoreversion replacesameversion;
[Setup]
; changes associations is used when the installer installs new extensions, it clears the explorer icon cache
ChangesAssociations=yes
AppId={#ExeName}
AppName={#ExeName}
AppMutex=F48E86D3-E34C-4DB7-8F8F-9A0EA55F0D08
AppPublisher={#ExeName}
AppPublisherURL=http://getgreenshot.org
AppSupportURL=http://getgreenshot.org
AppUpdatesURL=http://getgreenshot.org
AppVerName={#ExeName} {#Version}
AppVersion={#Version}
ArchitecturesInstallIn64BitMode=x64
Compression=lzma2/ultra64
SolidCompression=yes
DefaultDirName={code:DefDirRoot}\{#ExeName}
DefaultGroupName={#ExeName}
InfoBeforeFile=..\additional_files\readme.txt
LicenseFile=..\additional_files\license.txt
LanguageDetectionMethod=uilanguage
MinVersion=6.1.7600
OutputBaseFilename={#ExeName}-INSTALLER-{#Version}-UNSTABLE
OutputDir=..\
PrivilegesRequired=lowest
SetupIconFile=..\..\icons\applicationIcon\icon.ico
; Create a SHA1 signature
; SignTool=SignTool sign /debug /fd sha1 /tr http://time.certum.pl /td sha1 $f
; Append a SHA256 to the previous SHA1 signature (this is what as does)
; SignTool=SignTool sign /debug /as /fd sha256 /tr http://time.certum.pl /td sha256 $f
; SignedUninstaller=yes
UninstallDisplayIcon={app}\{#ExeName}.exe
Uninstallable=true
VersionInfoCompany={#ExeName}
VersionInfoProductName={#ExeName}
VersionInfoProductTextVersion={#FileVersion}
VersionInfoTextVersion={#FileVersion}
VersionInfoVersion={#Version}
; Reference a bitmap, max size 164x314
WizardImageFile=installer-large.bmp
; Reference a bitmap, max size 55x58
WizardSmallImageFile=installer-small.bmp
[Registry]
; Delete all startup entries, so we don't have leftover values
Root: HKCU; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;
Root: HKCU32; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror; Check: IsWin64()
Root: HKLM32; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror; Check: IsWin64()

; delete filetype mappings
; HKEY_LOCAL_USER - for current user only
Root: HKCU; Subkey: Software\Classes\.greenshot; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;
Root: HKCU; Subkey: Software\Classes\Greenshot; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;
; HKEY_LOCAL_MACHINE - for all users when admin (with the noerror this doesn't matter)
Root: HKLM; Subkey: Software\Classes\.greenshot; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;
Root: HKLM; Subkey: Software\Classes\Greenshot; ValueType: none; ValueName: {#ExeName}; Flags: deletevalue noerror;

; Create the startup entries if requested to do so
; HKEY_LOCAL_USER - for current user only
Root: HKCU; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: {#ExeName}; ValueData: {app}\{#ExeName}.exe; Permissions: users-modify; Flags: uninsdeletevalue noerror; Tasks: startup; Check: IsRegularUser
; HKEY_LOCAL_MACHINE - for all users when admin
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: {#ExeName}; ValueData: {app}\{#ExeName}.exe; Permissions: admins-modify; Flags: uninsdeletevalue noerror; Tasks: startup; Check: not IsRegularUser

; Register our own filetype for all users
; HKEY_LOCAL_USER - for current user only
Root: HKCU; Subkey: Software\Classes\.greenshot; ValueType: string; ValueName: ""; ValueData: "Greenshot"; Permissions: users-modify; Flags: uninsdeletevalue noerror; Check: IsRegularUser
Root: HKCU; Subkey: Software\Classes\Greenshot; ValueType: string; ValueName: ""; ValueData: "Greenshot File"; Permissions: users-modify; Flags: uninsdeletevalue noerror; Check: IsRegularUser
Root: HKCU; Subkey: Software\Classes\Greenshot\DefaultIcon; ValueType: string; ValueName: ""; ValueData: "{app}\Greenshot.EXE,0"; Permissions: users-modify; Flags: uninsdeletevalue noerror; Check: IsRegularUser
Root: HKCU; Subkey: Software\Classes\Greenshot\shell\open\command; ValueType: string; ValueName: ""; ValueData: """{app}\Greenshot.EXE"" --openfile ""%1"""; Permissions: users-modify; Flags: uninsdeletevalue noerror; Check: IsRegularUser
; HKEY_LOCAL_MACHINE - for all users when admin
Root: HKLM; Subkey: Software\Classes\.greenshot; ValueType: string; ValueName: ""; ValueData: "Greenshot"; Permissions: admins-modify; Flags: uninsdeletevalue noerror; Check: not IsRegularUser
Root: HKLM; Subkey: Software\Classes\Greenshot; ValueType: string; ValueName: ""; ValueData: "Greenshot File"; Permissions: admins-modify; Flags: uninsdeletevalue noerror; Check: not IsRegularUser
Root: HKLM; Subkey: Software\Classes\Greenshot\DefaultIcon; ValueType: string; ValueName: ""; ValueData: "{app}\Greenshot.EXE,0"; Permissions: admins-modify; Flags: uninsdeletevalue noerror; Check: not IsRegularUser
Root: HKLM; Subkey: Software\Classes\Greenshot\shell\open\command; ValueType: string; ValueName: ""; ValueData: """{app}\Greenshot.EXE"" --openfile ""%1"""; Permissions: admins-modify; Flags: uninsdeletevalue noerror; Check: not IsRegularUser

[Icons]
Name: {group}\{#ExeName}; Filename: {app}\{#ExeName}.exe; WorkingDir: {app}; AppUserModelID: "{#ExeName}"
Name: {group}\{cm:UninstallIconDescription} {#ExeName}; Filename: {uninstallexe}; WorkingDir: {app};
Name: {group}\Readme.txt; Filename: {app}\readme.txt; WorkingDir: {app}
Name: {group}\License.txt; Filename: {app}\license.txt; WorkingDir: {app}

[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: cn; MessagesFile: Languages\ChineseSimplified.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: es; MessagesFile: compiler:Languages\Spanish.isl
Name: fi; MessagesFile: compiler:Languages\Finnish.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: nl; MessagesFile: compiler:Languages\Dutch.isl
Name: lt; MessagesFile: Languages\Latvian.isl
Name: nn; MessagesFile: Languages\NorwegianNynorsk.isl
Name: ru; MessagesFile: compiler:Languages\Russian.isl
Name: sr; MessagesFile: Languages\SerbianCyrillic.isl
Name: sv; MessagesFile: Languages\Swedish.isl
Name: uk; MessagesFile: compiler:Languages\Ukrainian.isl

[Tasks]
Name: startup; Description: {cm:startup}

[CustomMessages]
;Language names in the original language
dexfranconia=Frängisch (Deutsch)
arSY=العربية
caCA=Català
csCZ=Ceština
daDK=Dansk
elGR=ελληνικά
esES=Español
etEE=Eesti
faIR=پارسی
fiFI=Suomi
frFR=Français
frQC=Français - Québec
heIL=עִבְרִית
huHU=Magyar
idID=Bahasa Indonesia
itIT=Italiano
jaJP=日本語
kabDZ=Taqbaylit
koKR=한국어
ltLT=Lietuvių
lvLV=Latviski
nnNO=Nynorsk
plPL=Polski
ptBR=Português do Brasil
ptPT=Português de Portugal
roRO=Română
ruRU=Pусский
skSK=Slovenčina
slSI=Slovenščina
srRS=Српски
svSE=Svenska
trTR=Türk
ukUA=Українська
viVN=Việt
zhCN=简体中文
zhTW=繁體中文

en.box=Box plug-in
en.confluence=Confluence plug-in
en.default=Default installation
en.dropbox=Dropbox plug-in
en.externalcommand=Open with external command plug-in
en.flickr=Flickr plug-in
en.imgur=Imgur plug-in (See: http://imgur.com)
en.jira=Jira plug-in
en.language=Additional languages
en.ocr=OCR plug-in (needs Microsoft Office Document Imaging (MODI))
en.office=Microsoft Office plug-in
en.optimize=Optimizing performance, this may take a while.
en.photobucket=Photobucket plug-in
en.picasa=Picasa plug-in
en.startgreenshot=Start {#ExeName}
en.startup=Start {#ExeName} with Windows start
en.win10=Windows 10 plug-in
en.UninstallIconDescription=Uninstall

de.confluence=Confluence Plug-in
de.default=Standard installation
de.externalcommand=Externes Kommando Plug-in
de.imgur=Imgur Plug-in (Siehe: http://imgur.com)
de.jira=Jira Plug-in
de.language=Zusätzliche Sprachen
de.ocr=OCR Plug-in (benötigt Microsoft Office Document Imaging (MODI))
de.office=Microsoft Office Plug-in
de.optimize=Optimierung der Leistung, kann etwas dauern.
de.startgreenshot={#ExeName} starten
de.startup={#ExeName} starten wenn Windows hochfährt
de.win10=Windows 10 Plug-in

es.confluence=Extensión para Confluence
es.default=${default}
es.externalcommand=Extensión para abrir con programas externos
es.imgur=Extensión para Imgur (Ver http://imgur.com)
es.jira=Extensión para Jira
es.language=Idiomas adicionales
es.ocr=Extensión para OCR (necesita Microsoft Office Document Imaging (MODI))
es.optimize=Optimizando rendimiento; por favor, espera.
es.startgreenshot=Lanzar {#ExeName}
es.startup=Lanzar {#ExeName} al iniciarse Windows
es.win10=Extensión para Windows 10

fi.confluence=Confluence-liitännäinen
fi.default=${default}
fi.externalcommand=Avaa Ulkoinen komento-liitännäisellä
fi.imgur=Imgur-liitännäinen (Katso: http://imgur.com)
fi.jira=Jira-liitännäinen
fi.language=Lisäkielet
fi.ocr=OCR-liitännäinen (Tarvitaan: Microsoft Office Document Imaging (MODI))
fi.office=Microsoft-Office-liitännäinen
fi.optimize=Optimoidaan suorituskykyä, tämä voi kestää hetken.
fi.startgreenshot=Käynnistä {#ExeName}
fi.startup=Käynnistä {#ExeName} Windowsin käynnistyessä
fi.win10=Windows 10-liitännäinen

fr.confluence=Greffon Confluence
fr.default=${default}
fr.externalcommand=Ouvrir avec le greffon de commande externe
fr.imgur=Greffon Imgur (Voir: http://imgur.com)
fr.jira=Greffon Jira
fr.language=Langues additionnelles
fr.ocr=Greffon OCR (nécessite Document Imaging de Microsoft Office [MODI])
fr.office=Greffon Microsoft Office
fr.optimize=Optimisation des performances, Ceci peut prendre un certain temps.
fr.startgreenshot=Démarrer {#ExeName}
fr.startup=Lancer {#ExeName} au démarrage de Windows
fr.win10=Greffon Windows 10

it.box=Plugin Box
it.confluence=Plugin Confluence
it.default=Installazione predefinita
it.dropbox=Plugin Dropbox
it.externalcommand=Apri con comando esterno plugin
it.flickr=Plugin Flickr
it.imgur=Plugin Imgur (vedi: http://imgur.com)
it.jira=Plugin Jira
it.language=Lingue aggiuntive
it.ocr=Plugin OCR (richiede Microsoft Office Document Imaging (MODI))
it.office=Plugin Microsoft Office
it.optimize=Ottimizzazione prestazioni (può richiedere tempo).
it.photobucket=Plugin Photobucket
it.picasa=Plugin Picasa
it.startgreenshot=Esegui {#ExeName}
it.startup=Esegui {#ExeName} all''avvio di Windows
it.win10=Plugin Windows 10
it.UninstallIconDescription=Disinstalla
it.dexfranconia=Fräncofono (Tedesco)
it.arSY=Arabo (Siria)
it.caCA=Catalano
it.csCZ=Ceco
it.daDK=Danese
it.elGR=Greco
it.esES=Spagnolo
it.etEE=Eesti
it.faIR=Farsi (Iran)
it.fiFI=Suomi
it.frFR=Francese
it.frQC=Francese (Québec)
it.heIL=Ebraico (Israele)
it.huHU=Ungherese
it.idID=Bahasa Indonesia
it.itIT=Italiano
it.jaJP=Giapponese
it.kabDZ=Taqbaylit
it.koKR=Coreano
it.ltLT=Lituano
it.lvLV=Latviano
it.nnNO=Norvegese
it.plPL=Polacco
it.ptBR=Portoghese (Brasile)
it.ptPT=Portoghese (Portogallo)
it.roRO=Rumeno
it.ruRU=Russo
it.skSK=Slovacco
it.slSI=Sloveno
it.srRS=Serbo (Russia)
it.svSE=Svedese
it.trTR=Türco
it.ukUA=Ucraino
it.viVN=Vietnamita
it.zhCN=Cinese (Semplificato)
it.zhTW=Cinese (Taiwan)

lt.confluence=Confluence spraudnis
lt.default=${default}
lt.externalcommand=Pielāgotu darbību spraudnis
lt.imgur=Imgur spraudnis (Vairāk šeit: http://imgur.com)
lt.jira=Jira spraudnis
lt.language=Papildus valodas
lt.ocr=OCR spraudnis (nepieciešams Microsoft Office Document Imaging (MODI))
lt.office=Microsoft Office spraudnis
lt.optimize=Uzlaboju veikstpēju, tas prasīs kādu laiciņu.
lt.startgreenshot=Palaist {#ExeName}
lt.startup=Palaist {#ExeName} uzsākot darbus
lt.win10=Windows 10 spraudnis

lt.confluence=Confluence spraudnis
lt.default=${default}
lt.externalcommand=Pielāgotu darbību spraudnis
lt.imgur=Imgur spraudnis (Vairāk šeit: http://imgur.com)
lt.jira=Jira spraudnis
lt.language=Papildus valodas
lt.ocr=OCR spraudnis (nepieciešams Microsoft Office Document Imaging (MODI))
lt.office=Microsoft Office spraudnis
lt.optimize=Uzlaboju veikstpēju, tas prasīs kādu laiciņu.
lt.startgreenshot=Palaist {#ExeName}
lt.startup=Palaist {#ExeName} uzsākot darbus
lt.win10=Windows 10 spraudnis

nl.confluence=Confluence plug-in
nl.default=Standaardinstallatie
nl.externalcommand=Openen met extern commando plug-in
nl.imgur=Imgur plug-in (zie: http://imgur.com)
nl.jira=Jira plug-in
nl.language=Extra talen
nl.ocr=OCR plug-in (vereist Microsoft Office Document Imaging (MODI))
nl.office=Microsoft Office plug-in
nl.optimize=Prestaties verbeteren, even geduld.
nl.startgreenshot={#ExeName} starten
nl.startup={#ExeName} automatisch starten met Windows
nl.win10=Windows 10 plug-in

nn.confluence=Confluence-tillegg
nn.default=Default installation
nn.externalcommand=Tillegg for å opne med ekstern kommando
nn.imgur=Imgur-tillegg (sjå http://imgur.com)
nn.jira=Jira-tillegg
nn.language=Andre språk
nn.ocr=OCR-tillegg (krev Microsoft Office Document Imaging (MODI))
nn.office=Microsoft Office Tillegg
nn.optimize=Optimaliserar ytelse, dette kan ta litt tid...
nn.startgreenshot=Start {#ExeName}
nn.startup=Start {#ExeName} når Windows startar
nn.win10=Windows 10 Tillegg

ru.confluence=Плагин Confluence
ru.default=${default}
ru.externalcommand=Открыть с плагином с помощью внешней команды
ru.imgur=Плагин Imgur (смотрите https://imgur.com/)
ru.jira=Плагин Jira
ru.language=Дополнительные языки
ru.ocr=Плагин OCR (требуется Microsoft Office Document Imaging (MODI))
ru.office=Плагин Microsoft Office
ru.optimize=Идет оптимизация производительности, это может занять некоторое время.
ru.startgreenshot=Запустить {#ExeName}
ru.startup=Запускать {#ExeName} при старте Windows
ru.win10=Плагин Windows 10

sr.confluence=Прикључак за Конфлуенс
sr.default=${default}
sr.externalcommand=Отвори са прикључком за спољне наредбе
sr.imgur=Прикључак за Имиџер (http://imgur.com)
sr.jira=Прикључак за Џиру
sr.language=Додатни језици
sr.ocr=OCR прикључак (захтева Microsoft Office Document Imaging (MODI))
sr.optimize=Оптимизујем перформансе…
sr.startgreenshot=Покрени Гриншот
sr.startup=Покрени програм са системом
sr.win10=Прикључак за Windows 10

sv.confluence=Confluence-insticksprogram
sv.externalcommand=Öppna med externt kommando-insticksprogram
sv.imgur=Imgur-insticksprogram (Se: http://imgur.com)
sv.jira=Jira-insticksprogram
sv.language=Ytterligare språk
sv.ocr=OCR-insticksprogram (kräver Microsoft Office Document Imaging (MODI))
sv.optimize=Optimerar prestanda, detta kan ta en stund.
sv.startgreenshot=Starta {#ExeName}
sv.startup=Starta {#ExeName} med Windows
sv.win10=Windows 10-insticksprogram

uk.confluence=Плагін Confluence
uk.default=${default}
uk.externalcommand=Плагін запуску зовнішньої команди
uk.imgur=Плагін Imgur (див.: http://imgur.com)
uk.jira=Плагін Jira
uk.language=Додаткові мови
uk.ocr=Плагін OCR (потребує Microsoft Office Document Imaging (MODI))
uk.optimize=Оптимізація продуктивності, це може забрати час.
uk.startgreenshot=Запустити {#ExeName}
uk.startup=Запускати {#ExeName} під час запуску Windows
uk.win10=Плагін Windows 10

cn.confluence=Confluence插件
cn.default=${default}
cn.externalcommand=使用外部命令打开插件
cn.imgur=Imgur插件( (请访问： http://imgur.com))
cn.jira=Jira插件
cn.language=其它语言
cn.ocr=OCR插件(需要Microsoft Office Document Imaging (MODI)的支持)
cn.optimize=正在优化性能，这可能需要一点时间。
cn.startgreenshot=启动{#ExeName}
cn.startup=让{#ExeName}随Windows一起启动
cn.win10=Windows 10插件

[Types]
Name: "default"; Description: "{cm:default}"
Name: "full"; Description: "{code:FullInstall}"
Name: "compact"; Description: "{code:CompactInstall}"
Name: "custom"; Description: "{code:CustomInstall}"; Flags: iscustom

[Components]
Name: "greenshot"; Description: "Greenshot"; Types: default full compact custom; Flags: fixed
;Name: "plugins\networkimport"; Description: "Network Import Plugin"; Types: full
Name: "plugins\box"; Description: {cm:box}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\confluence"; Description: {cm:confluence}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\dropbox"; Description: {cm:dropbox}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\externalcommand"; Description: {cm:externalcommand}; Types: default full custom; Flags: disablenouninstallwarning
Name: "plugins\flickr"; Description: {cm:flickr}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\imgur"; Description: {cm:imgur}; Types: default full custom; Flags: disablenouninstallwarning
Name: "plugins\jira"; Description: {cm:jira}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\ocr"; Description: {cm:ocr}; Types: default full custom; Flags: disablenouninstallwarning
Name: "plugins\office"; Description: {cm:office}; Types: default full custom; Flags: disablenouninstallwarning
Name: "plugins\photobucket"; Description: {cm:photobucket}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\picasa"; Description: {cm:picasa}; Types: full custom; Flags: disablenouninstallwarning
Name: "plugins\win10"; Description: {cm:win10}; Types: default full custom; Flags: disablenouninstallwarning; Check: IsWindows10OrNewer()
Name: "languages"; Description: {cm:language}; Types: full custom; Flags: disablenouninstallwarning
Name: "languages\arSY"; Description: {cm:arSY}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('d')
Name: "languages\caCA"; Description: {cm:caCA}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\csCZ"; Description: {cm:csCZ}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\daDK"; Description: {cm:daDK}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\dexfranconia"; Description: {cm:dexfranconia}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\elGR"; Description: {cm:elGR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('4')
Name: "languages\esES"; Description: {cm:esES}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\etEE"; Description: {cm:etEE}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\faIR"; Description: {cm:faIR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('d')
Name: "languages\fiFI"; Description: {cm:fiFI}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\frFR"; Description: {cm:frFR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\frQC"; Description: {cm:frQC}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\heIL"; Description: {cm:heIL}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('c')
Name: "languages\huHU"; Description: {cm:huHU}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\idID"; Description: {cm:idID}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\itIT"; Description: {cm:itIT}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\jaJP"; Description: {cm:jaJP}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('7')
Name: "languages\kabDZ"; Description: {cm:kabDZ}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('8')
Name: "languages\koKR"; Description: {cm:koKR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('8')
Name: "languages\ltLT"; Description: {cm:ltLT}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('3')
Name: "languages\lvLV"; Description: {cm:lvLV}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('3')
Name: "languages\nnNO"; Description: {cm:nnNO}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\plPL"; Description: {cm:plPL}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\ptBR"; Description: {cm:ptBR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\ptPT"; Description: {cm:ptPT}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\roRO"; Description: {cm:roRO}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\ruRU"; Description: {cm:ruRU}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('5')
Name: "languages\skSK"; Description: {cm:skSK}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\slSI"; Description: {cm:slSI}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('2')
Name: "languages\srRS"; Description: {cm:srRS}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('5')
Name: "languages\svSE"; Description: {cm:svSE}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('1')
Name: "languages\trTR"; Description: {cm:trTR}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('6')
Name: "languages\ukUA"; Description: {cm:ukUA}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('5')
Name: "languages\viVN"; Description: {cm:viVN}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('e')
Name: "languages\zhCN"; Description: {cm:zhCN}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('a')
Name: "languages\zhTW"; Description: {cm:zhTW}; Types: full custom; Flags: disablenouninstallwarning; Check: hasLanguageGroup('9')
[Code]
// Do we have a regular user trying to install this?
function IsRegularUser(): Boolean;
begin
	Result := not (IsAdmin or IsAdminInstallMode);
end;

// The following code is used to select the installation path, this is localappdata if non poweruser
function DefDirRoot(Param: String): String;
begin
	if IsRegularUser then
		Result := ExpandConstant('{localappdata}')
	else
		Result := ExpandConstant('{pf}')
end;


function FullInstall(Param : String) : String;
begin
	result := SetupMessage(msgFullInstallation);
end;

function CustomInstall(Param : String) : String;
begin
	result := SetupMessage(msgCustomInstallation);
end;

function CompactInstall(Param : String) : String;
begin
	result := SetupMessage(msgCompactInstallation);
end;
/////////////////////////////////////////////////////////////////////
// The following uninstall code was found at:
// http://stackoverflow.com/questions/2000296/innosetup-how-to-automatically-uninstall-previous-installed-version
// and than modified to work in a 32/64 bit environment
/////////////////////////////////////////////////////////////////////
function GetUninstallStrings(): array of String;
var
	sUnInstPath: String;
	sUnInstallString: String;
	asUninstallStrings : array of String;
	index : Integer;
begin
	sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#emit SetupSetting("AppId")}_is1');
	sUnInstallString := '';
	index := 0;

	// Retrieve uninstall string from HKLM32 or HKCU32
	if RegQueryStringValue(HKLM32, sUnInstPath, 'UninstallString', sUnInstallString) then
	begin
		SetArrayLength(asUninstallStrings, index + 1);
		asUninstallStrings[index] := sUnInstallString;
		index := index +1;
	end;

	if RegQueryStringValue(HKCU32, sUnInstPath, 'UninstallString', sUnInstallString) then
	begin
		SetArrayLength(asUninstallStrings, index + 1);
		asUninstallStrings[index] := sUnInstallString;
		index := index +1;
	end;

	// Only for Windows with 64 bit support: Retrieve uninstall string from HKLM64 or HKCU64
	if IsWin64 then
	begin
		if RegQueryStringValue(HKLM64, sUnInstPath, 'UninstallString', sUnInstallString) then
		begin
			SetArrayLength(asUninstallStrings, index + 1);
			asUninstallStrings[index] := sUnInstallString;
			index := index +1;
		end;

		if RegQueryStringValue(HKCU64, sUnInstPath, 'UninstallString', sUnInstallString) then
		begin
			SetArrayLength(asUninstallStrings, index + 1);
			asUninstallStrings[index] := sUnInstallString;
			index := index +1;
		end;
	end;
	Result := asUninstallStrings;
end;

/////////////////////////////////////////////////////////////////////
procedure UnInstallOldVersions();
var
	sUnInstallString: String;
	index: Integer;
	isUninstallMade: Boolean;
	iResultCode : Integer;
	asUninstallStrings : array of String;
begin
	isUninstallMade := false;
	asUninstallStrings := GetUninstallStrings();
	for index := 0 to (GetArrayLength(asUninstallStrings) -1) do
	begin
		sUnInstallString := RemoveQuotes(asUninstallStrings[index]);
		if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
			isUninstallMade := true;
	end;

	// Wait a few seconds to prevent installation issues, otherwise files are removed in one process while the other tries to link to them
	if (isUninstallMade) then
		Sleep(2000);
end;

/////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
begin
	if (CurStep=ssInstall) then
	begin
		UnInstallOldVersions();
	end;
end;
/////////////////////////////////////////////////////////////////////
// End of unstall code
/////////////////////////////////////////////////////////////////////

// Build a list of greenshot parameters from the supplied installer parameters
function GetParamsForGS(argument: String): String;
var
	i: Integer;
	parametersString: String;
	currentParameter: String;
	foundStart: Boolean;
	foundNoRun: Boolean;
	foundLanguage: Boolean;
begin
	foundNoRun := false;
	foundLanguage := false;
	foundStart := false;
	for i:= 0 to ParamCount() do begin
		currentParameter := ParamStr(i);

		// check if norun is supplied
		if Lowercase(currentParameter) = '/norun' then begin
			foundNoRun := true;
			continue;
		end;

		if foundStart then begin
			parametersString := parametersString + ' ' + currentParameter;
			foundStart := false;
		end
		else begin
			if Lowercase(currentParameter) = '/language' then begin
				foundStart := true;
				foundLanguage := true;
				parametersString := parametersString + ' ' + currentParameter;
			end;
		end;
	end;
	if not foundLanguage then begin
		parametersString := parametersString + ' /language ' + ExpandConstant('{language}');
	end;
	if foundNoRun then begin
		parametersString := parametersString + ' /norun';
	end;
	// For debugging comment out the following
	//MsgBox(parametersString, mbInformation, MB_OK);

	Result := parametersString;
end;

// Check if language group is installed
function hasLanguageGroup(argument: String): Boolean;
var
	keyValue: String;
	returnValue: Boolean;
begin
	returnValue := true;
	if (RegQueryStringValue( HKLM, 'SYSTEM\CurrentControlSet\Control\Nls\Language Groups', argument, keyValue)) then begin
		if Length(keyValue) = 0 then begin
			returnValue := false;
		end;
	end;
	Result := returnValue;
end;

function hasDotNet() : boolean;
begin
	Result := netfxspversion(NetFx4x, '') >= 71;
end;

// Initialize the setup
function InitializeSetup(): Boolean;
begin
	// Check for .NET and install 4.7.1 if we don't have it
	if not hasDotNet() then
	begin
		// Enhance installer, if needed, otherwise .NET installations won't work
		msi20('2.0');
		msi31('3.0');

		//install .net 4.7.1
		dotnetfx47(71);
	end;
	Result := true;
end;

function IsWindowsVersionOrNewer(Major, Minor: Integer): Boolean;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result :=
    (Version.Major > Major) or
    ((Version.Major = Major) and (Version.Minor >= Minor));
end;

function IsWindows10OrNewer: Boolean;
begin
  Result := IsWindowsVersionOrNewer(10, 0);
end;

[Run]
Filename: "{app}\{#ExeName}.exe"; Description: "{cm:startgreenshot}"; Parameters: "{code:GetParamsForGS}"; WorkingDir: "{app}"; Flags: nowait postinstall runasoriginaluser
Filename: "http://getgreenshot.org/thank-you/?language={language}&version={#Version}"; Flags: shellexec runasoriginaluser

[InstallDelete]
Name: {app}; Type: dirifempty;
