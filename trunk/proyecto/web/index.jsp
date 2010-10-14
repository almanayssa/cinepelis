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
					<li class="current_page_item"><a href="index.jsp">Home</a></li>
					<li ><a href="premium.jsp">Informacion Premium</a></li>
                                        <li ><a href="<%=request.getContextPath()%>/faces/login.jsp">Ingresar</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="cart">
						
						<div class="entry">
							<p><a href="detalles.jsp"><img src="images/Los-Indestructibles.jpg" alt="" width="163" height="227" /></a>
					      </p>
						  <p><strong>Los Indestructibles</strong>
                            <!--<li><strong>Género:</strong> </li>-->
                          </p>
						  <ul>
                            <li><strong>Genero:</strong> Accion.</li>
                            
                              <li><strong>Censura:</strong> Mayores de 14 años</li>
                          
                              <li><strong>Horarios: </strong> 18:30 / 20:30</li>
 </ul>
</div>
</div>
<div class="cart">
<div class="entry">					    
  <p><a href="detalles.jsp"><img src="images/movie1274761627.jpg" alt="" width="163" height="227" /></a>
    </p>
  </p>
  <p><strong>Casi embarazada </strong>                            </p>
  <ul>
    <li><strong>Genero:</strong> Comedia</li>
                            
                              <li><strong>Censura:</strong> Mayores de 14 años</li>
                              <li><strong>Horarios: </strong> 18:30 / 20:30</li>
              </ul>
</div></div>
                              <div class="cart">					    
<div class="entry">
  <p><img src="images/10a9aavampiros301x464p.jpg" alt="" width="163" height="227" />
    </p>
  </p>
  <p><strong>Una loca película de vampiros</strong> </p>

                            <ul>
                              <li><strong>Género:</strong> Comedia </li>
                            
                              <li><strong>Censura:</strong>Mayores de 14 años.</li>
                            
                              <li><strong>Horarios:</strong>18:30 / 20:30</li>
                            </ul>
              
</div></div>
<div class="cart">
<div class="entry">
              <p><img src="images/the-last-airbender-poster.jpg" alt="" width="163" height="227" />
              </p>
              </p>
              <p><strong>El último maestro del aire </strong> </p>
              <ul>
              <li><strong>Género:</strong> Accion</li
              
                ><li><strong>Censura:</strong> Apta para todos</li>
              
                              <li><strong>Horarios:</strong> 18:30 / 20:30</li>
                            </ul>
                            
</div></div>
<div class="cart">
<div class="entry">						    
  <p><img src="images/trailer-como-perros-y-gatos-2.jpg" alt="" width="163" height="227" />
    </p>
  </p>
  <p><strong>Como perros y gatos 2</strong></p>
  <ul>
			    <li><strong>Género:</strong> Infantil</li>
  
                              <li><strong>Censura:</strong> Apta para todos</li>
              
                              <li><strong>Horarios:</strong> 18:30 / 20:30</li>
              </ul>
</div></div>
<div class="cart">
        <div class="entry">
              <p><img src="images/18dfadaenamorada301x464p.jpg" alt="" width="163" height="227" />
                </p>
              </p>
              <p><strong>Enamorada de mi ex </strong>							</p>
              <ul>
			    <li><strong>Genero:</strong> Comedia</li>
                              <li><strong>Censura: </strong>Mayores de 14 años</li>
                            
                              <li><strong>Horarios:</strong> 18:30 / 20:30</li>
              </ul>
</div>			
				  </div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
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
