<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Gun</title>
    <style type="text/css">
        .error {
            color: red;
        }


        table {
            border: 1px solid black;
            height: 550px;
            width: 600px;
            border-inline-end-color: cornflowerblue;
            border-inline-start-color: cornflowerblue;
        }
        table{
            border-collapse:collapse;
        }
        td,th{

            border: 1px solid black;
        }

       th, td{
            text-align: center;
           padding: 12px;

        }

        a:link, a:visited {
            background-color: dimgrey;
            color: white;
            padding: 14px 25px;
            text-align: center;
            font-size: 20px;
            text-decoration: none;
            display: inline-block;
            position: absolute;
            top:25px;
            left:15px;
        }

        a:hover, a:active {
            background-color: indianred;
        }

        #lastRow{
            background-color: darkseagreen;

        }
    </style>


</head>
<body bgcolor="#a9a9a9">
<center>
<h1>Update Form</h1>
    <a href="${pageContext.request.contextPath}/">Home</a>
<hr />
    <br>
<c:url var="formUrl" value="/updateSave"/>
<form:form action="${formUrl}" method="post" modelAttribute="updt">
    <table>
        <tr>
            <th>Gun Id</th>
            <td>
                <form:input path="id" />
                <form:errors path="id" cssClass="error" />
            </td>
        </tr>
        <tr>
            <th valign="top">Guns</th>
            <td>
                <form:select path="gunName" multiple="true">
                    <form:option value="AKM">AKM</form:option>
                    <form:option value="M416">M416</form:option>
                    <form:option value="Kar98">Kar98</form:option>
                    <form:option value="M249">M249</form:option>
                    <form:option value="AWM">AWM</form:option>
                    <form:option value="Groza">Groza</form:option>
                </form:select>
                <form:errors path="gunName" cssClass="error" />
            </td>
        </tr>

        <tr>
            <th>About Gun</th>
            <td>
                <form:input path="description" />
                <form:errors path="description" cssClass="error" />
            </td>
        </tr>
        <tr>
            <th>Scope we can use with Guns</th>
            <td>
                <form:radiobutton path="scope" value="2X" label="2X" />
                <form:radiobutton path="scope" value="3X" label="3X" />
                <form:radiobutton path="scope" value="3X" label="4X" />
                <form:radiobutton path="scope" value="3X" label="6X" />
                <form:radiobutton path="scope" value="3X" label="8X" />
                <form:radiobutton path="scope" value="3X" label="All" />
                <form:errors path="scope" cssClass="error" />
            </td>
        </tr>

        <tr>
            <th>INR Price</th>
            <td>
                <form:input path="priceInr" />
                <form:errors path="priceInr" cssClass="error" />
            </td>
        </tr>

        <tr>
            <th>USD Price</th>
            <td>
                <form:input path="priceUsd" />
                <form:errors path="priceUsd" cssClass="error" />
            </td>
        </tr>

        <tr id="lastRow">
            <td><button type="submit">Submit</button></td>
        <td><input action="action" type="button" onclick="history.go(-1);"  value="Back"/></td>
        </tr>
    </table>
</form:form>
</center>
</body>
</html>