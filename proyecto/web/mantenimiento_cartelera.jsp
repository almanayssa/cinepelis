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
<style type="text/css">
@import "slidertron.css";
</style>
</head>
<body>
    <div id="logo">
        <h1><a href="#">Cinepelis </a></h1>
    </div>
<div id="header">
	<div id="menu">
		<ul>
                    <li class="current_page_item"><a href="mantenimiento_cartelera.jsp">Registro Cartelera</a></li>
                    <li><a href="registro.jsp">Registro Clientes</a></li>
                    <li><a href="mantenimiento_pelicula.jsp">Registro Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estadisticas</a></li>
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
                        <h2 class="title"><a href="#">Mantenimiento Cartelera</a></h2>
                        <div class="entry">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Pel&iacute;cula:</td>
                                    <td style="padding:2px;">
                                        <select name="cbxPelicula">
                                            <option>Los Indestructibles</option>
                                            <option>El Ultimo Maestro Del Aire</option>
                                            <option>Casi Embarazada</option>
                                            <option>Enamorada de mi Ex</option>
                                            <option>Como Perros y Gatos 2</option>
                                            <option>Una Loca Pel&iacute;cula de Vampiros</option>
                                        </select>
                                    </td>
                                </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            <tr>
                            <td style="vertical-align:top;" colspan = "2">
                            <fieldset>
                            <legend>Selecci&oacute;n de horarios</legend>
                            <table border = 0>
                            <tr><td>Sala</td><td width="70"><select>
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="1">5</option>
                                            <option value="1">6</option>
                                            </select>
                            </td>
                            <td>Hora</td>
                            <td><input type="text" style="width:50px;"/></td>
                            <td><input type="button" value = "Agregar"/></td>
                            </tr>
                            <tr>
                            <td>Estreno:</td><td style="padding:2px;"><input name="tbxApeMaterno" type="checkbox"/></td></tr>

                            </table>
                            </fieldset>
                            </td><td style="padding:2px;">
                            </td>
                            </tr>
                            <tr><td>&nbsp;</td>
                            </tr>
                            </table>
                            <table class="table" border = "1" cellspading = "0" cellspacing = "0" width="100%">
                            <thead>
                            <tr><th width="100">Pelicula</th><th width="50">Sala</th><th width="50">Hora</th><th>&nbsp;</th></tr>
                            </thead>
                            <tr><td width="100">El ultimo maestro</td><td width="50">4</td><td width="50">20:30</td><td width="50"><a href="#">Eliminar</a></td></tr>
                            <tr><td width="100">Karate Kid</td><td width="50">2</td><td width="50">17:15</td><td><a href="#">Eliminar</a></td></tr>
                            </table>
                            <table>
                            <tr><td>&nbsp;</td>   </tr>
                            <tr><td>
                            <input type="submit" value="Guardar" /></td></tr>
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
