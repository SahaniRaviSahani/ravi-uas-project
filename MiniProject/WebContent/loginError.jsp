<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="login.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="bgimg">
		<img src="./feed1.jpg" alt="Not Found" width="25%" height="25%" />
		<nav class="navbar navbar-expand-lg navbar-light bg-dark sticky-top">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#" style="color: white">University
				Admission System</a>
		</nav>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
			<div class="alert alert-danger ">Invalid User.</div>
				<form action="login" method="post">
					<div class="form-group row" style="width: 500px">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="username"
								placeholder="Username">
						</div>
					</div>
					<div class="form-group row" style="width: 500px">
						<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" name="password"
								placeholder="Password">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
					</div>
				</form>
				<div id="b13">
					<h6>
						<a href="ForgotPassword.html" style="margin-top: 42px;">forgot
							password?</a>
					</h6>
				</div>
			</div>
		</div>

	</div>
</body>
</html>