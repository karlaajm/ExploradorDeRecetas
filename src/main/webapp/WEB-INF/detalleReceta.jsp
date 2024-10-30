<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ingredientes</title>
        <link rel="stylesheet" href="/estilos/Style.css">
    </head>
    <body>
        <h1 class="nombreReceta">${nombreReceta}</h1>

        <c:if test="${not empty ingredientesRecetas}">
            <h2>Ingredientes:</h2>
            <ul class="ingredienteReceta">
                <c:forEach var="ingredientes" items="${ingredientesRecetas}">
                    <li>${ingredientes}</li>
                </c:forEach>
            </ul>
        </c:if>

        <c:if test="${not empty mensajeError}">
              <script>
                document.addEventListener("DOMContentLoaded", function() {
                    const element = document.querySelector('.nombreReceta');
                       element.remove();
                });
            </script>
            <p class="error">${mensajeError}</p>
        </c:if>
    </body>
</html>