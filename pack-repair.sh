#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#######################################################################
#                                                                     #
# Pack-Repair v.1.0                                                   #
# Script que repara los paquetes rotos en Debian.                     #
#                                                                     #
#######################################################################
#                                                                     #
# Este programa no es más que la automatización de los comandos       #
# sugeridos por el blog GeekLand en su artículo:		                  #
# https://geekland.eu/reparar-paquetes-rotos-linux/                   #
#                                                                     #
# Instrucciones:						                                          #
#                                                                     #
# 1) Otorge permisos de ejecución al script.                          #
# 2) Ejecute con sudo ./pack-repair.sh                                #
#                                                                     #
# Programado por Charlie Martínez                                     #
# www.charliemartinez.com.ar                                          #
# contacto@quirinux.org                                               #
#                                                                     #
# Software incluidos en Quirinux Sistema Operativo                    #
# www.quirinux.or                                                     #
#                                                                     #
# Compartido bajo licencia GPLv3:                                     #
#                                                                     #
# Usted puede usar, modificar, copiar, compartir, redistribuir        #
# este software, siempre y cuando respete los créditos del autor.     #
#								                                                      #
#######################################################################

# Configurar paquetes desempaquetados:

sudo dpkg --configure -a

# Limpieza de Cache:

sudo apt-get clean && sudo apt-get autoclean

# Regeneración de Cache:

sudo apt-get update --fix-missing

# Instalación de dependencias:

sudo apt-get install -f

# Limpieza final:

sudo rm /var/lib/apt/lists/lock && sudo rm /var/cache/apt/archives/lock && sudo rm /var/lib/dpkg/lock
