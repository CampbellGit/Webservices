/**
 * Temperature.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.m2i.formation;

public interface Temperature extends java.rmi.Remote {
    public double getFahrenheit(double celsius) throws java.rmi.RemoteException;
    public double getCelsius(double fahrenheit) throws java.rmi.RemoteException;
}
