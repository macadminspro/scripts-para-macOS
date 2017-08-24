#!/bin/bash
#
clear
sudo echo 
inicio=$(date +"%H:%M")
echo "==================================================================================="
echo "=                                                Hora de inicio: $inicio hrs.       ="
echo "=                                                                                 ="
echo "=            SEA PACIENTE, ESTE PROCEDIMIENTO TOMARA APROX 20 MIN                 ="
echo "=                                                                                 ="
echo "=           ASEGURESE SOLO TENER CONECTADO UN USB DE AL MENOS 8GB                 ="
echo "=                                                                                 ="
echo "=           ESTE PROCEDMIENTO ELIMINARA TODO EL CONTENIDO DEL USB                 ="
echo "=                                                                                 ="
echo "=               VALIDO PARA MAVERICKS, YOSEMITE, CAPITAN Y SIERRA                 ="
echo "=                                                                                 ="
echo "=                                                                                 ="
echo "=     SEGURO DE CONTINUAR? PRESIONE ENTER SINO PRESIONE CONTROL-C                 ="
echo "=                                                                                 ="
echo "=                SI MUESTRA ERROR O SE CIERRA, EJECUTE DE NUEVO ;)                ="
echo "=                                                                                 ="
echo "==================================================================================="
echo
read
# Formatear el USB

disco=$(system_profiler SPUSBDataType | grep "BSD Name" | head -1 | awk '{print $3}')
diskutil partitionDisk /dev/$disco GPT HFS+ Espere...\! R
particion=$(system_profiler SPUSBDataType | grep -oE '/Volumes/.*$')

# Crear booteable

instalador=$(find / -name createinstallmedia 2>&1 | grep -v "find:" | sed 's/.\{38\}$//')
ejecutable=$(find / -name createinstallmedia 2>&1 | grep -v "find:")
sudo "$ejecutable" --volume $particion --applicationpath "$instalador" --nointeraction
echo
nohup osascript -e 'tell app "System Events" to display dialog "SE COMPLETO LA CREACION DEL BOOTEABLE!" buttons {"OK"} default button 1' &
exit 
