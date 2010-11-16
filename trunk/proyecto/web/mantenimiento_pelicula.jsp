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

            <script type="text/javascript">
                 function validarForm(){
                    if($F('tbxNombre')==''){
                        alert('Ingrese nombre');
                        $('tbxNombre').focus();
                        return false;
                    }
                    else if($F('tbxDuracion')==''){
                        alert('Ingrese duracion de la pelicula');
                        $('tbxDuracion').focus();
                        return false;
                    }
                    else  if($F('tbxDirector')==''){
                        alert('Ingrese el nombre del director de la pelicula');
                        $('tbxDirector').focus();
                        return false;
                    }
                    else if($F('tbxActores')==''){
                        alert('Ingrese el nombre de los actores de esta pelicula');
                        $('tbxActores').focus();
                        return false;
                    }
                    else if($F('tbxActores')==''){
                        alert('Ingrese el nombre de los actores de esta pelicula');
                        $('tbxActores').focus();
                        return false;
                    }
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
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <div class="post">


                                <h2 class="title"><a href="#">Gesti&oacute;n Pelicula</a></h2>
                                <div class="entry">
                                    <h:form id="formPeli">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>Nombre:</td><td style="padding:2px;"><input id="tbxNombre" name='tbxNombre' type='text' size="50" maxlength="140"/></td>
                                            </tr>
                                            <tr>
                                                <td>G&eacute;nero:</td><td style="padding:2px;"><select name="cbxGenero">
                                                        <option>Drama</option>
                                                        <option>Comedia</option>
                                                        <option>Acci&oacute;n</option>
                                                        <option>Terror</option>
                                                    </select></td>
                                            </tr>
                                            <tr>
                                                <td>Duraci&oacute;n (minutos):</td>
                                                <td style="padding:2px;"><input id="tbxDuracion" name='tbxDuracion' type='text' size="20" maxlength="4"/></td></tr>
                                            <tr>
                                                <td>Director:</td>
                                                <td style="padding:2px;"><input id="tbxDirector" name='tbxDirector' type='text' size="50" maxlength="200"/></td></tr>
                                            <tr>
                                                <td>Actores Principales:</td>
                                                <td style="padding:2px;"><textarea  id="tbxActores" name="tbxActores" cols="40"></textarea></td></tr>
                                            <tr>
                                                <td>Censura:</td>
                                                <td style="padding:2px;"><select name="cbxCensura">
                                                        <option>Ninguna</option>
                                                        <option>Mayores 14</option>
                                                        <option>Mayores 18</option>
                                                    </select></td></tr>
                                            <tr>
                                                <td>Sitio web:</td>
                                                <td style="padding:2px;"><input  id="tbxSitioWeb" name='tbxSitioWeb' type='text' size="50" maxlength="200"/></td></tr>
                                            <tr>
                                                <td>Sinopsis:</td>
                                                <td style="padding:2px;"><textarea  id="tbxSinopsis" name="tbxSinopsis" cols="40"></textarea></td></tr>
                                            <tr>
                                                <td>Ruta Foto:</td>
                                                <td style="padding:2px;"><input  id="ruta_foto" name='ruta_foto' type='text' size="50" maxlength="200"/></td></tr>
                                            <tr>
                                                <td></td>
                                                <td style="padding:2px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="button" value="Cancelar" />
                                                </td>
                                                <td>
                                                    <input type="submit" value="Guardar" onclick="return validarForm();" />
                                                </td>
                                            </tr>
                                        </table>
                                        <h:dataTable id="peliculas"  value="#{peliculaBean.lstPelicula}"
                                                     var="pelicula"  border="1" rows="5" headerClass="cabeceratabla">
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

                                    </h:form>

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
                </div>
                <!-- end #content -->
            </div>
            <!-- end #page -->
            <div id="footer">
                <p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
            </div>
            <!-- end #footer -->
        </body>
    </f:view>
</html>