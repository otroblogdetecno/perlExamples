#!/usr/bin/perl 
#######################################################
# INICIO DEL SCRIPT -> CORTAR AQUI
# recibirComandos.pl
#######################################################
use strict;
use warnings;
 
use Getopt::Long;
 
# Lee los parámetros en una variable recibir_parametros
my $recibir_parametros = {};
GetOptions($recibir_parametros,
  'd:s',
  'a:s',
  'ayuda',
);
 
# Si se ha especificado el parámetro 'ayuda', imprimir la ayuda y terminar
$recibir_parametros->{ayuda} && imprimir_ayuda( 0 );

 
# Los parametros son mutuamente excluyentes
# si ambos estan definidos se corta la ejecucion
# evita estes tipo de llamadas ej: archivo.pl -a algo -d otracosa
if ( defined $recibir_parametros->{d} && defined $recibir_parametros->{a}) {
    imprimir_ayuda( 1 );
}

#este modelo acepta solamente uno u otro valor
#si se definio el paramaetro -d pero el valor viene vacio imprime ayuda
if( defined $recibir_parametros->{d}) {
  if(!($recibir_parametros->{d} eq "")){
      print "Se recibio: -a $recibir_parametros->{d}\n";
      #################################################
      # llamar procedimiento hacer algo con -d
      #################################################            
  }else{
      imprimir_ayuda( 1 );
  }
}else 
{
  if( defined $recibir_parametros->{a}) {
    if(!($recibir_parametros->{a} eq "")){
      print "Se recibio: -a $recibir_parametros->{a}\n";
      #################################################
      # llamar procedimiento hacer algo con -a
      #################################################      
    }else{
      imprimir_ayuda( 1 );
    }
  }else{
    imprimir_ayuda( 1 );
  }
}


 
sub imprimir_ayuda {
    my $exit_status = shift;
 
    print <<"END"
 
    Uso: $0 [-d ruta directorio_busqueda | -a archivo_con_texto]
 
    Obtiene direcciones de correo desde un directorio con archivos o 
    desde un archivo ingresado por el usuario.
       
    Los parámetros son obligatorios si no se indica lo contrario:
 
          -d     procesa todos los archivos de un directorio
          -a     procesa solamente un archivo especificado          
          -ayuda Imprime esta ayuda
 
          Los parametros -d y -a son excluyentes entre si!!
           
END
;

    exit $exit_status;
}

#######################################################
# FIN DEL SCRIPT -> CORTAR AQUI
# recibirComandos.pl
#######################################################