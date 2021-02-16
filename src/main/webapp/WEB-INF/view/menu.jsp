<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    a:link, a:visited {
        background-color: dimgrey;
        color: white;
        padding: 14px 25px;
        text-align: center;
        font-size: 20px;
        text-decoration: none;
        display: inline-block;
        border-bottom-right-radius: 60px;
        border-top-left-radius: 60px;
    }

    a:hover, a:active {
        background-color: palevioletred;
    }
</style>


<div style="border: 1px solid #ccc;padding:10px;margin-bottom:20px;">

    <a href="${pageContext.request.contextPath}/">Home</a>

     &nbsp;&nbsp;

    <a href="${pageContext.request.contextPath}/addGun">AddGun</a>

     &nbsp;&nbsp;

    <a href="${pageContext.request.contextPath}/allGun">Gun list</a>
    &nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/getInXml">Gun list in XML</a>
    &nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/getInObj">Gun list in Obj</a>

    <%--<c:if test="${pageContext.request.userPrincipal.name != null}">

        | &nbsp;
        <a href="${pageContext.request.contextPath}/logout">Logout</a>

    </c:if>--%>

</div>