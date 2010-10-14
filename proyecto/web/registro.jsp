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
<title>Gestion de Cine</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#">Cinestar  </a></h1>
			</div>
			<div id="menu">
				<ul>													
					<li ><a href="mantenimiento_cartelera.jsp">Registro Cartelera</a></li>
					<li class="current_page_item"><a href="registro.jsp">Registro Clientes</a></li>
					<li><a href="mantenimiento_pelicula.jsp">Registro Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estadisticas</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
		    <div class="post">
						<h2 class="title"><a href="#">Datos Personales</a></h2>
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
    <tr><td></td><td style="padding:2px;"><input type="submit" id="search-submit" value="OK" /></td></tr>
    <tr><td>&nbsp;</td>   
    </tr>
    </table>
    
    
    <table class="table" border = "1" cellspading = "0" cellspacing = "0" width="100%">
    <thead>
    <tr><th width="103">Nombre</th><th width="190">Apellidos</th><th width="94">Tipo tarjeta</th><th>&nbsp;</th></tr>
    </thead>
    <tr><td width="103">Pedro</td><td width="190">Rios Pino</td><td width="94">Clasica</td><td width="95"><a href="#">Eliminar</a></td></tr>
    <tr><td width="103">Johana</td><td width="190">Herrera Quintanilla</td><td width="94">Premium</td><td><a href="#">Eliminar</a></td></tr>
    </table>						      </div>
				  </div>
			    <div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li><div id="usuario" >
									<div>
										Bienvenid@: Mayra Marquez<br />
										<a href="index.jsp">Cerrar Sesion</a>
									</div>
							</div>
							<div id="search" >
								<form method="get" action="#">
									<div>
										<input type="text" name="s" id="search-text" value="" />
										<input type="submit" id="search-submit" value="GO" />
									</div>
								</form>
							</div>
							<div style="clear: both;">&nbsp;</div>
						</li>
					  <li>
					    <ul>
							  <li></li>
					    </ul>
					  </li>
					  <li> </li>
					</ul>
			  </div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Copyright (c) 2010 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org/"> CSS Templates</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
