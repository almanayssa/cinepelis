<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <f:view>
        <f:loadBundle basename="messages" var="msgs"/>
        <head>
            <meta http-equiv="content-type" content="text/html;charset=utf-8" />
            <title><h:outputText value="#{msgs.titulo_sistema}"/></title>
            <link href="<%=request.getContextPath()%>/faces/style.css" rel="stylesheet" type="text/css" media="screen" />            
            <script type="text/javascript">
                var b="/^[^@\s]+@[^@\.\s]+(\.[^@\.\s]+)+$⁄";
                function validarFormulario(){
                    if(document.getElementById("tbxNombre").value==''){
                        alert('Ingrese nombre');
                        document.getElementById("tbxNombre").focus();
                        return false;
                    }
                    else if(document.getElementById("tbxApePaterno").value==''){
                        alert('Ingrese apellido paterno');
                        document.getElementById("tbxApePaterno").focus();
                        return false;
                    }
                    else if(document.getElementById("tbxApeMaterno").value==''){
                        alert('Ingrese apellido materno');
                        document.getElementById("tbxApeMaterno").focus();
                        return false;
                    }
                    else if(document.getElementById("tbxDNI").value==''){
                        alert('Ingrese DNI');
                        document.getElementById("tbxDNI").focus();
                        return false;
                    }
                    else if(document.getElementById("tbxTelefono").value==''){
                        alert('Ingrese telefono');
                        document.getElementById("tbxTelefono").focus();
                        return false;
                    }
                    else if(document.getElementById("tbxEmail").value==''){
                        alert('Ingrese un email');
                        document.getElementById("tbxEmail").focus();
                        return false;
                    }else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3,4})+$/.test(document.getElementById("tbxEmail").value)==false){
                        alert("La dirección de email es incorrecta.");
                        document.getElementById("tbxEmail").focus();
                        return false;
                    }
                }
            </script>
            <style type="text/css">
                .cabeceratabla {
                    color: #FFFFFF;
                    font-weight: bold;
                    text-align:center;
                }
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
                            <h2 class="title"><a href="#">Gesti&oacute;n Clientes</a></h2>
                            <div class="entry">
                                <h:form id="frmClientes">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>Nombre:</td><td style="padding:2px;"><input name='tbxNombre' id='tbxNombre' type='text' size="50" maxlength="50"/></td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Paterno:</td><td style="padding:2px;"><input id='tbxApePaterno' name="tbxApePaterno" type="text" size="50" maxlength="50"/></td>
                                        </tr>
                                        <td>Apellido Materno:</td>
                                        <td style="padding:2px;"><input name="tbxApeMaterno" id='tbxApeMaterno' type="text" size="50" maxlength="50"/></td>
                                        <tr>
                                            <td>DNI:</td>
                                            <td style="padding:2px;"><input name="tbxDNI" id='tbxDNI' type="text" size="20" maxlength="8"/></td></tr>
                                        <tr>
                                            <td>Tel&eacute;fono:</td>
                                            <td style="padding:2px;"><input name="tbxTelefono" id='tbxTelefono' type="text" size="20" maxlength="18"/></td></tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td style="padding:2px;"><input name="tbxEmail" id="tbxEmail" type="text" size="50" maxlength="110"/></td></tr>
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
                                            <td># Tarjeta:</td>
                                            <td style="padding:2px;"><input name="numTarjeta" type="text" size="20" maxlength="18"/></td></tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr><td><input type="submit" value="Cancelar" /></td>
                                            <td><input type="submit" value="Guardar" onclick="return validarFormulario();" /></td></tr>
                                        <tr><td>&nbsp;</td>
                                        </tr>
                                    </table>



                                    <h:dataTable id="clientes"  value="#{clienteBean.lstCliente}"
                                                 var="cliente"  border="1" rows="5" headerClass="cabeceratabla">
                                        <h:column>
                                            <f:facet name="header"> <h:outputText  value="Nombre"/> </f:facet>
                                            <f:attribute name="width" value="40" />
                                            <h:outputText value="#{cliente.nombre}" />
                                        </h:column>
                                        <h:column>
                                            <f:facet name="header"> <h:outputText  value="Apellido Paterno"/> </f:facet>
                                            <h:outputText value="#{cliente.ape_paterno}" />
                                        </h:column>
                                        <h:column>
                                            <f:facet name="header"> <h:outputText  value="Apellido Materno"/> </f:facet>
                                            <h:outputText value="#{cliente.ape_materno}" />
                                        </h:column>
                                        <h:column>
                                            <f:facet name="header"> <h:outputText  value="Email"/> </f:facet>
                                            <h:outputText value="#{cliente.email}" />
                                        </h:column>
                                    </h:dataTable>

                                </h:form>

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
