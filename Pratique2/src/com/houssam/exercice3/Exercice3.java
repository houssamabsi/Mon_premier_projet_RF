package com.houssam.exercice3;

import java.util.ArrayList;

public class Exercice3 {

	public static void main(String[] args) {
		int i,som=0;
		ArrayList<Integer> divisibleOf5 = new ArrayList<Integer>();
		ArrayList<Integer> divisibleOf2 = new ArrayList<Integer>();
	      
		for (i=1 ; i<=100; i++) {
			som=som+i; 
			//System.out.println(som +"      "+i);	
			if (i % 5 == 0)
				divisibleOf5.add(i);
				//System.out.println("Les nombres divisible par 5 sont:\n" + i);
			if (i % 2 == 0)
				divisibleOf2.add(i);
				//System.out.println("Les nombres divisible par 2 sont:\n" + i);
			
	}
		System.out.println("La somme des 100 premiers nombres :" + som);	
		System.out.println("Les nombres divisible par 5: " + divisibleOf5.toString()); 
		System.out.println("Les nombres divisible par 2: " + divisibleOf2.toString());
  }

}
