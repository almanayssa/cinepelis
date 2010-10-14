<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Gestión de Cine</title>
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
					<li><a href="registro.jsp">Registro Clientes</a></li>
					<li class="current_page_item"><a href="mantenimiento_pelicula.jsp">Registro Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estadisticas</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
		    <div class="post">
						<h2 class="title"><a href="#">Mantenimiento Pelicula</a></h2>
				    <div class="entry">
	<table border="0" cellpadding="0" cellspacing="0">
    <tr>
    	<td>Nombre:</td><td style="padding:2px;"><input name='tbxNombre' type='text'/></td>
    </tr>
    <tr>
    <td>Género:</td><td style="padding:2px;"><select name="cbxGenero">
      <option>Drama</option>
      <option>Comedia</option>
      <option>Accion</option>
    </select></td>
    </tr>
    <tr>
    <td>Duración:</td>
    <td style="padding:2px;"><input name='tbxDuracion' type='text'/></td></tr>
    <tr>
      <td>Director:</td>
      <td style="padding:2px;"><input name='tbxDirector' type='text'/></td></tr>
      <tr>
      <td>Actores:</td>
      <td style="padding:2px;"><textarea name="tbxActores"></textarea></td></tr>
      <tr>
      <td>Censura:</td>
      <td style="padding:2px;"><select name="cbxCensura">
        <option>Ninguna</option>
        <option>Mayores 14</option>
        <option>Mayores 18</option>
      </select></td></tr>
      <tr>
      <td>Sitio web:</td>
      <td style="padding:2px;"><input name='tbxSitioWeb' type='text'/></td></tr>
      <tr>
      <td>Sinopsis:</td>
      <td style="padding:2px;"><textarea name="tbxSinopsis"></textarea></td></tr>
      <tr>
      <td>Restricción:</td>
      <td style="padding:2px;"><select name="cbxRestriccion">
        <option>Descuentos</option>
        <option>Promociones</option>
      </select></td></tr>
      <tr>
      <td>:</td>
      <td style="padding:2px;">&nbsp;</td></tr>
    <tr><td></td><td style="padding:2px;"><input type="submit" id="search-submit" value="OK" /></td></tr>
</table>						      </div>
				  </div>
			    <div style="clear: both;">&nbsp;</div>
				</div>
				
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
				
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	
</div>
<div id="footer">
	<p>Copyright (c) 2010 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org/"> CSS Templates</a>.</p>
</div>

</body>
</html>
