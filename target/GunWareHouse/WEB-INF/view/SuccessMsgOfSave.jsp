<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Success</title>

</head>
<body>

<jsp:include page="menu.jsp"/>
<h2>${msg}</h2>
<br>
<center>
<table bgcolor="#a9a9a9" width="350px" height="300px">
    <tr>
        <th>Gun Id</th>
        <td>${gun.id}</td>
    </tr>
    <tr>
        <th>Name</th>
        <td>${gun.gunName}</td>
    </tr>
    <tr>
        <th>About Gun</th>
        <td>${gun.description}</td>
    </tr>
    <tr>
        <th>Scope</th>
        <td>${gun.scope}</td>
    </tr>
    <tr>
        <th>INR Price</th>
        <td>${gun.priceInr}</td>
    </tr>
    <tr>
        <th>USD Price</th>
        <td>${gun.priceUsd}</td>
    </tr>


   <%-- <tr>
    &lt;%&ndash;<td> <button> <a href="${pageContext.request.contextPath}/"/>HOME</button> </td>
    <td> <button> <a href="${pageContext.request.contextPath}/addGun"/> Add More...</button></td>&ndash;%&gt;
     <td>   <input action="action" type="button" value="Back" onclick="history.go(-1);" value="Back"/></td>
    </tr>--%>


</table>
</center>
</body>
</html>