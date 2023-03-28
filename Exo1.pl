#! /usr/bin/perl
use strict;
use warnings;


{ 
	 #On affiche ce qu'on demande de l'utilisateur
	print ("Veuillez saisir votre texte - terminez votre saisie en appuyant sur ENTREE - quittez le programme avec Ctrl + z\n>");	

	 my $texte = <STDIN>;  #On attend que l'utilisateur rentre le texte et appuie sur ENTREE
	 
	 chomp ($texte); #On supprime \n car l'utilisteur a tapé sur entrée
	 		
	if($texte =~ s/ (\w+a) / <$1> /)
	{
		print("Mot reconnu: |$texte|\n");
		print('$1'." contient \'$1\'");
	}
	elsif($texte =~ s/ (a) / <$1> /)
	{
		print("Mot reconnu: |$texte|\n");
		print('$1'." contient \'$1\'");
	}
	elsif($texte =~ s/^(a)$/<$1>/)
	{
		print("Mot reconnu: |$texte|\n");
		print('$1'." contient \'$1\'");
	}
	elsif($texte =~ s/(\w+a$)/<$1>/)
	{
		print("Mot reconnu: |$texte|\n");
		print('$1'." contient \'$1\'");
	}
	else
	{
		print("Aucun mot reconnu: | |");
	}
			
		 	
	
			
		

}

