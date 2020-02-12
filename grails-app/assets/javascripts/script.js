$(function() {
	$("#firstname_error_message").hide();
	$("#lastname_error_message").hide();
	$("#username_error_message").hide();
	$("#password_error_message").hide();
	$("#confirm_password_error_message").hide();


	var error_firstname=false;
	var error_lastname=false;
	var error_username = false;
	var error_password = false;
	var error_confirm_password = false;
	var error_email = false;

	$("#form_firstname").focusout(function () {

		check_firstname();
	});
	$("#form_lastname").focusout(function () {

		check_lastname();
	});

	$("#form_username").focusout(function() {

		check_username();
		
	});

	$("#form_password").focusout(function() {

		check_password();
		
	});

	$("#form_confirm_password").focusout(function() {

		check_confirm_password();
		
	});


	function check_firstname() {
		var firstname_length = $("#form_firstname").val().length;
		if(firstname_length<3 || firstname_length>15){
			$("#firstname_error_message").html("First name should between 3-15 characters");
			$("#firstname_error_message").show();
			error_firstname=true;
		}

	}
	function check_lastname() {
		var lastname_length = $("#form_lastname").val().length;
		if(lastname_length<3 || lastname_length>10){
			$("#lastname_error_message").html("Last name should between 3-10 characters");
			$("#lastname_error_message").show();
			error_lastname=true;
		}

	}

	function check_username() {
	
		var username_length = $("#form_username").val().length;
		
		if(username_length < 5 || username_length > 20) {
			$("#username_error_message").html("Should be between 5-20 characters");
			$("#username_error_message").show();
			error_username = true;
		} else {
			$("#username_error_message").hide();
		}
	
	}

	function check_password() {
	
		var password_length = $("#form_password").val().length;
		
		if(password_length < 8) {
			$("#password_error_message").html("At least 8 characters");
			$("#password_error_message").show();
			error_password = true;
		} else {
			$("#password_error_message").hide();
		}
	
	}

	function check_confirm_password() {
	
		var password = $("#form_password").val();
		var confirm_password = $("#form_confirm_password").val();
		
		if(password !=  confirm_password) {
			$("#confirm_password_error_message").html("Passwords don't match");
			$("#confirm_password_error_message").show();
			error_confirm_password = true;
		} else {
			$("#confirm_password_error_message").hide();
		}
	
	}



	$("#registration_form").submit(function() {
											
		error_username = false;
		error_password = false;
		error_confirm_password = false;
		error_lastname=false;
		error_firstname=false;

		check_firstname();
		check_lastname();
		check_username();
		check_password();
		check_confirm_password();

		if(error_firstname==false && error_lastname==false && error_username == false && error_password == false && error_confirm_password == false ) {
			return true;
		} else {
			return false;	
		}

	});

});