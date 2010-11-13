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
                        <h2 class="title"><a href="#">Registro de Venta</a></h2>
                        <div class="entry">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>N&uacute;mero de Tarjeta:</td>
                                    <td style="padding:2px;"><input name='tbxTarjeta' type='text'/></td>
                                </tr>
                                <tr>
                                    <td>Titular:</td>
                                    <td style="padding:2px;"><input name='tbxTitular' type='text'/></td>
                                </tr>
                                <tr>
                                    <td>Pel&iacute;cula:</td>
                                    <td style="padding:2px;"><select name="cbxGenero2">
                                    <option>Como Perros y Gatos 2 - Sala 1 - 6:30pm</option>
                                    <option>Como Perros y Gatos 2 - Sala 1 - 8:30pm</option>
                                    <option>Una Loca Pelicula de Vampiros - Sala 4 - 8:30pm</option>
                                    </select></td>
                                </tr>
                                <tr>
                                    <td>N&uacute;mero de entradas:</td>
                                    <td style="padding:2px;"><input disabled="disabled" name='tbxDirector2' type='text' value="0"/></td>
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
                                <td>Monto Total:</td>
                                <td style="padding:2px;"><input name='tbxDirector' type='text'/></td>
                                </tr>
                                <tr>
                                <td>Tipo Pago:</td>
                                <td style="padding:2px;"><select name="cbxGenero4">
                                <option>Efectivo</option>
                                <option>Tarjeta</option>
                                </select></td></tr>
                                <tr>
                                <td></td>
                                <td style="padding:2px;">&nbsp;</td>
                                </tr>
                                <tr><td></td><td><input type="submit" value="Aceptar" /></td></tr>
                            </table>
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
</html>
