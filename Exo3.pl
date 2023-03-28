#! /usr/bin/perl
use strict;
use warnings;

my $reponse=-1; # la réponse de l'utilisateur -1 quand l'utilisateur n'a pas encore mis de reponse
my $random = int(rand(100))+1;


while ( int($reponse) != $random)
{

	print ("Veuillez saisir un nombre entre 1 et 100:: "); #On affiche ce qu'on demande de l'utilisateur


	 $reponse = <STDIN>;  #On attend que l'utilisateur rentre valeur entre 1 et 100
	 chomp ($reponse); # on enléve le \n de la réponse
	 

	last if("$reponse" =~ /^quitter$/i);
	
	last if("$reponse" eq "");
	
	if($reponse < $random && $reponse >= 1 )
	{
		print("Trop petit. Veuillez réessayer !\n");
	}
	elsif($reponse > $random && $reponse <=100)
	{
		print("Trop grand. Veuillez réessayer !\n");
	}
	elsif($reponse < 1 ||$reponse > 100 )
	{
		print("Vous avez mis un nombre hors l'intervalle entre 1 et 100 !\n");
	}
	elsif($reponse == $random)
	{
		print("Bravo vous avez trouvé !\n");
	}

}
 		
		
		 	
	
