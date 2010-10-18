<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <f:view>
        <f:loadBundle basename="messages" var="msgs"/>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title><h:outputText value="#{msgs.titulo_sistema}"/></title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
@import "slidertron.css";
</style>
</head>
<body>
    <div id="logo">
         <h1><h:outputText value="#{msgs.nombre_sistema}"/></h1>
    </div>
<div id="header">
        <%@ include file="/common/menu_include.jsp"%>
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->
<div id="page">
	<div id="page-bgtop">
		<div id="content">
                    <div class="post">
                        <h2 class="title"><a href="#">Inicio</a></h2>
                      <div class="entry"></div>
                    </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
                    <ul>
                            <li>
                                    <h2>Autenticaci&oacute;n</h2>
                                    <p>
                                        <div id="usuario" >
                                        <div>
                                        Bienvenid@: Mayra M&aacute;rquez<br />
                                        <a href="index.jsp">Cerrar Sesi&oacute;n</a>
                                        </div>
                                        </div>
                                    </p>
                            </li>
                    </ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
</div>
<!-- end #footer -->
</body>
 </f:view>
</html>

