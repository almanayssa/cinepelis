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
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
               <div id="logo">
        <h1><a href="#">Cinepelis </a></h1>
    </div>
<div id="header">
	<div id="menu">
		<ul>
                    <li><a href="mantenimiento_cartelera.jsp">Gesti&oacute;n Cartelera</a></li>
                    <li><a href="mantenimiento_cliente.jsp">Gesti&oacute;n Clientes</a></li>
                    <li><a href="mantenimiento_pelicula.jsp">Gesti&oacute;n Pel&iacute;culas</a></li>
                    <li><a href="venta_entrada.jsp">Registro Venta</a></li>
                    <li><a href="estadistica_salas.jsp">Estad&iacute;sticas</a></li>
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
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
		    <div class="post">
						<h2 class="title"><a href="#">Gesti&oacute;n Pelicula</a></h2>
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
    <td></td>
    <td style="padding:2px;">&nbsp;</td>
    </tr>
    <tr><td></td><td><input type="submit" value="Guardar" /></td></tr>
</table>
<br/>
<table border="1">
<tr>
  <td width="74" bgcolor="#3C3D3F">&nbsp;</td>
  <td width="299" bgcolor="#3C3D3F" class="style1">Nombre</td>
  <td width="146" bgcolor="#3C3D3F" class="style1">Genero</td>
  <td width="173" bgcolor="#3C3D3F" class="style1">Sitio Web</td>
  <td width="174" bgcolor="#3C3D3F" class="style1">Censura</td>
</tr>
<tr>
  <td bgcolor="#FFFFFF">1</td>
  <td bgcolor="#FFFFFF">Los iun</td>
  <td bgcolor="#FFFFFF">Accion</td>
  <td bgcolor="#FFFFFF">http://www.ind.com</td>
  <td bgcolor="#FFFFFF">Mayores de 14</td>
</tr>
<tr>
  <td bgcolor="#FFFFFF">&nbsp;</td>
  <td bgcolor="#FFFFFF">&nbsp;</td>
  <td bgcolor="#FFFFFF">&nbsp;</td>
  <td bgcolor="#FFFFFF">&nbsp;</td>
  <td bgcolor="#FFFFFF">&nbsp;</td>
</tr>
</table>
                    
                    
                    
			      </div>
				  </div>
			    <div style="clear: both;">&nbsp;</div>
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
		</div>
		<!-- end #content -->
	</div>
	<!-- end #page -->
<div id="footer">
	<p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
</div>
<!-- end #footer -->
</body>
</html>