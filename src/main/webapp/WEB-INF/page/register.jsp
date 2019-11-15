<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp"%>
	<title>Đăng ký</title>

</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="section-title">
						<h3 class="title">Đăng ký</h3>
					</div>
					<form:form method="post" action="/register" commandName="customer" enctype="multipart/form-data">
						<div class="form-group">
							<form:label path="user.emailId">Email:</form:label>
							<form:input class="input" type="email" path="user.emailId" placeholder="Email" />
						</div>
						<div class="form-group">
							<form:label path="user.password">Mật khẩu:</form:label>
							<form:input class="input" type="password" path="user.password" placeholder="Mật khẩu"/>
						</div>
						<div class="form-group">
							<form:label path="lastName">Họ:</form:label>
							<form:input class="input" type="text" path="lastName" placeholder="Họ" />
						</div>
						<div class="form-group">
							<form:label path="firstName">Tên:</form:label>
							<form:input class="input" type="text" path="firstName" placeholder="Tên" />
						</div>
						<div class="form-group">
							<form:label path="customerPhone">Số điện thoại</form:label>
							<form:input class="input" type="text" path="customerPhone" placeholder="Số điện thoại" />
						</div>
						<c:if test="${not empty error}">
							<div class="text-danger">${error}</div>
						</c:if>
						<button type="submit" class="primary-btn" style="margin: auto; display: block;">Đăng ký</button>
					</form:form>
					<div></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>

	<!-- Validating Password -->
	<script type="text/javascript">
		function Validate() {
			var password = document.getElementById("pass").value;
			var confirmpass = document.getElementById("confirmpass").value;
			if (password != confirmpass) {
				alert("Password does Not Match.");
				return false;
			}
			return true;
		}
	</script>
	<%@ include file="generalJS.jsp"%> 
</body>
</html>
