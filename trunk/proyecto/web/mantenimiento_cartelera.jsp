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
                        <h2 class="title"><a href="#">Gesti&oacute;n Cartelera</a></h2>
                        <div class="entry">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Pel&iacute;cula:</td>
                                    <td style="padding:2px;">
                                        <select name="cbxPelicula">
                                            <option>Los Indestructibles</option>
                                            <option>El &Uacute;ltimo Maestro del Aire</option>
                                            <option>Casi Embarazada</option>
                                            <option>Enamorada de mi Ex</option>
                                            <option>Como Perros y Gatos 2</option>
                                            <option>Una Loca Pel&iacute;cula de Vampiros</option>
                                        </select>
                                    </td>
                                </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            <tr>
                            <td style="vertical-align:top;" colspan = "2">
                            <fieldset>
                            <legend>Selecci&oacute;n de horarios</legend>
                            <table border = 0>
                            <tr><td>Sala</td><td width="70"><select>
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="1">5</option>
                                            <option value="1">6</option>
                                            </select>
                            </td>
                            <td>Hora</td>
                            <td><input type="text" style="width:50px;"/></td>
                            <td><input type="button" value = "Agregar"/></td>
                            </tr>
                            <tr>
                            <td>Estreno:</td><td style="padding:2px;"><input name="tbxApeMaterno" type="checkbox"/></td></tr>

                            </table>
                            </fieldset>
                            </td><td style="padding:2px;">
                            </td>
                            </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            </table>
                            <table class="table" border = "1" cellspading = "0" cellspacing = "0" width="100%">
                            <thead>
                            <tr><th width="100">Pel&iacute;cula</th><th width="50">Sala</th><th width="50">Hora</th><th>&nbsp;</th></tr>
                            </thead>
                            <tr><td width="100">El &Uacute;ltimo Maestro del Aire</td><td width="50">4</td><td width="50">20:30</td><td width="50"><a href="#">Eliminar</a></td></tr>
                            <tr><td width="100">Karate Kid</td><td width="50">2</td><td width="50">17:15</td><td><a href="#">Eliminar</a></td></tr>
                            </table>
                            <table>
                            <tr><td>&nbsp;</td>   </tr>
                            <tr><td>
                            <input type="submit" value="Guardar" /></td></tr>
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
