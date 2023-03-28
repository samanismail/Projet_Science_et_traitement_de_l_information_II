#! /usr/bin/perl
use strict;
use warnings;


{ 

  
  my $fich = $ARGV[0];  # prendre le premier argument
  my $lec;      #le fichier en lecture
  my $ligne;    #la ligne qui est en train d'être lue
  my $op;       #le output en ouverture
  my $compteur=0; # le compteur des changements éfectués
	
  

  open ( $lec, "<", $fich ) or die "erreur sur $fich";
  
  if($fich =~ /(.+)\.(.+)/)
  {
	$fich=$1;
	
  }
  my $outPut= "$fich.out"; 
 open( $op , ">",$outPut  ) or die "erreur sur $outPut";
  
  while ( <$lec> )
        { 
          $ligne=$_;
            
          if ( $ligne =~ s/Fred/Larry/gi)
              { 
                print $op "$ligne\n";
              }
              
            $compteur = $compteur + 1;
                
         }
         
         print("Fichier généré: '$outPut'\n");
         print("Remplacement effectuées: '$compteur'\n");

  close($lec);

}

