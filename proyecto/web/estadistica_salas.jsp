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
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#">Cinepelis  </a></h1>
			</div>
			<div id="menu">
				<ul>														
					<li><a href="mantenimiento_cartelera.jsp">Registro Cartelera</a></li>
					<li><a href="registro.jsp">Registro Clientes</a></li>
					<li><a href="mantenimiento_pelicula.jsp">Registro Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li class="current_page_item"><a href="estadisticas_salas.jsp">Estadisticas</a></li>
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
						<h2 class="title"><a href="#">Estad&iacute;stica butacas por sala</a></h2>
						<div class="entry">
    <table class="table" border = "1" cellpading = "0" cellspacing = "0" width="100%">
    <thead>
    <tr><th width="100">Pelicula</th><th width="50">Sala</th><th width="50">Butacas</th><th width="30">Vendidas</th><th width="30">Porcentaje</th></tr>
    </thead>
    <tr><td width="100">El ultimo maestro</td><td width="50">4</td><td width="50">40</td><td width="50">30</td><td>10%</td></tr>
    <tr><td width="100">Karate Kid</td><td width="50">2</td><td width="50">45</td><td>10</td><td>10%</td></tr>
    </table>
    <table>
      <tr><td>&nbsp;</td></tr>
    <tr><td style="padding:2px;">
    <input type="submit" id="search-submit" value="OK" /></td></tr>
    </table>						      </div>
				  </div>
			    <div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<div id="usuario" >
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
	<p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
</div>
<!-- end #footer -->
</body>
</html>
