package com.m2i.formation;

public class TemperatureProxy implements com.m2i.formation.Temperature {
  private String _endpoint = null;
  private com.m2i.formation.Temperature temperature = null;
  
  public TemperatureProxy() {
    _initTemperatureProxy();
  }
  
  public TemperatureProxy(String endpoint) {
    _endpoint = endpoint;
    _initTemperatureProxy();
  }
  
  private void _initTemperatureProxy() {
    try {
      temperature = (new com.m2i.formation.TemperatureServiceLocator()).getTemperature();
      if (temperature != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)temperature)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)temperature)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (temperature != null)
      ((javax.xml.rpc.Stub)temperature)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.m2i.formation.Temperature getTemperature() {
    if (temperature == null)
      _initTemperatureProxy();
    return temperature;
  }
  
  public double getFahrenheitAsString(java.lang.String who, java.lang.String strCelsius) throws java.rmi.RemoteException{
    if (temperature == null)
      _initTemperatureProxy();
    return temperature.getFahrenheitAsString(who, strCelsius);
  }
  
  public double getCelsiusAsString(java.lang.String who, java.lang.String strFahrenheit) throws java.rmi.RemoteException{
    if (temperature == null)
      _initTemperatureProxy();
    return temperature.getCelsiusAsString(who, strFahrenheit);
  }
  
  public double getFahrenheit(java.lang.String who, double celsius) throws java.rmi.RemoteException{
    if (temperature == null)
      _initTemperatureProxy();
    return temperature.getFahrenheit(who, celsius);
  }
  
  public double getCelsius(java.lang.String who, double fahrenheit) throws java.rmi.RemoteException{
    if (temperature == null)
      _initTemperatureProxy();
    return temperature.getCelsius(who, fahrenheit);
  }
  
  
}