<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<html>
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Gesti&oacute;n de Cine</title>
        <link href="<%=request.getContextPath()%>/faces/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">Cinestar  </a></h1>
                    </div>

                </div>
            </div>
            <!-- end #header -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">                             
                                 <div id="login">
                                     <f:view>
                                     <h:form id="formLogin">
                                     <fieldset>
                                         <legend>Ingrese su Usuario y Contrase&ntilde;a</legend>
                                         
                                         <table border = 0>
                                             <tr><td rowspan="4"><img src="images/llave.jpg" alt="" width="106" height="88" /></td>
                                                 <td><h:outputText value="Usuario:" /></td>                                                    
                                                 <td><h:inputText id="usuario" value="#{loginBean.usuario}" required="true" requiredMessage="*" /></td>
                                                 <td><h:message for="usuario" errorStyle="color:red;" /></td>
                                             </tr>
                                             <tr>
                                                 <td><h:outputText value="Password:" /></td>
                                                 <td><h:inputSecret id="password" value="#{loginBean.password}" required="true" requiredMessage="*"/></td>
                                                 <td><h:message for="password" errorStyle="color:red;" /></td></tr>
                                             <tr>
                                                 <td align="center" valign="middle">
                                                     <h:commandButton value="Entrar" action="#{loginBean.loguear}" styleClass="boton-azul"/>
                                                 </td>
                                                 <td align="center" valign="middle" style="padding:2px;"><input type="button" id="search-submit" value = "Cancelar"/></td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2"><h:message for="formLogin" errorStyle="color:red; font-size:11px;"/></td>
                                             </tr>
                                         </table>
                                       
                                     </fieldset>                                      
                                     </h:form>
                                     </f:view>
                                     <p></p>
                                 </div>
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                    <!-- end #content -->

                    <!-- end #sidebar -->
                    <div style="clear: both;">&nbsp;</div>
                </div>
            </div>
        </div>
        <!-- end #page -->
 
    <div id="footer">
        <p><a>DEW PROJECT- 2010-2</a>.</p>
    </div>
    <!-- end #footer -->
        </div>
</body>
</html>
