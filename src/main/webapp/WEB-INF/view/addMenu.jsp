


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    a:link, a:visited {
        background-color: #808B96;
        color: white;
        padding: 14px 25px;
        text-align: center;
        font-size: 20px;
        text-decoration: none;
        display: inline-block;
        border-radius: 15px;
    }
    #home
    {
        position: absolute;
        margin-left: 500px;
        top:25px;
        font-size: 30px;
        font-weight: bold;
    }
    a:hover, a:active {
        background-color: indianred;
    }

    #signUp{
        position: absolute;
        right:220px;
        border-radius: 40px;
        background-color: #1D8348;
    }

    #login
    {
        position: absolute;
        right: 15px;
        border-radius: 40px;
        background-color:#1D8348;

    }


</style>

<%--<style>
    a:link, a:visited {
        background-color: dimgrey;
        color: white;
        padding: 14px 25px;
        text-align: center;
        font-size: 20px;
        text-decoration: none;
        display: inline-block;
    }

    a:hover, a:active {
        background-color: indianred;
    }
</style>--%>

<div style="border: 1px solid #ccc;padding:10px;margin-bottom:10px;">

    <a href="${pageContext.request.contextPath}/">Home</a>
    &nbsp;
    <a href="${pageContext.request.contextPath}/getInObj" id="signUp">Gun list in Obj</a>

    &nbsp; <font id="home">Registration</font>
    <a href="${pageContext.request.contextPath}/allGun">Gun list</a>
    &nbsp;
    <%--<a href="${pageContext.request.contextPath}/addGun">Add Gun</a>--%>
    &nbsp;
    <a href="${pageContext.request.contextPath}/getInXml" id="login">Gun list in XML</a>


</div>