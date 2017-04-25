package com.m2i.formation;

public class Temperature {
 public double getFahrenheit(double celsius) {
	 return celsius *1.8 +32;
 }
 
 public double getCelsius (double fahrenheit){
	 return (fahrenheit - 32) / 1.8;
 }
 
}
