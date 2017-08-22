#!/bin/bash
#
# -p 				#### Nombre de la cola	
# -D 				#### Informacion d ela impresora
# -L 				#### Ubicacion fisica de la impresora
# -E				#### Habilita la impresora y permite recibir trabajos
# -v				#### URL
# -P				#### ruta del driver
# -o printer-is-shared=false    #### Compartida NO
# -o -o HPOption_Duplexer=True  #### Permite duplex, solo impresoras HP

lpadmin -p cola_501 -D "SEVEN PUBLICIDAD SAC" -L "Laboratorio UK-51" -E -v dnssd://Laboratorio%20K510Apple._printer._tcp.local./BINPS -P /Library/Printers/PPDs/Contents/Resources/HP\ Color\ LaserJet\ CP6015.gz -o printer-is-shared=false -o HPOption_Duplexer=True

lpstat -p
[root@bonjo
