#!/usr/bin/perl

use 5.006;
use strict;
use warnings;

#cadena principal
my $cadena="Esta es una cadena con texto";

#obtiene una subcadena
my $subcadena=substr($cadena,0,4); #obtiene "Esta"

#devuelve el valor indice de la cadena
my $encontrar=index($cadena,"es");

#Convertir a minusculas con \L\E
#Convertir a mayusculas con \U\E
print "Cadena formateada en minusculas => \L $cadena \E \n";
print "Cadena formateada en mayusculas => \U $cadena \E \n";
print "Una subcadena => $subcadena \n";
print "Trae el numero de indice de la cadena encontrada => $encontrar \n";

#######ejemplos de formateo de salidas########
print "== FORMATEO DE SALIDAS==\n";
printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;
printf "entero %d !\n", 17.85;
printf "%6d\n", 42; # la salida es completada hasta seis digitos
printf "entero %2d\n", 2e3 + 1.95; # 2001
printf "10 espacios %10s\n", "wilma";

printf "6 decimales -- %12f\n", 6 * 7 + 2/3; # looks like ```42.666667
printf "3 decimales -- %12.3f\n", 6 * 7 + 2/3;# looks like ``````42.667
printf "%12.0f\n", 6 * 7 + 2/3;# looks like ``````````43
