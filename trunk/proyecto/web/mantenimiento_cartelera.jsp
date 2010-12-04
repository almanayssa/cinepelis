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
                                <legend style="color: #FFFFFF">Selecci&oacute;n de horarios</legend>
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
                            <td>Hora:</td>
                            <td><select>
                                            <option value="11:00">11:00</option>
                                            <option value="11:30">11:30</option>
                                            <option value="12:00">12:00</option>
                                            <option value="12:30">12:30</option>
                                            <option value="13:00">13:00</option>
                                            <option value="13:30">13:30</option>
                                            <option value="14:00">14:00</option>
                                            <option value="14:30">14:30</option>
                                            <option value="15:00">15:00</option>
                                            <option value="15:30">15:30</option>
                                            <option value="1">16:00</option>
                                            <option value="1">16:30</option>
                                            <option value="1">17:00</option>
                                            <option value="1">17:30</option>
                                            <option value="1">18:00</option>
                                            <option value="1">18:30</option>
                                            <option value="1">19:00</option>
                                            <option value="1">19:30</option>
                                            <option value="1">20:00</option>
                                            <option value="1">20:30</option>
                                            <option value="1">21:00</option>
                                            <option value="1">21:30</option>
                                            <option value="1">22:00</option>
                                            </select></td>
                            <td><input type="button" value = "Agregar"/></td>
                            </tr>
                          

                            </table>
                            </fieldset>
                            </td><td style="padding:2px;">
                            </td>
                            </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            </table>

                            <h:dataTable id="cartelera" value="#{carteleraBean.lstCartelera}" var="cartelera"
                                         border="1" rows="5" headerClass="cabeceratabla">
                                <h:column>
                                    <f:facet name="header"> <h:outputText  value="Pelicula"/></f:facet>
                                     <f:attribute name="width" value="40" />
                                      <h:outputText value="#{cartelera.nom_pelicula}" />
                                </h:column>  
                                <h:column>
                                    <f:facet name="header"> <h:outputText  value="Sala"/></f:facet>
                                    <h:outputText value="#{cartelera.num_Sala}" />
                                </h:column>    
                                 <h:column>
                                    <f:facet name="header"> <h:outputText  value="Hora"/></f:facet>
                                    <h:outputText value="#{cartelera.hora}" />
                                </h:column>                                 
                                
                                
                            </h:dataTable>

                             <table>
                            <tr><td>&nbsp;</td>   </tr>
                            <tr><td>
                            <input type="submit" value="Cancelar" /></td></tr>
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
                                            Usuario:&nbsp;<br> <b> <span style="color: #FFFFFF"><h:outputText value="#{loginBean.nombreUsuario}"/></span></b><br /><br>
                                            <h:commandLink action="#{utilBean.logout}"><span style="color: #FFFFFF">Cerrar Sesi&oacute;n</span></h:commandLink>
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
