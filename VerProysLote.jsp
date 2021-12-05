<%-- 
    Document   : prueba
    Created on : 29 nov. 2021, 17:26:01
    Author     : Usuario
--%>


<%@page import="modeloDatosTPF.Campo"%>
<%@page import="modeloDatosTPF.Proyecto"%>
<%@page import="modeloDatosTPF.Lote"%>
<%@page import="controlTPF.GestorBuscarCampo"%>
<%@page import="controlTPF.GestorVerProysLot"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Proyectos</title>
    </head>
    <body>
        <%String idCampoElegido = request.getParameter("elegirCampo");%>
        <h1>Proyectos del campo <%=idCampoElegido%></h1>
        <% GestorBuscarCampo gest = new GestorBuscarCampo() ;%>
        <% gest.setCampos(); %>
        <% gest.elegirCampo(idCampoElegido) ;%>
        <% GestorVerProysLot gestVPL = new GestorVerProysLot(gest.getCampoElegido()) ;%>
        <% gestVPL.setLotes() ;%>
        <% if (gestVPL.getLotes().isEmpty()){ %>
            <p>El campo aún no tiene lotes</p>
        <%}else {%>
            <%for (Lote l : gestVPL.getLotes()) {%>
            <ul>
                <li>Lote ID: <%= l.getId()%>
                    <%gestVPL.setLoteElegido(String.valueOf(l.getId()));
                    gestVPL.setProyectos();
                    if (gestVPL.getProyectos().isEmpty()){%>
                        <p>El lote aún no tiene proyectos</p>
                    <%}else{
                        for (Proyecto p : gestVPL.getProyectos()) {%>
                            <ul>
                                <li>
                                    Proyecto ID: <%= p.getId()%>, estado: <%= p.getEstadoproyecto()%>
                                </li>
                            </ul>
                        <% } %>
                    <%}%>
                </li>
            </ul>
            <% } %>
        <%}%>

    </body>
</html>
