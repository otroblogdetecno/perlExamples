#!/usr/bin/perl

############################################################################################
#Autor: http://otroblogdetecnologias.blogspot.com
#Funcion: Extraer mails desde archivos ingresados en la línea de comandos;
#=================================
#Descripcion del Algoritmo
#=================================
#Realiza una copia del archivo .eml en un archivo temporal.
#Elimina los simbolos del primer archivo copiando los datos a un segundo archivo temporal
#Busca las lineas que contienen una arroba
#Procesa las lineas separandolas en palabras para luego seleccionar los patrones de correo
############################################################################################
my $content;
my $arTemporal1="temporal.eml";
my $arTemporal2="temporal2.eml";
my $arFinal="final.txt";

if ($#ARGV==-1) {
	#sin parametros
	ayuda();
} else {
	############################################
	#limpia el archivo de reporte final
	open(FINAL,">",$arFinal) or die;		
	close(FINAL);
	############################################
	# abrir archivo segun parametro
	copiarArchivo($ARGV[0],$arTemporal1);
	eliminarSimbolos($arTemporal1,$arTemporal2);	
	open(FH, $arTemporal2)or die;
	############################################
	while (<FH>){
		chomp;
		#del archivo temporal obtiene las lineas con arroba
		if (/\@/) {
			$content=$_;
			procesarLinea($content);
		}		
	}	
	close(FH);	
}

##################################################
#Realiza una copia a un archivo temporal
##################################################
sub copiarArchivo{
		my ($archivo1,$archivo2)=@_;
		print $archivo1;
		open(ARCHIVO1,"<",$archivo1) or die;
		open(ARCHIVO2,">",$archivo2) or die;		
		while(<ARCHIVO1>){
			print ARCHIVO2 $_;
		}
		close(ARCHIVO1);
		close(ARCHIVO2);			
}

##################################################
#elimina los simbolos que no son utilizados y suplanta por espacios
##################################################
sub eliminarSimbolos{
	my ($archivo1,$archivo2)=@_;
	print $archivo1;
	open(ARCHIVO1,"<",$archivo1) or die;
	open(ARCHIVO2,">",$archivo2) or die;		
	while(<ARCHIVO1>){
		#expresion que suplanta los simbolos cualquiera sea la ocurrencia
		#dentro de la linea leida			
		if(s/<|>|'|"|=|\;|\,|\&gt|\:/ /g){				
			print ARCHIVO2 $_;
		}
	}
	close(ARCHIVO1);
	close(ARCHIVO2);				
}

##################################################
#lee linea por linea obteniendo los patrones correspondientes a cuentas
#de correo
##################################################
sub procesarLinea {
	my ($linea)=@_;	
	my @arreglo;
	@arreglo= split /[\s|\t]+/, $linea;

	open(FINAL,">>",$arFinal) or die;		
	foreach $ar (@arreglo) {
		#obtiene las direcciones de correo por expresion regular.
		if($ar=~ /@(.)+\.[com]?/){
		  print "$ar \n";
		  #imprime en el reporte
		  print FINAL $ar,"\n";			
		}	
	}
	close(ARCHIVO2);
}

##################################################
## ayuda
##################################################
sub ayuda {
	print("##############################################################\n");
	print("Obtiene direcciones de email desde archivos con formato texto \n");
	print("##############################################################\n");
	print("No se ingreso el nombre del archivo \n");
}













