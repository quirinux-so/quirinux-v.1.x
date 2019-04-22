#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# MÓDULO: BORRATEMP
# Módulo que borra los temporales de instalación de Quirinux.
#
# Este código fuente forma parte del Sistema Operativo Quirinux V.1.0
# y fue programado por Charlie Martínez
# Abril de 2019, compartido bajo licencia GPLv3
# Por alguna razón, Systemback no elimina una carpeta muy grande
# e innecesaria luego de instalar. Este código se encargará de borrarla.


cd /lib/live/mount/rootfs/

sudo rm -rf filesystem.squashfs
cd /lib/live/mount
sudo rm -rf medium



