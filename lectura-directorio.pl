#!/usr/bin/perl
use 5.006;
use strict;
use warnings;
#######################################################
# Recupera los nombres de archivos y directorios dentro de una ruta
# especifica escrita desde la linea de comandos
#######################################################
my $directorio="/home/";
my $archivo;

if ($#ARGV==-1) {
	#sin parametros
	exit
} else {
	$directorio=$ARGV[0];
	opendir DH,$directorio or die "no se puede abrir el directorio: $!";
	foreach $archivo (readdir DH){
		#busca archivos .txt
#comentar el if si se desea tener un listado completo del directorio
#		if ($archivo=~ /\.txt/){
			print "$archivo \n";
#		}
	}#foreach
	closedir DH;
}




