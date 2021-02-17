<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title> Update Success Msg</title>

</head>
<body>
<h2>${msg}</h2>
<hr />
<br>

<table>
    <tr>
        <th>Gun Id</th>
        <td>${updt.id}</td>
    </tr>
    <tr>
        <th valign="top">Name</th>
        <td>${updt.gunName}</td>
    </tr>

    <tr>
        <th>About Gun</th>
        <td>${updt.description}</td>
    </tr>


    <tr>
        <th>Scope</th>
        <td>${updt.scope}</td>
    </tr>
    <tr>
        <th>INR Price</th>
        <td>${updt.priceInr}</td>
    </tr>
    <tr>
        <th>USD Price</th>
        <td>${updt.priceUsd}</td>
    </tr>

    <tr>
        <td> <button value="HOME"> <a href="${pageContext.request.contextPath}/"></a></button> </td>
        <td> <button value="update more.."> <a href="${pageContext.request.contextPath}/allGun"></a></button></td>
        <td><input action="action" type="button" onclick="history.go(-1);" value="Back" /></td>
    </tr>

</table>

<br>
<br>

</body>
</html>