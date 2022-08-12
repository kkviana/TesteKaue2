#define MyAppName "INSTALL 2022"
#define MyAppPublisher "Hard Shop"
#define MyAppURL "https://hardshop.com.br"

[Setup]
AppId={{CA0B6C16-3880-4301-AF14-4FB4B89CDCAE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=INSTALL SINCA 2022
SetupIconFile=Install SINCA\ico\sinca.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=Admin
DisableStartupPrompt=yes
DisableDirPage=yes


[CustomMessages]
InstalarPrograma=Instalar

[Tasks]
;Tarefa para criar atalho na area de trabalho
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

;Tarefa para por aplicativo no inicializar do windows
Name: "StartMenuEntry" ; Description: "Colocar aplicativos no inicializar do windows" ; GroupDescription: "Windows Startup"; MinVersion: 4,4;

[Components]
Name: "PAF"; Description: "SINCA PAF";
Name: "PAF/NFe"; Description: "NFe";
Name: "Premium"; Description: "SINCA Premium";
Name: "Premium/NFe"; Description: "NFe";
Name: "NFe"; Description: "SINCA NFe";
Name: "CTe"; Description: "SINCA CTe";
Name: "NFCe"; Description: "SINCA NFCe";

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
;Carregar os arquivos
Source: "Install SINCA\AnyDesk.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\BARRAS.TTF"; DestDir: "{commonfonts}"; FontInstall: "Barras Biro"; Flags: uninsneveruninstall
Source: "Install SINCA\Instala_VFP9_SP2_7423.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\msxml.msi"; DestDir: "{app}"; Flags: deleteafterinstall;
Source: "Install SINCA\mysql-connector-odbc-8.0.22-win32.msi"; DestDir: "{app}"; Flags: deleteafterinstall
Source: "Install SINCA\VC_redist.x86.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\ACBrMonitorPLUS-0.1.12.9-Windows-Instalador.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\SINCA.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Relatorio.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA CTe.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA NFe.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA Premium.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA PAF-ECF.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA PAF-NFCe.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Executaveis\SINCA Retaguarda.sfx.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\npp.8.4.2.Installer.x64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\iuninfe5.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\winrar-x64-611br.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\NFE.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\CTE.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\WinUI3.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\WINUI3\dotnetfx35.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\WINUI3\dotnet-hosting-6.0.6-win.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\WINUI3\VfpClient.msi"; DestDir: "{app}"; Flags: deleteafterinstall
Source: "Install SINCA\WINUI3\VfpEntityFrameworkProvider.msi"; DestDir: "{app}"; Flags: deleteafterinstall
Source: "Install SINCA\WINUI3\VFPOLEDBSetup.msi"; DestDir: "{app}"; Flags: deleteafterinstall
Source: "Install SINCA\WINUI3\WindowsAppRuntimeInstall.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\RDP Wrapper 2021.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Install SINCA\Chocolatey.exe"; DestDir: "{app}"; Flags: ignoreversion
;ACBR NFe\ECF ACBR.exe \ ACBR NFCe ACBR NOVO.exe
Source: "Install SINCA\ACBR\ACBR.exe"; DestDir: "{app}"; Flags: ignoreversion    
Source: "Install SINCA\ACBR\ACBR NOVO.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
;Criar atalho area de trabalho anydesk
Name: "{autodesktop}\AnyDesk.exe"; Filename: "{app}\AnyDesk.exe"; Tasks: desktopicon

;Colocar aplicativos no inicializar do windows
Name: "{userstartup}\uninfe"; Filename: "C:\Unimake\UniNFe\uninfe.exe"; Tasks:StartMenuEntry;
Name: "{commonstartup}\uninfe"; Filename: "C:\Unimake\UniNFe\uninfe.exe"; Tasks:StartMenuEntry;
Name: "{userstartup}\ACBR NFCe"; Filename: "C:\ACBrMonitorPLUS_NFCe\ACBrMonitor.exe"; Tasks:StartMenuEntry; Components: NFCe
Name: "{commonstartup}\ACBR NFCe"; Filename: "C:\ACBrMonitorPLUS_NFCe\ACBrMonitor.exe"; Tasks:StartMenuEntry; Components: NFCe
Name: "{userstartup}\ACBR NFCe"; Filename: "C:\ACBrMonitorPLUS_ECF\ACBrMonitor.exe"; Tasks:StartMenuEntry; Components: PAF
Name: "{commonstartup}\ACBR NFCe"; Filename: "C:\ACBrMonitorPLUS_ECF\ACBrMonitor.exe"; Tasks:StartMenuEntry; Components: PAF

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "Barras Biro (TrueType)"; ValueData: "BARRAS.TTF"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\lanmanserver\parameters"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "EnableOplocks"; ValueData: "dword:00000000"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\lanmanserver\parameters"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "EnableOpLockForceClose"; ValueData: "dword:00000001"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\lanmanserver\parameters"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "SMB2"; ValueData: "dword:00000000"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\lanmanserver\parameters"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "CachedOpenLimit"; ValueData: "dword:00000000"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "OplocksDisabled"; ValueData: "dword:00000001"
Root: HKCU; Subkey: "Control Panel\International"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "sShortDate"; ValueData: "dd/MM/yyyy"
Root: HKLM; Subkey: "SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings"; Permissions: users-modify; Flags: deletevalue createvalueifdoesntexist; ValueType: string; ValueName: "SecureProtocols"; ValueData: "dword:000000a8"

[Run]
;Instalacao sistema
Filename: "{app}\SINCA.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar sistema"
Filename: "{app}\WinUI3.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar pasta Win UI3"
Filename: "{app}\Relatorio.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar pasta Relatorio"  

;PAF
Filename: "{app}\SINCA PAF-ECF.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema PAF"; Components: PAF
Filename: "{app}\SINCA Retaguarda.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema PAF"; Components: PAF or NFCe
Filename: "{app}\SINCA PAF-NFCE.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema PAF"; Components: PAF or NFCe
Filename: "{cmd}"; Parameters: "/c ""move C:\SINCA ""C:\SINCA PAF-ECF"""""; Components: PAF 
Filename: "{app}\ACBrMonitorPLUS-0.1.12.9-Windows-Instalador.exe"; Parameters: "/verysilent" ; Description: "Instalar ACBR"; Components: PAF
Filename: "{app}\ACBR.exe"; Parameters: "/S /v/qn" ; Description: "Instalar Pacotes ACBR"; Components: PAF
Filename: "{cmd}"; Parameters: "/c ""move C:\ACBrMonitorPLUS ""C:\ACBrMonitorPLUS_ECF"""""; Components: PAF

;Premium
Filename: "{app}\SINCA PREMIUM.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema Premium"; Components: Premium
Filename: "{cmd}"; Parameters: "/c ""move C:\SINCA ""C:\SINCA Premium"""""; Components: Premium

;NFe
Filename: "{app}\SINCA NFE.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema NFe"; Components: NFe
Filename: "{cmd}"; Parameters: "/c ""move C:\SINCA ""C:\SINCA NFe"""""; Components: NFe 

;CTe
Filename: "{app}\SINCA CTE.sfx.exe"; Parameters: "/S /v/qn" ; Description: "Descompactar atalho sistema CTe"; Components: CTe
Filename: "{cmd}"; Parameters: "/c ""move C:\SINCA ""C:\SINCA CTe"""""; Components: CTe   
 
;Instalar Requisitos basicos para rodar o SINCA
Filename: "{app}\VC_redist.x86.exe"; Parameters: "/quiet" ; Description: "{cm:LaunchProgram,{#StringChange('VC_redist', '&', '&&')}}"; 
Filename: "{app}\Instala_VFP9_SP2_7423.exe"; Parameters: "/S /v/qn" ; Description: "{cm:LaunchProgram,{#StringChange('VFP9', '&', '&&')}}";
Filename: "{app}\dotnetfx35.exe"; Parameters: "/quiet" ; Description: "{cm:LaunchProgram,{#StringChange('VFP9', '&', '&&')}}";
Filename: "{app}\dotnet-hosting-6.0.6-win.exe"; Parameters: "/quiet" ; Description: "{cm:LaunchProgram,{#StringChange('VFP9', '&', '&&')}}";
Filename: "{app}\WindowsAppRuntimeInstall.exe"; Parameters: "/S /v/qn" ; Description: "{cm:LaunchProgram,{#StringChange('VFP9', '&', '&&')}}";
Filename: "msiexec.exe"; Parameters: "/i ""{app}\msxml.msi"" /qb"; WorkingDir: {app}; 
Filename: "msiexec.exe"; Parameters: "/i ""{app}\mysql-connector-odbc-8.0.22-win32.msi"" /qb"; WorkingDir: {app};
Filename: "msiexec.exe"; Parameters: "/i ""{app}\VfpClient.msi"" /qb"; WorkingDir: {app}; 
Filename: "msiexec.exe"; Parameters: "/i ""{app}\VfpEntityFrameworkProvider.msi"" /qb"; WorkingDir: {app}; 
Filename: "msiexec.exe"; Parameters: "/i ""{app}\VFPOLEDBSetup.msi"" /qb"; WorkingDir: {app};  

;Instalar NFCe
Filename: "{app}\ACBrMonitorPLUS-0.1.12.9-Windows-Instalador.exe"; Parameters: "/verysilent" ; Description: "Instalar ACBR NFCe"; Components: NFCe
Filename: "{app}\ACBR NOVO.exe"; Parameters: "/S /v/qn" ; Description: "Instalar ACBR"; Components: NFCe
Filename: "{cmd}"; Parameters: "/c ""move C:\ACBrMonitorPLUS ""C:\ACBrMonitorPLUS_NFCe"""""; Components: NFCe
Filename: "{cmd}"; Parameters: "/c ""move C:\SINCA ""C:\SINCA PAF-NFCe"""""; Components: NFCe

;Instalar NFe e CTe
Filename: "{app}\ACBrMonitorPLUS-0.1.12.9-Windows-Instalador.exe"; Parameters: "/verysilent" ; Description: "Instalar ACBR"; Components: NFe or CTe or Premium/NFe or PAF/NFe
Filename: "{app}\ACBR.exe"; Parameters: "/S /v/qn" ; Description: "Instalar Pacotes ACBR"; Components: NFe or CTe or Premium/NFe or PAF/NFe
Filename: "{app}\iuninfe5.exe"; Parameters: "/verysilent" ; Description: "Instalar Winrar"; Components: NFe or CTe or Premium/NFe or PAF/NFe
Filename: "{app}\NFE.exe"; Parameters: "/S /v/qn" ; Description: "Criar pastas NFe"; Components: NFe or Premium/NFe or PAF/NFe
Filename: "{app}\CTE.exe"; Parameters: "/S /v/qn" ; Description: "Criar pastas CTe"; Components: CTe
Filename: "{cmd}"; Parameters: "/c ""cacls CTe /E /P Todos:F"""; Components: CTe
Filename: "{cmd}"; Parameters: "/c ""cacls NFe /E /P Todos:F"""; Components: NFe or Premium/NFe or PAF/NFe or NFCe
Filename: "{cmd}"; Parameters: "/c ""net share NFe=C:\NFe /GRANT:Todos,FULL"""; Components: NFe or Premium/NFe or PAF/NFe or NFCe
Filename: "{cmd}"; Parameters: "/c ""net share CTe=C:\CTe /GRANT:Todos,FULL"""; Components: CTe

;Instalar RDP
Filename: "{app}\RDP Wrapper 2021.exe"; Parameters: "/S /v/qn" ; Description: "Extrair RDP";
Filename: "C:\Program Files\RDP Wrapper\install.bat"; Parameters: "install";
Filename: "C:\Program Files\RDP Wrapper\autoupdate.bat"; Parameters: "install";

;Instalar Chocolatey
Filename: "{app}\Chocolatey.exe"; Parameters: "/S /v/qn" ; Description: "Instalar Chocolatey";
Filename: "C:\Chocolatey\setup.bat"; Parameters: "install";

;Instalacoes opcionais
Filename: "{app}\npp.8.4.2.Installer.x64.exe"; Parameters: "/S /v/qn" ; Description: "Instalar Notepad ++"; Flags: postinstall
Filename: "{app}\winrar-x64-611br.exe"; Parameters: "/S /v/qn" ; Description: "Instalar Winrar"; Flags: postinstall

;Rodar comandos opcoes de energia
Filename: "{cmd}"; Parameters: "/c ""powercfg /hibernate on """
Filename: "{cmd}"; Parameters: "/c ""powercfg /change disk-timeout-ac 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change disk-timeout-dc 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change standby-timeout-ac 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change standby-timeout-dc 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change hibernate-timeout-ac 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change hibernate-timeout-dc 0 """ 
Filename: "{cmd}"; Parameters: "/c ""powercfg /change monitor-timeout-ac 0 """







