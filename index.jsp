<%-- 
    Document   : index
    Created on : 3 dic. 2021, 17:46:24
    Author     : Usuario
--%>

<%@page import="modeloDatosTPF.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% HibernateUtil.buildSessionFactory(); %>
        <jsp:include page="BuscarCampo.jsp"></jsp:include>
    </body>
</html>
