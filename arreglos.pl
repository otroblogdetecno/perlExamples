#!/usr/bin/perl

use 5.006;
use strict;
use warnings;

############################################
# Manejo de arrays
# Ejemplos basados en Schwartz - Learning Perl 5
############################################
# Definir un arreglo y recorrerlo.
############################################
my @arreglo = qw/ cinco seis uno dos tres cuatro /;
my $elemento;
foreach $elemento (@arreglo) {
	print "$elemento \n";
}
print "Cantidad elementos: $#arreglo \n"; 
print "El valor del elemento numero 2 es-> $arreglo[2] \n";
#Ordena el array
my @ordenado= sort (@arreglo);
print "Ordena el arreglo alfabeticamente ->\n";
print " @ordenado \n";

#############################################
# Distintos tipos de asignaciones y uso de funciones
#############################################

@arreglo = qw /  uno dos tres cuatro /; 
my $primero = shift(@arreglo); # $primero recibe "uno"
my $segundo = shift @arreglo; # $segundo recibe "dos"

print "Valor primero-> $primero \n";
print "Valor segundo-> $segundo \n";

shift @arreglo; # @arreglo vacio
my  $sinValor = shift @arreglo; # $sinValor obtiene undef, @arreglo vacio
unshift(@arreglo, 5); #inserta el valor 5
unshift @arreglo, 4;  #inserta el valor 4
@ordenado = 1..3; #asigna del 1 al 3
unshift @arreglo, @ordenado; # inserta los elementos de @ordenado al array @arreglo (1, 2, 3, 4, 5) 
print "\n Valor final del array---> @arreglo \n";
