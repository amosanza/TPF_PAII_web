<%-- 
    Document   : Cierre
    Created on : 4 dic. 2021, 13:26:26
    Author     : Usuario
--%>

<%@page import="modeloDatosTPF.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cierre</title>
    </head>
    <body>
        <h1>Cierre de programa</h1>
        <p>Gracias por haber utilizado el sistema de gestión de Agro S.R.L.</p>
        <% HibernateUtil.openSessionAndBindToThread();
        HibernateUtil.closeSessionFactory();%>
    </body>
</html>
