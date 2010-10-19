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
                    <li><a href="index.jsp">Home</a></li>
                    <li class="current_page_item"><a href="premium.jsp">Informaci&oacute;n Premium</a></li>
                    <li><a href="<%=request.getContextPath()%>/faces/login.jsp">Ingresar</a></li>
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
                        <h2 class="title"><a href="#">Premium Cl&aacute;sica</a></h2>
                        <div class="entry">
                          <p><img src="images/tarjeta-premium.jpg" alt="" width="180" height="142" /></p>
                          <ul>
                            <li><strong>Descripci&oacute;n:</strong> <br />
                            El Programa <strong>Cinepelis Premium Cl&aacute;sica</strong> es un novedoso y divertido programa, mediante el cual Cinepelis premia la lealtad de los clientes que lo visitan frecuentemente. El Programa Cinepelis Premium permite a los clientes que utilicen la tarjeta, acumular puntos con los cuales podr&aacute;n obtener entradas desde S/3.00. Asimismo, el Programa Cinepelis Premium permite acceder a promociones especiales en boleter&iacute;a y dulcer&iacute;a con la tarjeta por temporadas.</li>

                              <li><strong>Afiliaci&oacute;n:</strong><br />Afiliarse a la Tarjeta Premium es muy sencillo. S&oacute;lo debes acercarte a nuestro   m&oacute;dulo de afiliaci&oacute;n, <strong>presentar tu   DNI y efectuar el pago &uacute;nico de S/2.00</strong>. La tarjeta te la entregamos al   instante.Los ni&ntilde;os mayores de 10 a&ntilde;os tambi&eacute;n podr&aacute;n afiliarse a la Tarjeta   Premium.</li>

                              <li><strong>Acumular puntos: </strong><br />
                              Es muy sencillo. <strong>Cada vez que adquieras una entrada en boleter&iacute;a,   deber&aacute;s presentar tu Tarjeta Cinepelis Premium y acumular&aacute;s 1 punto</strong>. Es   indispensable la presentaci&oacute;n de tu Tarjeta en boleter&iacute;a para hacer efectivo tu   puntaje.</li>
                          </ul>
                        </div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">Premium Oro</a></h2>
                        <div class="entry">
                            <p><img src="images/tarjeta-oro.jpg" alt="" width="180" height="142" /></p>
                            <ul>

                                        <li><strong>Descripci&oacute;n:</strong> <br />
                                        </li>
                                        Es la nueva tarjeta con la cual se identifica a los<strong> Clientes Premium   Oro</strong> m&aacute;s frecuentes. La nueva tarjeta tendr&aacute; una vigencia de un a&ntilde;o, a   partir del momento de su emisi&oacute;n.<br />
                                        Su dise&ntilde;o es completamente distinto a la   tarjeta actual.
                                                    <li><strong>Afiliaci&oacute;n:</strong><br />
                                                    Para poder acceder al programa Oro, el cliente deber&aacute; acumular un m&iacute;nimo de 30   visitas al a&ntilde;o a m&aacute;s.</li>
                                                    <li><strong>Acumular puntos: </strong><br />
                                                    </li>
                                                    Es muy sencillo. <strong>Cada vez que adquieras una entrada en boleter&iacute;a,   deber&aacute;s presentar tu Tarjeta Cinepelis Premium y acumular&aacute;s 1 punto</strong>. Es   indispensable la presentaci&oacute;n de tu Tarjeta en boleter&iacute;a para hacer efectivo tu   puntaje.
                            </ul>
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
</html>
