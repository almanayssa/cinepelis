
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
        <h1><a href="#">Cinepelis </a></h1>
    </div>
<div id="header">
        <h:form id="menuForm">
	<div id="menu">
		<ul>
                    <li><a href="mantenimiento_cartelera.jsp">Gesti&oacute;n Cartelera</a></li>
                    <li>
                        <h:commandLink id="linkClientes" action="#{clienteBean.initClientes}">
                            <h:outputText value="#{msgs.link_gclientes}"/>
                        </h:commandLink>


                    </li>
                    <li><a href="mantenimiento_pelicula.jsp">Gesti&oacute;n Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estad&iacute;sticas</a></li>
		</ul>
	</div>
        </h:form>
	<!-- end #menu -->

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
                                    <h2>Autenticacion</h2>
                                    <p>
                                        <div id="usuario" >
                                        <div>
                                        Bienvenid@: Mayra Marquez<br />
                                        <a href="index.jsp">Cerrar Sesion</a>
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

