/**
 * Temperature.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.m2i.formation;

public interface Temperature extends java.rmi.Remote {
    public double getFahrenheitAsString(java.lang.String who, java.lang.String strCelsius) throws java.rmi.RemoteException;
    public double getCelsiusAsString(java.lang.String who, java.lang.String strFahrenheit) throws java.rmi.RemoteException;
    public double getFahrenheit(java.lang.String who, double celsius) throws java.rmi.RemoteException;
    public double getCelsius(java.lang.String who, double fahrenheit) throws java.rmi.RemoteException;
}
