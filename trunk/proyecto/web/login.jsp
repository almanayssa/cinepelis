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
        <h1><a href="#">Cinepelis </a></h1>
    </div>
<div id="header">
	<div id="menu">
		<ul>
                    <li class="current_page_item"><a href="index.jsp">Home</a></li>
                    <li ><a href="premium.jsp">Informaci&oacute;n Premium</a></li>
                    <li ><a href="<%=request.getContextPath()%>/faces/login.jsp">Ingresar</a></li>
		</ul>
	</div>
	<!-- end #menu -->
        <div id="search">
		<form method="get" action="">
			<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
			</fieldset>
		</form>
	</div>
	<!-- end #search -->
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->
<div id="page">
	<div id="page-bgtop">
		<div id="content">
                    <div class="post">
                        <h2 class="title"><a href="#">Autenticaci&oacute;n</a></h2>
                        <div class="entry">
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
                                                 <td></td>
                                                 <td>
                                                     <h:commandButton value="Entrar" action="#{loginBean.loguear}" styleClass="boton-azul"/>
                                                     <input type="button" value = "Cancelar"/>
                                                 </td>
                                                 <td></td>
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
                    </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
                    <ul>
                            <li>
                                    <h2>Cinepelis</h2>
                                    <p>Sea parte de una nueva experiencia en cines. Vis&iacute;tenos y compruebe la calidad de nuestros servicios.</p>
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
