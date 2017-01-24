<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Programmer: Billy Chandler
	 http://www.radford.edu/~bchandler3
	 -->
	<xsl:output method="html" />
	<xsl:template match="/">
		<html>
			<head>
				<title>List of films in the Disney Classics series</title>
			</head>
			<body>
				<h1>List of films in the Disney Classics series</h1>
				<table border="1">
					<tr>
						<th>No.</th>
						<th>Title</th>
						<th>Release Date</th>
					</tr>
					<xsl:for-each select="disney_classics/film">
						<tr>
							<td>
								<xsl:value-of select="position()" />
							</td>
							<td>
								<xsl:value-of select="title" />
							</td>
							<td>
								<xsl:value-of select="releasedate" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<p style="font-style:italic;font-size:small">
					<b>Source:</b><br/>
					Beck, J. (2013). The Animated Movie Guide. Retrieved November 19, 2016, 
					from http://cartoonresearch.com/index.php/animated-movie-guide-1/
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>