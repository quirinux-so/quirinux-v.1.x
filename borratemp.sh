#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#######################################################################
#                                                                     #
# Borratemp v.1.2                                                     #
# Script que borra los temporales de instalación de Quirinux.         #
#                                                                     #
#######################################################################
#                                                                     #
# Por alguna razón, Systemback no borra unas carpetas muy grandes     #
# que ya no tienen utilidad una vez instalado el sistema en el disco. #
# Este programa sirve para cumplir con esa tarea.                     #
#                                                                     #
# Modo de uso:                                                        #
#                                                                     #
# 1) Otorgar permisos de ejecución                                    #
# 2) Ejecutar con sudo ./borratemp.sh                                 #
#                                                                     #
# Este código viene incluido y configurado al inicio                  #
# del Sistema Operativo Quirinux.                                     #
# www.quirinux.org                                                    #
#                                                                     #
# Fue programado por Charlie Martínez en Abril de 2019.               #
# www.charliemartinez.com.ar                                          #
# contacto@charliemartinez.com.ar                                     #
#                                                                     #
# Compartido bajo licencia GPLv3:                                     #
#                                                                     #
# Usted puede usar, modificar, copiar, compartir, redistribuir        #
# este software, siempre y cuando respete los créditos del autor.     #
#                                                                     #
#######################################################################

# Borrado de las carpetas residuales de Systemback:

cd /lib/live/mount/rootfs/

sudo rm -rf filesystem.squashfs
cd /lib/live/mount
sudo rm -rf medium

# Extra 1: elimina archivos de documentación:

cd /usr/share/doc/
sudo rm -rf *.*

# Extra 2: elimina arhivos.deb de instalación

cd /var/cache/apt/archives/
sudo rm -rf *.deb
