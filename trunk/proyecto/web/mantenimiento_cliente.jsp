<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <f:view>
        <f:loadBundle basename="messages" var="msgs"/>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
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
                        <h2 class="title"><a href="#">Gesti&oacute;n Clientes</a></h2>
                        <div class="entry">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Nombre:</td><td style="padding:2px;"><input name='tbxNombre' type='text'/></td>
                                </tr>
                                <tr>
                                <td>Apellido Paterno:</td><td style="padding:2px;"><input name="tbxApePaterno" type="text"/></td>
                                </tr>
                                <tr>
                                <td>Apellido Materno:</td>
                                <td style="padding:2px;"><input name="tbxApeMaterno" type="text"/></td></tr>
                                <tr>
                                <td>DNI:</td>
                                <td style="padding:2px;"><input name="tbxDNI" type="text"/></td></tr>
                                <tr>
                                <td>Tel&eacute;fono:</td>
                                <td style="padding:2px;"><input name="tbxTelefono" type="text"/></td></tr>
                                <tr>
                                <td>Email:</td>
                                <td style="padding:2px;"><input name="tbxEmail" type="text"/></td></tr>
                                <tr>
                                <td>Tipo Tarjeta:</td>
                                <td style="padding:2px;">
                                <select>
                                <option>Cl&aacute;sica</option>
                                <option>Premium</option>
                                </select>
                                </td>
                                </tr>
                                <tr>
                                <td>&nbsp;</td>
                                </tr>
                                <tr><td></td><td><input type="submit" value="Guardar" /></td></tr>
                                <tr><td>&nbsp;</td>
                                </tr>
                                </table>

                                
                                <table class="table" border = "1" cellspading = "0" cellspacing = "0" width="100%">
                                <thead>
                                <tr><th width="103">Nombre</th><th width="190">Apellidos</th><th width="94">Tipo Tarjeta</th><th>&nbsp;</th></tr>
                                </thead>
                                <tr><td width="103">Pedro</td><td width="190">Rios Pino</td><td width="94">Clasica</td><td width="95"><a href="#">Eliminar</a></td></tr>
                                <tr><td width="103">Johana</td><td width="190">Herrera Quintanilla</td><td width="94">Premium</td><td><a href="#">Eliminar</a></td></tr>
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
