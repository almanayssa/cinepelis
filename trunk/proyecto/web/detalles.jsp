<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
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
                    <li class="current_page_item"><a href="index.jsp">Home</a></li>
                    <li ><a href="premium.jsp">Informaci&oacute;n Premium</a></li>
                    <li ><a href="<%=request.getContextPath()%>/faces/login.jsp">Ingresar</a></li>
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
                        <h2 class="title"><a href="#">${pelicula.nombre}</a></h2>
                        <p><img src="<%=request.getContextPath()%>${pelicula.rutaImagen}"/></p>
                        <p>Despu&eacute;s de a&ntilde;os de corrupci&oacute;n y asesinatos de rehenes, Estados Unidos, con la   ayuda de otras naciones, arma en secreto un equipo con su personal militar m&aacute;s   capacitado para derrocar a un dictador que ha causado estragos en un pa&iacute;s de   Am&eacute;rica latina durante m&aacute;s de 20 aÃ±os.</p>
                        <ul>
                            <li><strong>Pa&iacute;s:</strong> Estados Unidos</li>
                        </ul>
                        <ul>
                            <li><strong>A&ntilde;o:</strong> 2010</li>
                        </ul>
                        <ul>
                            <li><strong>Director:</strong> ${pelicula.director}</li>
                        </ul>
                        <ul>
                            <li><strong>Gui&oacute;n: </strong>Dave Callaham, Sylvester Stallone</li>
                        </ul>
                        <ul>
                            <li><strong>Actores:</strong> Sylvester Stallone, Bruce Willis, Arnold   Schwarzenegger, Jason Statham, Jet Li, Terry Crews, Randy Couture, Mickey   Rourke, Dolph Lundgren, Steve Austin.</li>
                        </ul>
                        <!--<li><strong>GÃ©nero:</strong> </li>-->
                        <ul>
                            <li><strong>Duraci&oacute;n:</strong> ${pelicula.duracionMinutos} minutos.</li>
                        </ul>
                        <ul>
                            <li><strong>Calificaci&oacute;n:</strong> ${pelicula.tipoCensura}</li>
                        </ul>
                        <ul>
                            <li><strong>Sitio Oficial:</strong> <a href="http://www.widepictures.es/losmercenarios/" rel="nofollow">http://www.widepictures.es/losmercenarios/</a></li>
                        </ul>
                        <ul>
                            <li><strong>Horarios:</strong> 18:30 / 20:30</li>
                        </ul>
                        <ul> <li><strong>Disponibilidad:</strong> 20/50</li></ul>

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

<div id="footer">
	<p>Copyright (c) 2010 Cinepelis.com. All rights reserved.</p>
</div>
<!-- end #footer -->
</body>
</html>
