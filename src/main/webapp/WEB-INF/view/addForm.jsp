<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Gun</title>

    <style>

        .error
        {
            color:red;
        }
        #left
        {
            height:440px;
            width:400px;
            background-color:#FCFB08;
            margin-top: 70px;
            margin-left: 312px;
        }
        table
        {
            height: 440px;
            width:480px;
            position: absolute;
            top:150px;
            left:720px;
            background-color:#273746;
            color: white;
        }
        input
        {
            height:30px;
            width: 300px;
            background-color:#F2F4F4 ;
            border-color:#0000;
            align:center;
            margin-top: 8px;
           /* border: none;
            border-bottom: 2px solid red;*/
            background-color: #3CBC8D;
            color: white;

        }
        #rd
        {
            height:10px;
            width:12px;
            padding-left:5px;
        }
        td{
            padding-left: 40px;
            font-size: 15px;
        }
        textarea
        {
            height:40px;
            width: 300px;
            background-color: #3CBC8D;
            color: white;

            margin-top: 8px;
        }

        button
        {
            height: 28px;
            width: 58px;
            background-color: #FCFB08;
            color: #273746;
            border:none;
           margin-left: 365px;

        }
        .t
        {
            top: 160px;
            left:160px;
            font-size: 55px;
            position: absolute;
            font-family: Monospace;
            padding: 25px;
           color:#273746;
        }

    </style>
</head>
<body bgcolor="#dcdcdc">
<jsp:include page="addMenu.jsp"/>
<div id="left">

</div>

<div id="right">
<c:url var="formUrl" value="/saveGun"/>
<form:form action="${formUrl}" method="post" modelAttribute="gun">
<span class="t">
   <pre>         Add
         Gun
       Details</pre>
</span>
    <table>
        <br>
    <tr>
        <td>
    Gun ID: <br>
    <form:input path="id"  placeholder="Enter id"/>
    <form:errors path="id" cssClass="error" />
    </td>
    </tr>

        <tr>
        <td>
    Gun Name: <br>
    <form:input path="gunName" placeholder="Enter Name"/>
    <form:errors path="gunName" cssClass="error" />
    </td>
    </tr>

    <tr>
        <td>
    About Gun : <br>
    <form:textarea path="description"  placeholder="Write about gun"/>
    <form:errors path="description" cssClass="error" />
         </td>
    </tr>

    <tr>
        <td>
    Scope we can use : <br>
    <form:radiobutton path="scope" value="2X" label="2X"  id="rd"/>
    <form:radiobutton path="scope" value="3X" label="3X" id="rd"/>
    <form:radiobutton path="scope" value="4X" label="4X" id="rd"/>
    <form:radiobutton path="scope" value="6X" label="6X" id="rd"/>
    <form:radiobutton path="scope" value="8X" label="8X" id="rd"/>
    <form:radiobutton path="scope" value="all" label="All" id="rd" />
   &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:errors path="scope" cssClass="error" />
        </td>
    </tr>


    <tr>
    <td>
    INR Price : <br>
    <form:input path="priceInr" placeholder="enter price"/>
    <form:errors path="priceInr" cssClass="error" />
    </td>
    </tr>

    <tr>
    <td>
    USD price: <br>
    <form:input path="priceUsd" placeholder="enter price" />
    <form:errors path="priceUsd" cssClass="error" />
    </td>
    </tr>

    <tr>
        <td><button type="submit" value="Submit">Save </button>
    </td>
    </tr>
        <br>
        <tr></tr>

    </table>
</form:form>
</div>
</body>
</html>
