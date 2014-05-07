#!/usr/bin/perl

use 5.006;
use strict;
use warnings;

############################################
# Manejo de tablas hash
# Ejemplos basados en Schwartz - Learning Perl 5
############################################
# Definir una tabla hash y recorrerla.
############################################

my %tabla_hash=(
	"fred"=>"flintstone",
	"dino"=>"nada",
	"barney" =>"violeta",
	"betty"	=>"rubble",
);

my ($clave, $valor,$unavariable,$otraclave);

############################################
#recorrer tabla hash
print "\n============= Recorrer una tabla has utilizando while ===================\n";
while (($clave,$valor)=each %tabla_hash){
	print "$clave -> $valor \n";
}

############################################
#otra forma de recorrerla
print "\n============= Otra forma de recorrer una tabla has utilizando foreach ===================\n";
foreach $clave (sort keys %tabla_hash){
	$valor=$tabla_hash{$clave};
	print "$clave -> $valor \n";	
}

#asignacion de un valor a la tabla hash
$unavariable=10;
$otraclave="dino"; #establece la clave a buscar
$tabla_hash{$otraclave}="amarillo";
print $tabla_hash{$otraclave}."\n";

################################################3
# ejercicio de hash capitulo 6.2
################################################3

#my %tabla_hash=(
#"fred"=> 0,
#"barney"=> 0,
#"wilma"=> 0,
#);
#print "INGRESE UN NOMBRE=>";

#chomp($entrada=<STDIN>);
#while ($entrada ne "\n"){
#	print "INGRESE UN NOMBRE, entrada en blanco para frenar=>";
#	$entrada=<STDIN>;		
#	chomp($clave=$entrada);	
#	if (defined ($tabla_hash{$clave})){
#		print "$tabla_hash{$clave} + 1 \n";
#		$tabla_hash{$clave}++;
#	}else{
#		print "NO SE ENCUENTRA";
#	}	
#}

#foreach $clave (sort keys %tabla_hash){
#	print "$clave -> $tabla_hash{$clave}\n";
#}
##################################################

#while(defined($line=<STDIN>)){
#	print "I saw $line";
#}

#while(<STDIN>){
#	print "Veo  $_";
#}

#while (<>) {
#	chomp;
#	print "$_\n";
#}

#imprimir desde el final al principio un archivo
#print reverse <>;






