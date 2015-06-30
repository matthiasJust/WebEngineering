<%@page import="java.time.DateTimeException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="WebEngineering.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.LinkedList"%>




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


		 
 				 	 
 			 
 			<%  
 			 
 			for(KontaktBean elem : DisplayNews.KontaktBean){
 				
 				out.write("<h1>" + elem.getHeadline() + "</h1>");
 				out.write("<address>");
 				out.write("<span>Autor:</span>");
 				out.write("<span>" + elem.getVorname() + "," + elem.getName() +   "</span> <br /> ");
 				out.write("<span>Mail:</span>");
 				out.write("<a href='mailto: " + elem.getMail() + "'>" +  elem.getMail()  + "</a><br /> ");
 				out.write("<span>Datum:</span>");
 				out.write("<span>" +  elem.getDatum() + "</span><br />");
 				out.write("</address>");
 				
 				out.write("<p>" +  elem.getNachricht() +  "</p>");
 				out.write("<a href='/WebEngineering/NewsDetails?id=" + elem.getId() + " '>Link zum Artikel</a>");
 				out.write("<hr />");
 			
 			}			
 			%>
 			 
 		 
 				 	  
  				
			
			 
	 
		
 </article>
	</div>

	</div>
</body>
</html>