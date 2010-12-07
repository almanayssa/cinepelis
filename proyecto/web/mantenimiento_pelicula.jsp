<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <f:view>
        <f:loadBundle basename="messages" var="msgs"/>

        <head>
            <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
            <title><h:outputText value="#{msgs.titulo_sistema}"/></title>
            <link href="<%=request.getContextPath()%>/faces/style.css" rel="stylesheet" type="text/css" media="screen" />
            <script type="text/javascript" src="<%=request.getContextPath()%>/common/prototype.js"></script>
            <script type="text/javascript" src="<%=request.getContextPath()%>/common/validaciones.js"></script>
            <script type="text/javascript">
                 function validarForm(){
                    if (blancoJSF('tbxNombre', "Ingresar el Nombre") == false)return false;
                    if (blancoJSF('tbxDuracion',"Ingrese duracion de la pelicula") == false)return false;
                    if (blancoJSF('tbxDirector',"Ingrese el nombre del director de la pelicula") == false)return false;
                }
            </script>

            <style type="text/css">
                <!--
                .style1 {
                    color: #FFFFFF;
                    font-weight: bold;
                }
                .cabeceratabla {
                    color: #FFFFFF;
                    font-weight: bold;
                    text-align:center;
                }
                -->
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
            <!-- end #header -->
            <h:form id="formPeli">
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <div class="post">


                                <h2 class="title"><a href="#">Gesti&oacute;n Pelicula</a></h2>
                                <div class="entry">
                                 
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>Nombre:</td><td style="padding:2px;"><h:inputText value="#{peliculaBean.nombre}" size="50" maxlength="140"></h:inputText></td>
                                            </tr>
                                            <tr>
                                                <td>G&eacute;nero:</td><td style="padding:2px;">
                                                    <h:selectOneMenu value="#{peliculaBean.genero}" id="genero">
                                                        <f:selectItem itemLabel="Drama" itemValue="DRAMA"/>
                                                        <f:selectItem itemLabel="Comedia" itemValue="COMEDIA"/>
                                                        <f:selectItem itemLabel="Accion" itemValue="ACCION"/>
                                                        <f:selectItem itemLabel="Terror" itemValue="TERROR"/>
                                                    </h:selectOneMenu>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Duraci&oacute;n (minutos):</td>
                                                <td style="padding:2px;"><h:inputText value="#{peliculaBean.duracionMinutos}" size="20" maxlength="4" onkeypress="return soloNumeros(event)"></h:inputText></td></tr>
                                            <tr>
                                                <td>Director:</td>
                                                <td style="padding:2px;"><h:inputText value="#{peliculaBean.director}" size="50" maxlength="200"></h:inputText></td></tr>
                                            <tr>
                                                <td>Actores Principales:</td>
                                                <td style="padding:2px;"><h:inputTextarea value="#{peliculaBean.actoresPrincipales}" cols="40"></h:inputTextarea></td></tr>
                                            <tr>
                                                <td>Censura:</td>
                                                <td style="padding:2px;">
                                                    <h:selectOneMenu value="#{peliculaBean.tipoCensura}" id="censura">
                                                        <f:selectItem itemLabel="Ninguna" itemValue="NINGUNA"/>
                                                        <f:selectItem itemLabel="Mayores 14" itemValue="M14"/>
                                                        <f:selectItem itemLabel="Mayores 18" itemValue="M18"/>
                                                    </h:selectOneMenu>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Sitio web:</td>
                                                <td style="padding:2px;"><h:inputText value="#{peliculaBean.sitioWeb}" size="50" maxlength="200"></h:inputText></td></tr>
                                            <tr>
                                                <td>Sinopsis:</td>
                                                <td style="padding:2px;"><h:inputTextarea value="#{peliculaBean.sinopsis}" cols="40"></h:inputTextarea></td></tr>
                                            <tr>
                                                <td>Ruta Foto:</td>
                                                <td style="padding:2px;"><h:inputText value="#{peliculaBean.rutaImagen}" size="50" maxlength="200"></h:inputText></td></tr>
                                            <tr>
                                                <td></td>
                                                <td style="padding:2px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <h:commandButton action="#{peliculaBean.guardarPelicula}" value="Guardar" onclick="return validarForm();"/>
                                                    <input type="button" value="Cancelar" />
                                                </td>
                                            </tr>
                                        </table>
                                        <br/>
                                        <h:dataTable id="peliculas"  value="#{peliculaBean.lstPelicula}" var="pelicula"  border="1" rows="5" headerClass="cabeceratabla">
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="Nombre"/> </f:facet>
                                                <h:outputText value="#{pelicula.nombre}" />
                                            </h:column>
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="Duracion"/> </f:facet>
                                                <h:outputText value="#{pelicula.duracionMinutos}" />
                                            </h:column>
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="Director"/> </f:facet>
                                                <h:outputText value="#{pelicula.director}" />
                                            </h:column>
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="Censura"/> </f:facet>
                                                <h:outputText value="#{pelicula.tipoCensura}" />
                                            </h:column>
                                        </h:dataTable>
                                   
                                </div>
                            </div>
                            <div style="clear: both;">&nbsp;</div>
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
                                    <p/>
                                </li>
                            </ul>
                        </div>
                        <!-- end #sidebar -->
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
                <!-- end #content -->
            </div>
            </h:form>
            <!-- end #page -->
            <div id="footer">
                <p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
            </div>
            <!-- end #footer -->
        </body>
    </f:view>
</html>