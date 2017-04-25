<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleTemperatureProxyid" scope="session" class="com.m2i.formation.TemperatureProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleTemperatureProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleTemperatureProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleTemperatureProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.m2i.formation.Temperature getTemperature10mtemp = sampleTemperatureProxyid.getTemperature();
if(getTemperature10mtemp == null){
%>
<%=getTemperature10mtemp %>
<%
}else{
        if(getTemperature10mtemp!= null){
        String tempreturnp11 = getTemperature10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String who_1id=  request.getParameter("who16");
            java.lang.String who_1idTemp = null;
        if(!who_1id.equals("")){
         who_1idTemp  = who_1id;
        }
        String strCelsius_2id=  request.getParameter("strCelsius18");
            java.lang.String strCelsius_2idTemp = null;
        if(!strCelsius_2id.equals("")){
         strCelsius_2idTemp  = strCelsius_2id;
        }
        double getFahrenheitAsString13mtemp = sampleTemperatureProxyid.getFahrenheitAsString(who_1idTemp,strCelsius_2idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getFahrenheitAsString13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 20:
        gotMethod = true;
        String who_3id=  request.getParameter("who23");
            java.lang.String who_3idTemp = null;
        if(!who_3id.equals("")){
         who_3idTemp  = who_3id;
        }
        String strFahrenheit_4id=  request.getParameter("strFahrenheit25");
            java.lang.String strFahrenheit_4idTemp = null;
        if(!strFahrenheit_4id.equals("")){
         strFahrenheit_4idTemp  = strFahrenheit_4id;
        }
        double getCelsiusAsString20mtemp = sampleTemperatureProxyid.getCelsiusAsString(who_3idTemp,strFahrenheit_4idTemp);
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCelsiusAsString20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
break;
case 27:
        gotMethod = true;
        String who_5id=  request.getParameter("who30");
            java.lang.String who_5idTemp = null;
        if(!who_5id.equals("")){
         who_5idTemp  = who_5id;
        }
        String celsius_6id=  request.getParameter("celsius32");
        double celsius_6idTemp  = Double.parseDouble(celsius_6id);
        double getFahrenheit27mtemp = sampleTemperatureProxyid.getFahrenheit(who_5idTemp,celsius_6idTemp);
        String tempResultreturnp28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getFahrenheit27mtemp));
        %>
        <%= tempResultreturnp28 %>
        <%
break;
case 34:
        gotMethod = true;
        String who_7id=  request.getParameter("who37");
            java.lang.String who_7idTemp = null;
        if(!who_7id.equals("")){
         who_7idTemp  = who_7id;
        }
        String fahrenheit_8id=  request.getParameter("fahrenheit39");
        double fahrenheit_8idTemp  = Double.parseDouble(fahrenheit_8id);
        double getCelsius34mtemp = sampleTemperatureProxyid.getCelsius(who_7idTemp,fahrenheit_8idTemp);
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCelsius34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>