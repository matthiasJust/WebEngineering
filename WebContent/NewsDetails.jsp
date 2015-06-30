<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
	<%@ include file="Templates/PageHead.jsp" %>
</head>
<body>

	<div class="container-fluid wrapper">
		
		<%@ include file="Templates/PageHeader.jsp" %>
 
		<div class="row">
		 
			
			<article class="col-md-offset-1 col-md-10">


					<jsp:useBean id="NewsDetailsBean" class="WebEngineering.KontaktBean" scope="session" />
 				 	
 				 	



			<h1><jsp:getProperty name="NewsDetailsBean" property="headline" /></h1>
						<address>
							<span>Autor:</span> 
							<span><jsp:getProperty name="NewsDetailsBean" property="vorname" />,  <jsp:getProperty name="NewsDetailsBean" property="name" /></span> <br /> 
							
							<span>Mail:</span>
							<a href="mailto:Lisa@müller.de"><jsp:getProperty name="NewsDetailsBean" property="mail" /></a><br /> 
							
							<span>Datum:</span> 
							<span><jsp:getProperty name="NewsDetailsBean" property="datum" /></span><br />
						</address>
		
						<p><jsp:getProperty name="NewsDetailsBean" property="nachricht" /></p>
						 
				
			</article>
	 
		
 
	</div>

	</div>
</body>
</html>