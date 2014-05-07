#!/usr/bin/perl -w
#######################################################
#Realizar una solicitud a una direccion web
#Recibir la respuesta y guardar en archivo
#######################################################

use strict;
use LWP::UserAgent;
use HTTP::Request;

my $urlP="http://127.0.0.1";
my $pathP="temporal.txt";
solicitarPagina($urlP,$pathP);

######################################################
# Trae la pagina y la guarda en un archivo 
######################################################
sub solicitarPagina{
	my ($urlBuscar,$archivo)=@_;
	############################################
	my $ua=LWP::UserAgent->new;
	$ua->agent("Mozilla/5.0 (X11; Linux i686; rv:16.0) Gecko/20100101 Firefox/16.0");
	
	#si tiene proxy habilitar esta linea
#	$ua->proxy(['http','ftp'],'http://192.168.1.1:3128');

	my $req=HTTP::Request->new(GET=>$urlBuscar);
	my $response= $ua->request($req);
	my $content=$response->content();
	############################################
	# abrir archivo segun parametro
	open(FH,">",$archivo);
	############################################
	print FH $content;
	close(FH);
}

