<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Recetas</title>
        <link href="/estilos/Style.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="recetaTitulo">Directorio de recetas:</h1>
        <ul>
            <c:forEach var="recetas" items="${listaRecetas}">
                <li>${recetas}</li>
            </c:forEach>
        </ul>
    </body>
</html>