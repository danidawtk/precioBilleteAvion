<%-- 
    Document   : muestraDatos
    Created on : 24-ene-2021, 10:57:31
    Author     : Donus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Muestra Datos</h1>
        <%@ page import="negocios.calculaImporte" %>
        <h1>Muestra Datos</h1>
        <% calculaImporte calc = (calculaImporte) request.getAttribute("calcula"); %>
        <h1>Datos de la reserva</h1>
        <h2>Fecha vuelo: <%= calc.getFechaVuelo() %></h2><br>
        
        <h2>Importe Total: <%= calc.CalculaImporte() %></h2><br>
        <h2>Mes <%= calc.getMes() %></h2><br>
    </body>
</html>
