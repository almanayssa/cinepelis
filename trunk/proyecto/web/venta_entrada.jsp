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
                                        <tr>
                                            <td>N&uacute;mero de Tarjeta:</td>
                                            <td style="padding:2px;"><h:inputText id="numTarjeta" value="#{ventaBean.numTarjeta}" onkeypress="return soloNumeros(event)" maxlength="20"/>&nbsp;&nbsp;&nbsp;
                                                <h:commandLink action="#{ventaBean.findCustomer}" onclick="return validar();"><img src="images/find.png"/></h:commandLink>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td>Titular:</td>
                                            <td style="padding:2px;"><h:inputText id="nomCliente" value="#{ventaBean.nomCliente}" size="40" disabled="true"/></td>
                                        </tr>
                                        <tr>
                                            <td>Pel&iacute;cula:</td>
                                            <td style="padding:2px;"><select id="cbxPelicula" name="cbxPelicula">
                                            <option>Como Perros y Gatos 2 - Sala 1 - 6:30pm</option>
                                            <option>Como Perros y Gatos 2 - Sala 1 - 8:30pm</option>
                                            <option>Una Loca Pelicula de Vampiros - Sala 4 - 8:30pm</option>
                                            </select></td>
                                        </tr>
                                        <tr>
                                            <td>N&uacute;mero de entradas:</td>
                                            <td style="padding:2px;"><input disabled="disabled" id="tbxEntradas" name='tbxEntradas' type='text' value="0" onkeypress="return soloNumeros(event)"/></td>
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
                                                     <td>Butaca:</td>
                                                     <td><select>
                                                    <option value="1">A</option>
                                                    <option value="1">B</option>
                                                    <option value="1">C</option>
                                                    <option value="1">D</option>
                                                    <option value="1">F</option>
                                                    <option value="1">G</option>
                                                    <option value="1">H</option>
                                                    <option value="1">I</option>
                                                    </select>
                                                         <select>
                                                    <option value="1">1</option>
                                                    <option value="1">2</option>
                                                    <option value="1">3</option>
                                                    <option value="1">4</option>
                                                    <option value="1">5</option>
                                                    <option value="1">6</option>
                                                    <option value="1">7</option>
                                                    <option value="1">8</option>
                                                    <option value="1">9</option>
                                                    <option value="1">10</option>
                                                    <option value="1">11</option>
                                                    <option value="1">12</option>
                                                    </select>
                                                     </td>
                                                     <td><input type="button" value="Agregar"> </td>
                                                 </tr>
                                             </table><BR>



                                          </fieldset>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                        <td>Monto Total:</td>
                                        <td style="padding:2px;"><input id="tbxMonto" name='tbxMonto' type='text'/></td>
                                        </tr>

                                        <tr>
                                        <td></td>
                                        <td style="padding:2px;">&nbsp;</td>
                                        </tr>
                                        <tr><td></td><td><input type="submit" value="Aceptar" onclick="return validarForm();" /><input type="submit" value="Cancelar" /></td></tr>
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
