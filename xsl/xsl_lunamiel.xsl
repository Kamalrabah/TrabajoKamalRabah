<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Luna de miel</title>
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-
				awes	ome.min.css"/>											
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
					a {
						color:red;
						text-decoration: none;
						font-size: 3em;
						padding-left: 5%;
					}
					<!--Iconos-->
					.fa {
						padding: 20px;
						width: 30px;
						text-align: center;
						text-decoration: none;
					}
					.fa-facebook {
						background: #3B5998;
						color: white;
					}
					  
					.fa-twitter {
						background: #55ACEE;
						color: white;
					}
					
					.fa-youtube {
						background: #bb0000;
						color: white;
					}
					  
					.fa-instagram {
						background: #125688;
						color: white;
					}
					.iconos{
						margin-left:30%;
					}
				</style>
			</head>
			<body>
			<main>
				<header class="iconos">
					<a href="#" class="fa fa-facebook"></a>
					<a href="#" class="fa fa-twitter"></a>
					<a href="#" class="fa fa-youtube"></a>
					<a href="#" class="fa fa-instagram"></a>
			   </header> 
				<nav>
							<a href="../index.html">HOME</a>
							<a href="https://www.logitravel.com/cruceros/" target="_blank">CRUCEROS</a>
							<a href="../paginas/islas.html" target="_blank">ISLAS/HOTELES</a>
							<a href="https://www.kayak.es/flights" target="_blank">VUELOS</a>
							<a href="../paginas/Formulario.html" target="_blank">CONTACTO</a>
				</nav>
				<table>
					<th>Destino</th>
					<th>Hotel</th>
					<th>fotografia</th>
					<xsl:for-each select="Luna_de_miel/lugar">
						<tr>
							<td class="des">
								<xsl:value-of select="Destino"/>
							</td>
							<td>
								<img width="700px">
									<xsl:attribute name="src"><xsl:value-of select="Hotel"/></xsl:attribute>
								</img>
							</td>
							<td>
								<img width="700px">
									<xsl:attribute name="src"><xsl:value-of select="fotografia"/></xsl:attribute>
								</img>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</main>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
