#!/bin/bash

#OJO QUE VAYA JUNTO SINO DA ERROR
RUTA=$(dirname "$(realpath "$0")")

cp "$RUTA/dhcp4.json" /etc/kea/kea-dhcp4.conf


#Iniciar el servidor DHCP con /etc/init.d/kea-dhcp4-server start
#Esto NO se ejecutará:
#/etc/init.d/kea-dhcp4-server start


#Al tener el directorio vinculado, entramos en la mv y ejecutamos:
#el entrypoint
#iniciamos el servidor dhcp
#Comprobamos en cliente dhclient -v

#kea-dhcp4