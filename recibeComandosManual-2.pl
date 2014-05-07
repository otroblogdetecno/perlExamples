#!/usr/bin/perl
#######################################################
# INICIO DEL SCRIPT -> CORTAR AQUI
#######################################################
use strict;
##################################################
#indice para verificar el valor del argumento
my $j=0; 
my $directorio;
my $archivo;
##################################################
#Procesamiento de parametros de linea de comando
if ($#ARGV==-1) {
	print "Sin argumentos\n";
	ayuda();
} else {
	print("##########################\n");
	print("Cantidad argumentos-> $#ARGV\n");
	print("##########################\n");
	if($#ARGV!=1){
		#se espera la opcion ej -a o -d seguida de una cadena
		print "\n No se ha pasado la cantidad correcta de argumentos \n";
		exit;
	}
	for (my $i=0;$i <= $#ARGV; $i++){
		if($ARGV[$i] eq "-h"){
			ayuda();
		}		
		if($ARGV[$i] eq "-d"){
			$j=$i+1;
			if($j<=$#ARGV){
				$directorio=$ARGV[$j];
				print "Directorio-> $directorio\n";
				proceso1;
				exit;
			}else {
				ayuda();
			}
		}else{			
			if($ARGV[$i] eq "-a"){
				$j=$i+1;
				if($j<=$#ARGV){
					$archivo=$ARGV[$j];
					print "Archivo-> $archivo\n";
					proceso2;
					exit;
				}else {
					ayuda();
				}
			}else{
				ayuda();
				exit;	
			}
		}
	}#for ($i=0;$i <= $#ARGV; $i++)
}#if ($#ARGV==-1) {
##################################################
	
sub proceso1{
	print "Proceso 1\n";
}
sub proceso2{
	print "Proceso 1\n";
}
sub ayuda{
	print "\n TEXTO DE AYUDA \n";
}

#######################################################
# FIN DEL SCRIPT -> CORTAR AQUI
#######################################################