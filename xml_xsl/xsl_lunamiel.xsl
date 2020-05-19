<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Luna de miel</title>
				<style type="text/css">
					
					td, th{
						border: 1px black solid;
						
					}
					th{
						color: red;
						background-color: blue;
						font-size: 210%;
					}
					
					.des{
						color: maroon;
						
						
					}
					table{
						width: 40%;
					}
					tr{
						font-size: 400%;
					}
					.lista1{
						list-style: none; 
					}
					.lista1 a {
						color:red;
						text-decoration: none;
						font-size: 3em;
					}
				</style>
			</head>
			<body>
				<header></header>
				<nav>
					<ul class="lista1">
						<li><a href="../index.html" target="_blank">HOME</a></li>
						<li><a href="https://www.logitravel.com/cruceros/" target="_blank">CRUCEROS</a></li>
						<li><a href="./paginas/islas.html" target="_blank">ISLAS/HOTELES</a></li>
						<li><a href="https://www.kayak.es/flights" target="_blank">VUELOS</a></li>
						<li><a href="./paginas/Formulario.html" target="_blank">CONTACTO</a></li>
					</ul>
				</nav>
					<table>
						<th>Destino</th>
						<th>Hotel</th>
						<th>fotografia</th>
						<xsl:for-each select="Luna_de_miel/lugar">
							<tr>
								<td class="des"><xsl:value-of select="Destino" ></xsl:value-of></td>
								<td>
									<img  width="700px">
										<xsl:attribute name="src">
											<xsl:value-of select="Hotel"></xsl:value-of>
										</xsl:attribute>
									</img>
								</td>
								
								<td>
									<img  width="700px">
										<xsl:attribute name="src">
											<xsl:value-of select="fotografia"></xsl:value-of>
										</xsl:attribute>
									</img>
								</td>
							</tr>
							
						</xsl:for-each>
					</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

