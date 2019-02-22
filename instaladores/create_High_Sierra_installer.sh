#!/bin/bash
#
clear
echo
echo Script para crear instalador de High Sierra sin necesidad de la App Store...
echo
echo ejecute este script con sudo
echo
echo Creando carpetas ...
echo
mkdir ~/Downloads/091-94326/
cd ~/Downloads/091-94326/
echo
echo Descargando archivos ...
echo
echo Lista completa de paquetes ubicadas en:
echo 
echo https://swscan.apple.com/content/catalogs/others/index-10.13-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog.gz
echo
echo
curl https://swdist.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/091-94326.English.dist -o 091-94326.English.dist
curl https://swdist.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/RecoveryHDMetaDmg.pkm -o RecoveryHDMetaDmg.pkm
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/RecoveryHDMetaDmg.pkg -o RecoveryHDMetaDmg.pkg
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/OSInstall.mpkg -o OSInstall.mpkg
curl https://swdist.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallAssistantAuto.pkm -o InstallAssistantAuto.pkm
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallAssistantAuto.pkg -o InstallAssistantAuto.pkg
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/BaseSystem.dmg -o BaseSystem.dmg
curl https://swdist.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallESDDmg.pkm -o InstallESDDmg.pkm
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallESDDmg.pkg -o InstallESDDmg.pkg
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/BaseSystem.chunklist -o BaseSystem.chunklist
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallESDDmg.chunklist -o InstallESDDmg.chunklist
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallInfo.plist -o InstallInfo.plist
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/AppleDiagnostics.chunklist -o AppleDiagnostics.chunklist
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/AppleDiagnostics.dmg -o AppleDiagnostics.dmg
curl https://swdist.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/MajorOSInfo.pkm -o MajorOSInfo.pkm
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/MajorOSInfo.pkg -o MajorOSInfo.pkg
curl http://swcdn.apple.com/content/downloads/29/03/091-94326/45lbgwa82gbgt7zbgeqlaurw2t9zxl8ku7/InstallAssistantAuto.smd -o InstallAssistantAuto.smd
echo
echo
echo Construyendo paquete ...
echo
cd ..
productbuild --distribution ./091-94326/091-94326.English.dist --package-path ./091-94326/ installer.pkg
echo
echo Ahora creamos el instalador en /Applications/Install MacOS High Sierra.app ...
echo
/usr/sbin/installer -pkg installer.pkg -target /
echo
echo Ignore errores ...
echo
echo Copiando archivos adicionales ...
echo
cp ./091-94326/InstallESDDmg.pkg /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/InstallESD.dmg
cp ./091-94326/AppleDiagnostics.dmg /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/
cp ./091-94326/AppleDiagnostics.chunklist /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/
cp ./091-94326/BaseSystem.dmg /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/
cp ./091-94326/BaseSystem.chunklist /Applications/Install\ macOS\ High\ Sierra.app/Contents/SharedSupport/
echo
echo
echo Finalizado ...
echo
echo Verificar que existe el instalador de High Sierra en /Applications/Install MacOS High Sierra.app..
echo
echo by macadmin
