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
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.slidertron-0.1.js"></script>
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
			<!--<li><a href="#" class="first">Homepage</a></li>
			<li class="current_page_item"><a href="#">Blog</a></li>
			<li><a href="#">Portfolio</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>-->
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
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a></div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/pel01.jpg" width="726" height="335" alt="" /> <span>Una Loca Pelicula de Vampiros.</span> </div>
					<div class="slide"><img src="images/pel02.jpg" width="726" height="335" alt="" /> <span>Los Indestructibles.</span> </div>
					<div class="slide"><img src="images/pel03.jpg" width="726" height="335" alt="" /> <span>Casi Embarazada.</span> </div>
                                        <div class="slide"><img src="images/pel04.jpg" width="726" height="335" alt="" /> <span>Como Perros y Gatos 2.</span> </div>
                                        <div class="slide"><img src="images/pel05.jpg" width="726" height="335" alt="" /> <span>Enamorada de mi Ex.</span> </div>
                                        <div class="slide"><img src="images/pel06.jpg" width="726" height="335" alt="" /> <span>El Ultimo Maestro del Aire.</span> </div>
				</div>
			</div>
		</div>
		<div id="col3"><a href="#" class="next">&nbsp;</a></div>
	</div>
	<script type="text/javascript">

						$('#foobar').slidertron({
							viewerSelector:			'.viewer',
							reelSelector:			'.viewer .reel',
							slidesSelector:			'.viewer .reel .slide',
							navPreviousSelector:	'.previous',
							navNextSelector:		'.next',
							navFirstSelector:		'.first',
							navLastSelector:		'.last'
						});

					</script>
	<!-- end -->
</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
                    <div class="post">
                        <h2 class="title"><a href="#">Los Indestructibles</a></h2>
                        <div class="entry">
                            <p><a href="detalles.jsp"><img src="images/min02.jpg" alt="" width="163" height="227" /></a>                            </p>
                      <ul>
                                <li><strong>G&eacute;nero:</strong> Acci&oacute;n.</li>

                                <li><strong>Censura:</strong> Mayores de 14 años</li>

                                <li><strong>Horarios: </strong> 18:30 / 20:30</li>
                            </ul>
                        </div>
                        <div><a href="peliculaServlet?id=1" class="links">Ver m&aacute;s</a></div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">Casi Embarazada</a></h2>
                        <div class="entry">
                            <p><img src="images/min03.jpg" alt="" width="163" height="227" />
                            </p>
                            <ul>
                            <li><strong>G&eacute;nero:</strong> Comedia</li>

                            <li><strong>Censura:</strong> Mayores de 14 años</li>
                            <li><strong>Horarios: </strong> 18:30 / 20:30</li>
                            </ul>
                        </div>

                        <div><a href="peliculaServlet?id=2" class="links">Ver m&aacute;s</a></div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">Una Loca Película de Vampiros</a></h2>
                        <div class="entry">
                            <p><img src="images/min01.jpg" alt="" width="163" height="227" />
                            </p>
                            <ul>
                            <li><strong>G&eacute;nero:</strong> Comedia </li>

                            <li><strong>Censura:</strong>Mayores de 14 años.</li>

                            <li><strong>Horarios:</strong>18:30 / 20:30</li>
                            </ul>
                        </div>
                        <div><a href="peliculaServlet?id=3" class="links">Ver m&aacute;s</a></div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">El &Uacute;ltimo Maestro del Aire</a></h2>
                        <div class="entry">
                            <p><img src="images/min06.jpg" alt="" width="163" height="227" />
                            </p>
                            <ul>
                            <li><strong>G&eacute;nero:</strong> Acci&oacute;n</li

                            ><li><strong>Censura:</strong> Apta para todos</li>

                            <li><strong>Horarios:</strong> 18:30 / 20:30</li>
                            </ul>
                        </div>

                        <div><a href="peliculaServlet?id=4" class="links">Ver m&aacute;s</a></div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">Como perros y gatos 2</a></h2>
                        <div class="entry">
                            <p><img src="images/min04.jpg" alt="" width="163" height="227" />
                            </p>
                            <ul>
                            <li><strong>G&eacute;nero:</strong> Infantil</li>

                            <li><strong>Censura:</strong> Apta para todos</li>

                            <li><strong>Horarios:</strong> 18:30 / 20:30</li>
                            </ul>
                        </div>

                        <div><a href="peliculaServlet?id=5" class="links">Ver m&aacute;s</a></div>
                    </div>
                    <div class="post">
                        <h2 class="title"><a href="#">Enamorada de mi Ex</a></h2>
                        <div class="entry">
                            <p><img src="images/min05.jpg" alt="" width="163" height="227" />
                            </p>
                            <ul>
                            <li><strong>G&eacute;nero:</strong> Comedia</li>
                            <li><strong>Censura: </strong>Mayores de 14 años</li>

                            <li><strong>Horarios:</strong> 18:30 / 20:30</li>
                            </ul>
                        </div>

                        <div><a href="peliculaServlet?id=6" class="links">Ver m&aacute;s</a></div>
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
