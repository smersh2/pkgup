#!/bin/bash -e

. pkgupdate

echo -ne "$name ... "

upversion=$(wget -qO - -t 3 -T 10 https://github.com/l3ib/nitrogen/releases | grep ${NAME}-[0-9].*${EXT} | sed "s/.*\($NAME-[0-9].*$EXT\).*/\1/" | grep -v beta | grep -v alpha | sed "s/$NAME-//;s/$EXT//" | sort -V | tail -n1)

result

exit 0
