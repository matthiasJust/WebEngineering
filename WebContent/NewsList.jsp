<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="WebEngineering.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
	<%@ include file="../Templates/PageHead.jsp" %>
</head>
<body>

	<div class="container-fluid wrapper">
		
		<%@ include file="../Templates/PageHeader.jsp" %>
 
		<div class="row">
		 
			<article class="col-md-offset-1 col-md-10">


					<jsp:useBean id="meineBean" class="WebEngineering.KontaktBean" scope="session" />
 				 	
 				 	
 				 	
 				 	<c:forEach var="item" items="${meineBean}">
		 				 
		 				  
		  				<h1>${item.headline}</h1>
						<address>
							<span>Autor:</span> 
							<span>  ${item.vorname}, ${item.name}</span> <br /> 
							
							<span>Mail:</span>
							<a href="mailto:Lisa@müller.de"> ${item.mail}</a><br /> 
							
							<span>Datum:</span> 
							<span> ${item.datum}</span><br />
						</address>
		
						<p> ${item.nachricht}</p>
							<a href="/WebEngineering/NewsDetails.jsp?id= ${item.id}">Link zum Artikel</a>
						<hr />
			
 				 	
 				 	</c:forEach>
 				 	
 				 	
 				 	
 				 	
 				 	
 				 	
 			<!-- 	<h1><jsp:getProperty name="meineBean" property="headline" /></h1>
						<address>
							<span>Autor:</span> 
							<span><jsp:getProperty name="meineBean" property="vorname" />,  <jsp:getProperty name="meineBean" property="name" /></span> <br /> 
							
							<span>Mail:</span>
							<a href="mailto:Lisa@müller.de"><jsp:getProperty name="meineBean" property="mail" /></a><br /> 
							
							<span>Datum:</span> 
							<span><jsp:getProperty name="meineBean" property="datum" /></span><br />
						</address>
		
						<p><jsp:getProperty name="meineBean" property="nachricht" /></p>
							<a href="/WebEngineering/NewsDetails.jsp?id=<jsp:getProperty name="meineBean" property="id" />">Link zum Artikel</a>
						<hr />
 				 	
 				 	 -->
  				
			
			 
	 
		
 </article>
	</div>

	</div>
</body>
</html>