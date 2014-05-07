#!/usr/bin/perl
use 5.006;
use strict;
use URI;

#recibe como parametro la URL a verificar
my $direccion=$ARGV[$1];

print "URL => $direccion \n";
verURL($direccion);
#a $direccion le asigno un valor que no es valido
#para probar la funcion
$direccion="pagina.com";
if (verificarSintaxisURL($direccion)){
	print " PROGRAMA PRINCIPAL => URL VALIDA\n";
}else{
	print " PROGRAMA PRINCIPAL => URL NO VALIDA\n";
}
###### FIN PRINCIPAL #####

#################################################
#funcion de prueba tomada de O'Reilly Perl & LWP, capitulo 4 URLs
sub verURL{
	my ($direccionE)=@_;
	my $urlE = URI->new($direccionE);
	#ejemplo de cadena URL completa, con todos sus atributos
	# my $urlE = URI->new('http://user:pass@example.int:4345/hello.php?user=12&ninguna=1');
	print "===== PARTES DE LA URL=====\n";
	print "Scheme: ", $urlE->scheme( ), "\n";
	print "Userinfo: ", $urlE->userinfo( ), "\n";
	print "Hostname: ", $urlE->host( ), "\n";
	print "Port: ", $urlE->port( ), "\n";
	print "Path: ", $urlE->path( ), "\n";
	print "Query: ", $urlE->query( ), "\n";

}

##################################################
#verifica que la url contenga http o https
#verifica que tenga la parte del host
#evalua la seccion, si ocurren errores devuelve falso
##################################################
#devuelve 0 cuando es falso y 1 cuando es verdadero
sub verificarSintaxisURL{
	my ($direccionE)=@_;
	my $retorno=1; #comienza con verdadero
	print "===== VERIFICAR SINTAXIS DE LA URL=====\n";
	eval{
		my $urlE = URI->new($direccionE);
		if (defined($urlE->scheme( ))){
			if(($urlE->scheme( )=~ /http/)||($urlE->scheme( )=~ /https/)){
				print "La URL contiene => http|https \n";
			}else{
				$retorno=0;
			}
		}	
		if (defined($urlE->host( ))){
			if($urlE->host( ) eq ""){
				$retorno=0;
			}
			print "La URL tiene Host => \n";		
		}else{
			print "La URL NO TIENE Host => \n";
			$retorno=0;
		}
	};
	if($@){
		print "Se encontro un error durante el tratamiento de la URL, URL NO VALIDA\n";
		$retorno=0;
	}
	$retorno; 
}

###### FIN DEL PROGRAMA #####