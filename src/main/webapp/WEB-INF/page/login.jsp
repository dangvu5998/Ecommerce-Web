<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp"%>
	<title>Đăng nhập</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
							<div class="section-title">
								<h3 class="title">Đăng nhập</h3>
							</div>
							<c:if test="${!empty querySuccess}">
								<div class="text-success">${querySuccess}</div>
							</c:if>
						
							<c:if test="${not empty registrationSuccess}">
								<div class="text-success">${registrationSuccess}</div>
							</c:if>
							<c:if test="${not empty logout}">
								<div class="text-success">${logout}</div>
							</c:if>
							<form name="loginForm" action="j_spring_security_check" method="post">
								<div class="form-group">
									<label for="email">Email:</label>
									<input class="input" type="email" name="j_username" placeholder="Email">
								</div>
								<div class="form-group">
									<label for="email">Mật khẩu:</label>
									<input class="input" type="password" name="j_password" placeholder="Mật khẩu">
								</div>
								<c:if test="${not empty error}">
									<div class="text-danger">${error}</div>
								</c:if>
								<button type="submit" class="btn btn-primary" style="margin: auto; display: block;">Đăng nhập</button>
							</form>
							<div></div>
							<div>Chưa có tài khoản? <a class="btn btn-link" href="/registration">Đăng ký</a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="container" style="margin-top: 30px; margin-bottom: 180px;">
		<div class="col-md-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" align="center">Sign In</h3>
				</div>
				<div class="panel-body">

					will display after contactUs form registerd successfully
					<c:if test="${!empty querySuccess}">
						<div class="error" style="color: #ff0000;">${querySuccess}</div>
					</c:if>

					will display after registration form registerd successfully
					<c:if test="${not empty registrationSuccess}">
						<div class="error" style="color: #ff0000;">${registrationSuccess}</div>
					</c:if>
					will display after logged out successfull
					<c:if test="${not empty logout}">
						<div class="error" style="color: #ff0000;">${logout}</div>
					</c:if>

					<form name="loginForm"
						action="<c:url value="/j_spring_security_check"/>" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail"
									name="j_username" type="email">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="j_password" type="password">
							</div>
							<div class="checkbox">
								<c:if test="${not empty error}">
									<div class="error" style="color: #ff0000">${error}</div>
								</c:if>
							</div>
							Change this to a button or input when using this as a form
							<div id="button">
								<button type="submit" class="btn btn-sm btn-success"
									style="margin-right: 79px; margin-left: 60px">Login</button>
								<a href="<c:url value="/customer/registration"/>"
									class="btn btn-sm btn-success">Register</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div> -->

	</div>
	<%@ include file="footer.jsp"%>

</body>
</html>