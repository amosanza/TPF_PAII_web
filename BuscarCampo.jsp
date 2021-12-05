<%-- 
    Document   : BuscarCampo
    Created on : 29 nov. 2021, 18:03:27
    Author     : Usuario
--%>

<%@page import="controlTPF.GestorBuscarCampo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Búsqueda de Campo</title>
        <script type="text/javascript" >
            window.onbeforeunload = function () {
                window.open('Cierre.jsp','_blank');
            };
        </script>
    </head>
    <body>
        <%! GestorBuscarCampo gest = new GestorBuscarCampo() ;%>
        <% gest.setCampos(); %>
        <c:set var = "campos" value = "<%= gest.getCampos() %>" />
        <form action="VerProysLote.jsp" method="POST" target="_blank" >
            <h1>Selector de campos</h1>
            <p>Elija el campo del cual quiere ver los proyectos</p>
            <select name="elegirCampo">
                <c:forEach items="${campos}" var="camp">
                    <option value="${camp.id}"> ID:  ${camp.id}, estado: ${camp.estadocampo} </option>
                </c:forEach>
            </select>
            <table>
                <tr>
                    <td><button id="elegir" type="submit">Elegir</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
