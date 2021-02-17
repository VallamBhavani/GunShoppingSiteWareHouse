<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bhavani
  Date: 08-07-2020
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        tr:hover
        {
            background-color: lightcoral;
        }
        th {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            font-size: 18px;
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: left;
        }

        #b
        {
            position: absolute;
            top:25px;
            left:15px;
        }
        a{
            text-decoration: none;
            color: darkblue;
        }
        td {
            border-bottom: 1px solid #ddd;
            padding: 15px;
            text-align: center;
        }

        table {
            border: 1px solid black;
            height: 550px;
            width: 500px;
        }
        #id
        {
            background-color: #FCFB08;
        }

    </style>

</head>
<body>
<center>

    <h1> ALL GUNS DATA</h1>
    <button id="b"> <a href="${pageContext.request.contextPath}/">HOME </a></button>
    <hr/>
<table>
    <tr>
        <th >Id</th>
        <th >Gun Name</th>
        <th >Update</th>
        <th >Delete</th>
    </tr>

    <for:forEach var="dt" items="${gunData}">

        <tr>
            <td><a id="id" href="${pageContext.request.contextPath}/getGunDataById/${dt.id}">${dt.id}</a></td>
            <td>${dt.gunName}</td>
            <td><a href="${pageContext.request.contextPath}/updateGun/${dt.id}"> Update</a></td>
            <td><a href="${pageContext.request.contextPath}/deleteGun/${dt.id}">Delete</a></td>
        </tr>
    </for:forEach>
</table>
</center>
</body>
</html>
