<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="Templates/PageHead.jsp"%>
</head>
<body>

	<div class="container-fluid wrapper">

		<%@ include file="Templates/PageHeader.jsp"%>

		<div class="row">


			<div class="col-md-offset-2 col-md-4">


				<div class="panel panel-default">
					<div class="panel-heading">Antworten des Webservice</div>
					<div class="panel-body PostsBox">
						<ul>
							<!-- BennContent comes here  -->
						</ul>
					</div>
				</div>

			</div>


			<div class="col-md-4">

				<div class="panel panel-default">
					<div class="panel-heading">TextBox</div>
					<div class="panel-body">
						<textarea></textarea>
						<br><span class="lengthNote"></span>
					</div>
				</div>

			</div>

		</div>

	</div>
</body>
</html>