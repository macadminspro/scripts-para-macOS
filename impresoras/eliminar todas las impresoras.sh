#!/bin/bash

lpstat -p | awk '{print $2}' | while read printer
do
echo "Eliminando impresora:" $printer
lpadmin -x $printer
