#!/bin/sh
# percysalgado@icloud.com

for printer in `lpstat -p | awk '{print $2}'`
do
echo Eliminando impresora: $printer
lpadmin -x $printer
done
