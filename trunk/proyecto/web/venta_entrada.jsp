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
                function validar(){
                     if(blancoJSF('formVenta:numTarjeta', "Ingrese número de tarjeta") == false)return false;
                }

                function validarEntrada(){
                       if(blancoJSF('formVenta:nomCliente', "Tiene que buscar al Titular de la Tarjeta.") == false)return false;
                }

                 function validarForm(){
                    if(blancoJSF('formVenta:numTarjeta', "Ingrese número de tarjeta") == false)return false;
                  
                    else if($F('tbxTitular')==''){
                        alert('Ingrese nombre del titular');
                        $('tbxTitular').focus();
                        return false;
                    }
                    else  if($F('cbxPelicula')==''){
                        alert('Seleccione la funcion');
                        $('cbxPelicula').focus();
                        return false;
                    }
                    else if($F('tbxEntradas')==''){
                        alert('Ingrese el numero de entradas');
                        $('tbxEntradas').focus();
                        return false;
                    }
                    else if($F('tbxMonto')==''){
                        alert('Ingrese el monto de la venta');
                        $('tbxMonto').focus();
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
            </meta>
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
            <h:form id="formVenta">
            <div id="page">
                <div id="page-bgtop">
                    <div id="content">
                        <div class="post">
                            <h2 class="title"><a href="#">Registro de Venta</a></h2>
                            <div class="entry">
                               
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr><td colspan="3"> <h:message for="formVenta" errorStyle="color:red; font-size:11px;"/></td></tr>

                                        <tr>
                                            <td>N&uacute;mero de Tarjeta:</td>
                                            <td style="padding:2px;"><h:inputText id="numTarjeta" value="#{ventaBean.numTarjeta}" onkeypress="return soloNumeros(event)" maxlength="20"/>&nbsp;&nbsp;&nbsp;
                                                <h:commandLink action="#{ventaBean.findCustomer}" onclick="return validar();"><img src="images/find.png"/></h:commandLink>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>Titular:</td>
                                            <td style="padding:2px;"><h:inputText id="nomCliente" value="#{ventaBean.nomCliente}" size="40" readonly="true"/></td>
                                        </tr>
                                        <tr>
                                            <td>Pel&iacute;cula:</td>
                                            <td style="padding:2px;">
                                            <h:selectOneMenu id="menu1" value="#{ventaBean.codeCartelera}" style="width:220px;height:22px;font-size:10pt;font-family:arial;font-weight:normal;">
                                                <s:selectItems value="#{ventaBean.lstCombo}" var="Combo" itemLabel="#{Combo.label}" itemValue="#{Combo.code}"/>
                                            </h:selectOneMenu>


                                            </td>
                                        </tr>
                                        
                                        <tr>
                                        <td valign="top">Ubicaci&oacute;n:</td>
                                        <td style="padding:2px;"><table width="269" border="1">
                                        <tr>
                                            <td align="center" colspan="10">
                                                <img src="<%=request.getContextPath()%>/images/butacas.jpg" />

                                            </td>
                                        </tr>


                                        </table>
                                        </td>
                                        </tr>
                                        <tr>
                                             <td style="vertical-align:top;" colspan = "2">
                                          <fieldset>
                                             <legend style="color: #FFFFFF">Selecci&oacute;n de butacas</legend>
                                             <table border = 0>
                                                 <tr>
                                             <td>N&uacute;mero de entradas:</td>
                                                <td style="padding:2px;"><h:inputText id="cantidadEntradas"  value="#{ventaBean.cantidadEntradas}" size="10" readonly="true"/></td>
                                            </tr>
                                                 <tr>
                                                     <td>Butaca:</td>
                                                     <td>

                                                         <h:selectOneMenu id="filaButaca" value="#{ventaBean.filaButaca}">
                                                             <f:selectItem  itemValue="A"  itemLabel="A"/>
                                                             <f:selectItem  itemValue="B"  itemLabel="B"/>
                                                             <f:selectItem  itemValue="C"  itemLabel="C"/>
                                                             <f:selectItem  itemValue="D"  itemLabel="D"/>
                                                             <f:selectItem  itemValue="E"  itemLabel="E"/>
                                                             <f:selectItem  itemValue="F"  itemLabel="F"/>
                                                             <f:selectItem  itemValue="G"  itemLabel="G"/>
                                                             <f:selectItem  itemValue="H"  itemLabel="H"/>
                                                             <f:selectItem  itemValue="I"  itemLabel="I"/>
                                                         </h:selectOneMenu>
                                                         &nbsp;&nbsp;
                                                         <h:selectOneMenu id="columnaButaca" value="#{ventaBean.columnaButaca}">
                                                             <f:selectItem  itemValue="1"  itemLabel="1"/>
                                                             <f:selectItem  itemValue="2"  itemLabel="2"/>
                                                             <f:selectItem  itemValue="3"  itemLabel="3"/>
                                                             <f:selectItem  itemValue="4"  itemLabel="4"/>
                                                             <f:selectItem  itemValue="5"  itemLabel="5"/>
                                                             <f:selectItem  itemValue="6"  itemLabel="6"/>
                                                             <f:selectItem  itemValue="7"  itemLabel="7"/>
                                                             <f:selectItem  itemValue="8"  itemLabel="8"/>
                                                             <f:selectItem  itemValue="9"  itemLabel="9"/>
                                                             <f:selectItem  itemValue="10"  itemLabel="10"/>
                                                             <f:selectItem  itemValue="11"  itemLabel="11"/>
                                                             <f:selectItem  itemValue="12"  itemLabel="12"/>
                                                         </h:selectOneMenu>
                                                       
                                                     </td>
                                                     <td>  <h:commandButton  value="Agregar" action="#{ventaBean.agregarEntrada}"
                                                                      onclick="return validarEntrada();"/> </td>
                                                 </tr>
                                             </table><BR>
                                             <br>
                                             <h:dataTable id="entradas"  value="#{ventaBean.lstEntradas}"
                                                     var="entrada"  border="1" rows="5" headerClass="cabeceratabla"
                                                     rendered="#{not empty ventaBean.lstEntradas}">
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="N."/> </f:facet>
                                                <f:attribute name="width" value="40" />
                                                <h:outputText value="#{entrada.row}" />
                                            </h:column>
                                            <h:column>
                                                <f:facet name="header"> <h:outputText  value="Butaca"/> </f:facet>
                                                <f:attribute name="width" value="40" />
                                                <h:outputText value="#{entrada.num_butaca}" />
                                            </h:column>

                                        </h:dataTable>



                                          </fieldset>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                        <td>Monto Total (s/.):</td>
                                        <td style="padding:2px;"><h:inputText id="montoTotal"   value="#{ventaBean.montoTotal}" size="10" readonly="true"/></td>
                                        </tr>

                                        <tr>
                                        <td></td>
                                        <td style="padding:2px;">&nbsp;</td>
                                        </tr>
                                        <tr><td></td><td> <h:commandButton  value="Terminar Operacion" action="#{ventaBean.terminarOperacion}"/></td></tr>
                                    </table> 
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
                                </p>
                            </li>
                        </ul>
                    </div>
                    <!-- end #sidebar -->
                    <div style="clear: both;">&nbsp;</div>
                </div>
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
