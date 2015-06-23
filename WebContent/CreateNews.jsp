<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head> 
	<%@ include file="../Templates/PageHead.jsp" %>
</head>
<body>

	<div class="container-fluid wrapper">
			
			<%@ include file="../Templates/PageHeader.jsp" %>
		
			<div class="row">
			
			
			<section class="col-md-offset-1 col-md-10">

				<h1>Nachricht erstellen</h1>


				<form class="form-inline" action="DisplayNews.html" method="post">
 
 
					 <div class="row">
					 	<div class="col-md-12">
				 				<div class="form-group formId">
						 		 
						 			<input class="form-control" type="text" name="id" value="<%= UUID.randomUUID() %>"  readonly="readonly" />
			 					</div>
					 	</div>
					  </div>
 
 
					<fieldset class="row">
						<div class="col-md-12">



						

							<div class="form-group ">
								<label>vorname:</label> 
								<input class="form-control" type="text" name="vorname"  placeholder="vorname" />
							</div>


							<div class="form-group ">
								<label>name:</label> 
								<input type="text" class="form-control"  name="name"  placeholder="name" />
							</div>



							<div class="form-group ">
								<label>Mail:</label> 
								<input type="email" name="mail" class="form-control" placeholder="mail" />
							</div>

						</div>
					</fieldset>
					<hr />
					<fieldset class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>Überschrift</label> 
								<input type="text" name="headline" class="form-control"  placeholder="Überschrift" />
							</div>

							<div class="form-group ">
								<label>Datum:</label> 
								<input type="date" name="datum" class="form-control"  />
							</div>

						</div>
					</fieldset>
					<hr />
					<fieldset class="row">
						<div class="col-md-12">
							<div class="form-group TextFieldNews">
								<label>Nachricht:</label>
								<textarea name="nachricht" class="form-control"  placeholder="Nachricht"></textarea>
							</div>
						</div>
					</fieldset>
					<hr />
					<fieldset class="row">
						<div class="col-md-12 addMarginTop">
							<button type="submit" class="btn btn-default">Abschicken</button>

							<button type="reset" class="btn btn-default">Zurücksetzen</button>
						</div>
					</fieldset>

				</form>

			</section>
			
			</div>
	
	</div>

</body>
</html>