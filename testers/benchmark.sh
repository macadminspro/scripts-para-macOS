#!/bin/bash
clear
echo "---------------------"
echo "Prueba de escritura en ejecucion. Por favor espere ..."
write=$(dd if=/dev/zero bs=2048k of=tstfile count=1024 2>&1 | grep sec | awk '{print $1 / 102$
purge
echo ""
echo "Prueba de lectura en ejecucion. Por favor espere ..."
read=$(dd if=tstfile bs=2048k of=/dev/null count=1024 2>&1 | grep sec | awk '{print $1 / 1024$
echo ""
echo "Velocidad de lectura  : $read"
echo
echo "Velocidad de escritura: $write"
echo "---------------------"
echo "Limpiando. Espere..."
purge
rm tstfile
echo ""
exit 0
