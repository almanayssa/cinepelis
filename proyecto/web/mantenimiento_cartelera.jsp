<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <f:view>
    
 <f:loadBundle basename="messages" var="msgs"/>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title><h:outputText value="#{msgs.titulo_sistema}"/></title>
 <link href="<%=request.getContextPath()%>/faces/style.css" rel="stylesheet" type="text/css" media="screen" />
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
 <h:form id="formCartelera">
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
                                        <h:selectOneMenu value="#{carteleraBean.codPelicula}" id="codPelicula">
                                              <f:selectItem itemLabel="Machete" itemValue="1"/>
                                        </h:selectOneMenu>
                                    </td>
                                </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            <tr>
                            <td style="vertical-align:top;" colspan = "2">
                            <fieldset>
                                <legend style="color: #FFFFFF">Selecci&oacute;n de horarios</legend>
                            <table border = 0>
                            <tr><td>Sala</td><td width="70">
                                  <h:selectOneMenu value="#{carteleraBean.numeroSala}" id="numeroSala">
                                     <f:selectItem itemLabel="1" itemValue="1"/>
                                     <f:selectItem itemLabel="2" itemValue="2"/>
                                     <f:selectItem itemLabel="3" itemValue="3"/>
                                     <f:selectItem itemLabel="4" itemValue="4"/>
                                  </h:selectOneMenu>
                            </td>
                            <td>Hora:</td>
                            <td>
                                <h:selectOneMenu value="#{carteleraBean.horaInicio}" id="horaInicio">
                                        <f:selectItem itemLabel="11:00" itemValue="11:00"/>
                                        <f:selectItem itemLabel="11:30" itemValue="11:30"/>
                                        <f:selectItem itemLabel="12:00" itemValue="12:00"/>
                                </h:selectOneMenu>
                               </td>
                            <td>
                                <h:commandButton value="Grabar" action="#{carteleraBean.grabarCartelera}"/>
                            </td>
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
                                      <h:outputText value="#{cartelera.nombre}" />
                                </h:column>  
                                <h:column>
                                    <f:facet name="header"> <h:outputText  value="Sala"/></f:facet>
                                    <h:outputText value="#{cartelera.numSala}" />
                                </h:column>    
                                 <h:column>
                                    <f:facet name="header"> <h:outputText  value="Hora"/></f:facet>
                                    <h:outputText value="#{cartelera.hora_inicio}" />
                                </h:column>                                 
                                
                                
                            </h:dataTable>

                             <table>
                            <tr><td>&nbsp;</td>   </tr>
                            <tr><td>
                            </td></tr>
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
</h:form>
 </f:view>
</html>
