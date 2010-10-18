<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Programme     
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20100707

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Gesti&oacute;n de Cine</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
       <div id="logo">
        <h1><a href="#">Cinepelis </a></h1>
    </div>
<div id="header">
	<div id="menu">
		<ul>
                    <li><a href="inicio.jsp">Inicio</a></li>
                    <li><a href="mantenimiento_cartelera.jsp">Gesti&oacute;n Cartelera</a></li>
                    <li><a href="mantenimiento_cliente.jsp">Gesti&oacute;n Clientes</a></li>
                    <li><a href="mantenimiento_pelicula.jsp">Gesti&oacute;n Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estad&iacute;sticas</a></li>
		</ul>
	</div>
	<!-- end #menu -->

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
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Nombre:</td><td style="padding:2px;"><input name='tbxNombre' type='text'/></td>
                                </tr>
                                <tr>
                                <td>Apellido Paterno:</td><td style="padding:2px;"><input name="tbxApePaterno" type="text"/></td>
                                </tr>
                                <tr>
                                <td>Apellido Materno:</td>
                                <td style="padding:2px;"><input name="tbxApeMaterno" type="text"/></td></tr>
                                <tr>
                                <td>DNI:</td>
                                <td style="padding:2px;"><input name="tbxDNI" type="text"/></td></tr>
                                <tr>
                                <td>Teléfono:</td>
                                <td style="padding:2px;"><input name="tbxTelefono" type="text"/></td></tr>
                                <tr>
                                <td>Email:</td>
                                <td style="padding:2px;"><input name="tbxEmail" type="text"/></td></tr>
                                <tr>
                                <td>Tipo tarjeta:</td>
                                <td style="padding:2px;">
                                <select>
                                <option>Cl&aacute;sica</option>
                                <option>Premium</option>
                                </select>
                                </td>
                                </tr>
                                <tr>
                                <td>&nbsp;</td>
                                </tr>
                                <tr><td></td><td><input type="submit" value="Guardar" /></td></tr>
                                <tr><td>&nbsp;</td>
                                </tr>
                                </table>

                                
                                <table class="table" border = "1" cellspading = "0" cellspacing = "0" width="100%">
                                <thead>
                                <tr><th width="103">Nombre</th><th width="190">Apellidos</th><th width="94">Tipo tarjeta</th><th>&nbsp;</th></tr>
                                </thead>
                                <tr><td width="103">Pedro</td><td width="190">Rios Pino</td><td width="94">Clasica</td><td width="95"><a href="#">Eliminar</a></td></tr>
                                <tr><td width="103">Johana</td><td width="190">Herrera Quintanilla</td><td width="94">Premium</td><td><a href="#">Eliminar</a></td></tr>
                                </table>




                        </div>
                    </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
                    <ul>
                            <li>
                                    <h2>Autenticacion</h2>
                                    <p>
                                        <div id="usuario" >
                                        <div>
                                        Bienvenid@: Mayra Marquez<br />
                                        <a href="index.jsp">Cerrar Sesion</a>
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
</html>
