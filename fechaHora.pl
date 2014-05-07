#!/usr/bin/perl
use strict;
use warnings;
#Leer valores de fecha y hora del sistema, para sistemas operativos Unix/Linux
#ejecutar comando date y devolver el valor a una variable
my $nombreArchivo=`date +%Y%m%d%H%M%S`;
#limpiar caracteres de nueva linea
$nombreArchivo=~s/\n//g;
print "Variable con resultado de ejecucion de comando -> $nombreArchivo \n";

#Tomar hora del sistema. Guardar valores de fecha y hora en variables, en sistemas Unix/Linux
my $ANO=`date | cut -c25-29 | tr -d ' '`;
my $MES=`date | cut -c5-7 | tr -d ' '`;
my $DIA=`date | cut -c9-10 | tr -d ' '`;
my $HORA=`date | cut -c12-13 | tr -d ' '`;
my $MINUTOS=`date | cut -c15-16 | tr -d ' '`;
my $SEGUNDOS=`date | cut -c18-19 | tr -d ' '`;

print "Fecha tomada del sistema -> ";
print "$ANO $MES $DIA $HORA $MINUTOS $SEGUNDOS \n";
