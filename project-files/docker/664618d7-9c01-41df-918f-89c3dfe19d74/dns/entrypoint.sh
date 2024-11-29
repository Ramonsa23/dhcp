cp "/dns/named.conf.options" "/etc/bind/named.conf.options"

cp "/dns/named.conf.local" "/etc/bind/named.conf.local"

cp "/dns/db.stark.lan" "/var/cache/bind/db.stark.lan"
cp "/dns/db.lannister.lan" "/var/cache/bind/db.lannister.lan"
cp "/dns/db.targaryen.lan" "/var/cache/bind/db.targaryen.lan"

cp "/dns/db.192.168" "/var/cache/bind/db.192.168"

#Local -- : -- Contenedor

killall rsyslog
rsyslog

#EJECUTAMOS EL ENTRYPOINT

#Luego iniciamos el servicio DNS:
/etc/init.d/named restart

#Si hay algún error, ponemos named-checkconf -z
#Comprobamos en cliente:
#dig @IP_SERVER DOMAIN

#chmod 666 db.stark.lan si da errores.

