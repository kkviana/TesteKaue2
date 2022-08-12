@ECHO OFF
net session >nul 2>&1
if %errorLevel% == 0 (
	goto Inicio
) else (
    Title Atencao! Sem privilegios de Administrador
    echo.
    echo.
    echo      Favor executar UMA VEZ com privilegios de Administrador!
    echo.
    echo      Clique com botao direito do mouse sobre o arquivo
    echo      e depois clique em "Executar como administrador".
    echo.
    echo.
    timeout 2
)

:Inicio

Instala_VFP9_SP2_7423.exe /S /v/qn
msxml.msi /passive
VC_redist.x86.exe /passive
mysql-connector-odbc-8.0.22-win32.msi /passive
XCOPY /Y BARRAS.TTF %systemroot%\fonts
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Barras Biro (TrueType)" /t REG_SZ /d "BARRAS.TTF" /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters" /v "EnableOplocks" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters" /v "EnableOpLockForceClose" /t REG_SZ /d dword:00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters" /v "SMB2" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters" /v "CachedOpenLimit" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "FileInfoCacheLifetime" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "FileNotFoundCacheLifetime" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DirectoryCacheLifetime" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\parameters" /v "UseOpportunisticLocking" /t REG_SZ /d dword:00000000 /f
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters" /v "OplocksDisabled" /t REG_SZ /d dword:00000001 /f
REG add "HKCU\Control Panel\International" /v sShortDate /t REG_SZ /d "dd/MM/yyyy" /f

echo Colocando aplicativos de SUPORTE REMOTO
XCOPY /Y "SUPORTE REMOTO.EXE" "%USERPROFILE%\DESKTOP"
XCOPY /Y "AnyDesk.EXE" "%USERPROFILE%\DESKTOP"


echo Desabilitando as configuracoes de energia
powercfg /change disk-timeout-ac 0
powercfg /change disk-timeout-dc 0
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0
powercfg /hibernate off
powercfg /change monitor-timeout-ac 0

:end
PAUSE

