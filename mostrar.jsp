<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/tabla.css">
    <title>Agenda</title>
</head>
<body>
<c:set var="servicio" value=""/>
<c:forEach var="valor" items="${paramValues.serv}">
    <c:set var="servicio" value="${servicio.concat(' ').concat(valor)}"/>
</c:forEach>
<div id="tabla1">
    <table id="tabla2" class="table table-bordered table-primary  table-hover table-striped">
        <thead>
        <tr>
            <th>CODIGO</th>
            <th>SEXO</th>
            <th>SERVICIO</th>
            <th>DEPARTAMENTO</th>
            <th>DESCRIPCION</th>


        </tr>
        </thead>
        <tbody>

        <tr>
            <td><strong><c:out value="${param.co}" /></strong>
            </td>
            <td><strong><c:out value="${param.sex}" /></strong>
            </td>
            <td><c:out value="${servicio}" />
            </td>
            <td><strong><c:out value="${param.depto}" /></strong>
            </td>
            <td><strong><c:out value="${param.men}" /></strong>
            </td>

        </tbody>
    </table>
</div>

<br/>

<div id="vole">
    <a class="btn btn-primary" href="index.html" role="button">volver</a>
</div>
</body>
</html>