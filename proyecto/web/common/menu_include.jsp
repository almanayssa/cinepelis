<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<h:form id="menuForm">
	<div id="menu">
		<ul>
                    <li>
                        <a href="inicio.jsp">
                            <h:outputText value="#{msgs.link_inicio}"/>
                        </a>
                    </li>
                    <li>
                        <a href="mantenimiento_cartelera.jsp">
                            <h:outputText value="#{msgs.link_gcartelera}"/>
                        </a>
                    </li>
                    <li>
                        <h:commandLink id="linkClientes" action="#{clienteBean.initClientes}">
                            <h:outputText value="#{msgs.link_gclientes}"/>
                        </h:commandLink>
                    </li>
                    <li>
                        <a href="mantenimiento_pelicula.jsp">
                             <h:outputText value="#{msgs.link_gpeliculas}"/>
                        </a>
                    </li>
                    <li>
                        <a href="venta_entrada.jsp">
                            <h:outputText value="#{msgs.link_rventa}"/>
                        </a>
                    </li>
                    <li>
                        <h:commandLink id="linkEstadisticas" action="#{estadisticaBean.initEstadistica}">
                            <h:outputText value="#{msgs.link_estadisticas}"/>
                        </h:commandLink>
                    </li>
		</ul>
	</div>
</h:form>