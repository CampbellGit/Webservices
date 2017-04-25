package com.m2i.formation;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

public class TestClientWS {

	public static void main(String[] args) throws ServiceException, RemoteException {
		// TODO Auto-generated method stub
		/*String who = "Domhnall";
		double celsius = 51;

		TemperatureService locator = new TemperatureServiceLocator();
		Temperature temp = locator.getTemperature();

		for (int i = 0; i < 5; i++) {
			System.out.println(temp.getFahrenheit(who, celsius) + " Appel numéro : " + i);
			celsius++;
			*/
		
		int taille = 200;
		Personne personne = new PersonneProxy();
		//PersonneService locator = new PersonneServiceLocator();
		//Personne temp = locator.getPersonne();

		System.out.println(personne.getPoids(taille));
		}

	}


