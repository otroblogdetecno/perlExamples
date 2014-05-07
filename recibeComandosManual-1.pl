#!/usr/bin/perl
#######################################################
# INICIO DEL SCRIPT -> CORTAR AQUI
# ejemplos.pl
#######################################################

use strict;
use warnings;

#Ejemplo 1): leer valores de la linea de comandos y mostrar el nombre del script
#iinvocar nombreScript argumento1 argumento2
print "Nombre del script -> $0 \n";
print "Cantidad de argumentos recibidos comienza desde cero hasta $#ARGV \n";
#recorrer argumentos recibidos desde linea de comandos
for (my $i=0;$i <= $#ARGV; $i++){
	print "Argumento -> $i -> $ARGV[$i]\n";
}

#######################################################
# FIN DEL SCRIPT -> CORTAR AQUI
#######################################################