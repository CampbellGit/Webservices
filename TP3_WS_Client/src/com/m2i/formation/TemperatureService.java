/**
 * TemperatureService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.m2i.formation;

public interface TemperatureService extends javax.xml.rpc.Service {
    public java.lang.String getTemperatureAddress();

    public com.m2i.formation.Temperature getTemperature() throws javax.xml.rpc.ServiceException;

    public com.m2i.formation.Temperature getTemperature(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
