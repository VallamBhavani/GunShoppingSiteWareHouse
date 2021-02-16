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
    a{
        margin-left: 20px;
        margin-top:10px;
    }

    a:hover, a:active {
        background-color: palevioletred;
    }
    #xml
    { position: absolute;
        right: 30px;
    }
    #home
    {
        position: absolute;
        margin-left:295px;
        top:30px;
        font-size:20px;

    }
    #nav
    {
        background-color:#29B6F6;
        width:1519px;
        height:75px;
    }
</style>


<%--<div style="border: 2px solid #29B6F6;padding:10px;margin-bottom:20px;">--%>
<div id="nav">

    <a href="${pageContext.request.contextPath}/">Home</a>

     &nbsp;&nbsp;

    <a href="${pageContext.request.contextPath}/addGun">AddGun</a>

     &nbsp;&nbsp;

    <a href="${pageContext.request.contextPath}/allGunData">Gun list</a>

    <font id="home" size="23px"><b>Saved With Data </b></font>&nbsp;&nbsp;
  <span id="xml"> <a  href="${pageContext.request.contextPath}/getInXml">Gun list in XML</a></span>
    &nbsp;&nbsp;


</div>