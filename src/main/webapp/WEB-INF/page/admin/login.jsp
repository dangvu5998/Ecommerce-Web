<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<html>

<head>
    <title>Đăng nhập</title>
</head>

<body>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <div class="login-panel panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Đăng nhập</h3>
            </div>
            <div class="panel-body">
                <form role="form" action="<c:url value="/j_spring_security_check"/> " method="post">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="Tên tài khoản" name="j_username" type="text"
                                   autofocus>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Mật khẩu" name="j_password" type="password"
                                   value="">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="Remember Me">Nhớ tài khoản
                            </label>
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Đăng nhập"></input>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>