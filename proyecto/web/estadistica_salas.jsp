<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <f:view>
        <f:loadBundle basename="messages" var="msgs"/>

<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title><h:outputText value="#{msgs.titulo_sistema}"/></title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
                        <h2 class="title"><a href="#">Estad&iacute;sticas butaca por sala</a></h2>
                        <div class="entry">
                            <table class="table" border = "1" cellpading = "0" cellspacing = "0" width="100%">
                            <thead>
                            <tr><th width="100">Pel&iacute;cula</th><th width="50">Sala</th><th width="50">Butacas</th><th width="30">Vendidas</th><th width="30">Porcentaje</th></tr>
                            </thead>
                            <tr><td width="100">El &Uacute;ltimo Maestro del Aire</td><td width="50">4</td><td width="50">40</td><td width="50">30</td><td>10%</td></tr>
                            <tr><td width="100">Karate Kid</td><td width="50">2</td><td width="50">45</td><td>10</td><td>10%</td></tr>
                            </table>
                            <table>
                            <tr><td>&nbsp;</td></tr>
                            <tr><td>
                            <input type="submit" value="Volver" /></td></tr>
                            </table>
                        </div>
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
