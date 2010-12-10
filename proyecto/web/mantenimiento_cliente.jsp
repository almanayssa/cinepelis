<%@ include file="/common/header_include.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <f:view>
        <f:loadBundle basename="messages" var="msgs"/>
        
        <head>
            <meta http-equiv="content-type" content="text/html;charset=utf-8" />
            <title><h:outputText value="#{msgs.titulo_sistema}"/></title>
            <link href="<%=request.getContextPath()%>/faces/style.css" rel="stylesheet" type="text/css" media="screen" />
            <script type="text/javascript" src="<%=request.getContextPath()%>/common/prototype.js"></script>
            <script type="text/javascript" src="<%=request.getContextPath()%>/common/validaciones.js"></script>
            <script type="text/javascript">
                
                var b="/^[^@\s]+@[^@\.\s]+(\.[^@\.\s]+)+$⁄";
                function validarFormulario(){
                    if (blancoJSF('frmClientes:tbxNombre', "Ingresar el Nombre") == false)return false;
                    if (blancoJSF('frmClientes:tbxApePaterno', "Ingresar apellido paterno") == false)return false;
                    if (blancoJSF('frmClientes:tbxApeMaterno', "Ingresar apellido materno") == false)return false;
                    if (blancoJSF('frmClientes:tbxDNI', "Ingresar DNI") == false)return false;
                    if (ismaxlength(document.getElementById('frmClientes:tbxDNI'), "Solo ingresar 8 digitos") == false)return false;
                    if (blancoJSF('frmClientes:tbxEmail', "Ingrese un email") == false)return false;
                    if (isEmailAddress(document.getElementById("frmClientes:tbxEmail")) == false)return false;
                    if (blancoJSF('frmClientes:numTarjeta', "Ingrese el numero de tarjeta") == false)return false;
                    
                    //if(document.getElementById("tbxDNI").value.length!=8){
                    //    alert("DNI Inv\xe1lido");
                    //    document.getElementById("tbxDNI").focus();
                    //    return false;
                    //}
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
            <h:form id="frmClientes">
            <div id="page">
                <div id="page-bgtop">
                    <div id="content">
                        <div class="post">
                            <h2 class="title"><a href="#">Gesti&oacute;n Clientes</a></h2>
                            <div class="entry">
                                
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>Nombre:</td><td style="padding:2px;">
                                                <h:inputText  value="#{clienteBean.nombre}" id="tbxNombre" size="50" maxlength="50"></h:inputText>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Paterno:</td><td style="padding:2px;">
                                                <h:inputText value="#{clienteBean.ape_paterno}" id="tbxApePaterno" size="50" maxlength="50"></h:inputText>
                                                </td>
                                        </tr>
                                        <td>Apellido Materno:</td>
                                        <td style="padding:2px;">
                                            <h:inputText value="#{clienteBean.ape_materno}" id="tbxApeMaterno" size="50" maxlength="50"></h:inputText>
                                            </td>
                                        <tr>
                                            <td>DNI:</td>
                                            <td style="padding:2px;">
                                                <h:inputText value="#{clienteBean.dni}" id="tbxDNI" size="20" maxlength="8" onkeypress="return soloNumeros(event)"></h:inputText>
                                            </td></tr>
                                        <tr>
                                            <td>Tel&eacute;fono:</td>
                                            <td style="padding:2px;">
                                                <h:inputText value="#{clienteBean.telefono}" id="tbxTelefono" size="20" maxlength="18" onkeypress="return soloNumeros(event)"></h:inputText>
                                            </td></tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td style="padding:2px;">
                                                <h:inputText value="#{clienteBean.email}" id="tbxEmail" size="50" maxlength="110"></h:inputText>
                                                </td></tr>
                                        <tr>
                                            <td>Tipo Tarjeta:</td>
                                            <td style="padding:2px;">
                                                <h:selectOneMenu value="#{clienteBean.tipo_tarjeta}" id="tipo_tarjeta">
                                                        <f:selectItem itemLabel="CLASICA" itemValue="C"/>
                                                        <f:selectItem itemLabel="Premium" itemValue="P"/>
                                                </h:selectOneMenu>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td># Tarjeta:</td>
                                            <td style="padding:2px;">
                                                <h:inputText value="#{clienteBean.num_tarjeta}" id="numTarjeta" size="20" maxlength="18" onkeypress="return soloNumeros(event)"></h:inputText>
                                                </td></tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr><td></td>
                                            <td><h:commandButton action="#{clienteBean.guardarCliente}" value="Guardar" onclick="return validarFormulario();" />
                                                    <input type="submit" value="Cancelar" /></td></tr>
                                        <tr><td>&nbsp;</td>
                                        </tr>
                                    </table>



                                    <h:dataTable id="clientes"  value="#{clienteBean.lstCliente}"
                                                 var="cliente"  border="1" headerClass="cabeceratabla">
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
                                <p/>
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
