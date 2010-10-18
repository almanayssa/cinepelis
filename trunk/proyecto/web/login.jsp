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
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header">
                    <div id="logo">
                        <h1><a href="#">Cinepelis </a></h1>
                    </div>

                </div>
            </div>
            <!-- end #header -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">                             
                                 <div id="login">
                                    
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
        <p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
    </div>
    <!-- end #footer -->
        </div>
</body>
 </f:view>
</html>
