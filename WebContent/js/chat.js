$(document).ready(function() {

	function callWebService() {

		$.ajax({
			url : "/resources/zeit/news",
			method : "GET",
		}).done(function(data) {

			// Process response code
			// Jquery foreach + append()

		}).fail(function() {

			$(".PostsBox ul").append("<li style='display: none;'> Sorry! Webservice crashed! </li>");
			$(".PostsBox ul li:last").fadeIn("slow");
		});
	}

	setInterval(callWebService, 10000);

	$("textarea").change(function() {

		var i = (240 - $("textarea").val().length);

		$(".lengthNote").html("Es verbleiben: " + i + " Zeichen!");

		if (i < 1) {

			$(".lengthNote").html("<h3> Sorry to much chars</h2>");
			$("textarea").css("border", "1px solid red")
		}

	});

});