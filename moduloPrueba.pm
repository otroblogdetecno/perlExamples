package moduloPrueba;
use strict;
use Exporter;
use warnings;

#Archivo moduloPrueba.pm
###########################################
#ejemplo adaptado de
# Bruno Contreras-Moreira
# http://www.eead.csic.es/compbio
# TEORIA: Modulos, clases y objetos
###########################################

our @ISA    = qw(Exporter);

########### LO QUE EXPORTA EL MODULO ###################
#definicion en forma de lista de las cabeceras de 
#funciones y variables globales que podran ser
#utilizadas desde los programas

our @EXPORT = qw( subrutina2 $variableGlobal1 $VERSION); 


########### VARIABLES GLOBALES ###################
# variables globales del modulo se coloca en forma 
# de lista en @EXPORT al inicio del programa
our $variableGlobal1;
our $VERSION=1.0;

#################################################
#definicion de una rutina interna. Esta no se encuentra en la lista
#de elementos a exportar @EXPORT
sub subrutina1_interna
{
	my ($parametros) = @_;
	
#	print "Estoy en subrutina1-> $parametros"
	#cargo un valor y lo devuelvo para prueba
	my $resultados = 1;	
	return ($resultados)  
}

#################################################
sub subrutina2
{	
	#uso la rutina interna pasandole un parametro
	my $datos = subrutina1_interna(2);
	
	print "Estoy en subrrutina2\n";
	#asignacion de datos a una variable global al modulo
	$variableGlobal1 = $datos;
}

1;
