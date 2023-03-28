#! /usr/bin/perl
use strict;
use warnings;


{ 
	my $nb = $ARGV[0];  
	my @div;


	if($#ARGV == 0 && $nb =~ /^\d+$/)
	{
		
		print("Vérification du nombre <$nb>\n");
		 @div = diviseurs($nb);
		if($#div == -1)
		{
			print("$nb est un nombre premier");
		}
		else
		{
			print "$nb est divisible par ";
			for (my $i=0; $i <= $#div; $i++) 
			{
		    		print "$div[$i] ";
			}
		}
		
	}
	else
	{
		print("Vérification du nombre <$nb>\n");
		print("Vous n'avez pas saisi un nombre");

	}
		


	sub diviseurs
	{
		my $nb = shift;
		my @diviseurs = ();

		foreach my $diviseur (2 .. ($nb/2)) 
		{
			push @diviseurs, $diviseur unless $nb % $diviseur;
		}
		return @diviseurs;
	}



}