<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>blog suatcezik</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->

<jsp:include page="/headercss"></jsp:include>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">

			<a href='<s:url value="/"></s:url>'><b>blog</b> by byczk</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">

			<c:if test="${ not empty hata }">
				<div class="alert alert-danger fade in alert-dismissable">
					<a href="#" class="close" data-dismiss="alert" aria-label="close"
						title="close">×</a> <strong>Hata! </strong>Kullanıcı adı ya da şifre hatalı.
				</div>
			</c:if>

			<p class="login-box-msg">Admin Giriş Paneli</p>


			<form action='<s:url value="/giris"></s:url>' method="post">
				<div class="form-group has-feedback">
					<input name="email" type="email" class="form-control"
						placeholder="Email"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input name="parola" type="password" class="form-control"
						placeholder="Parola"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> Beni Hatırla
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Giriş
							Yap</button>
					</div>
					<!-- /.col -->

				</div>



			</form>
		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

	<!-- jQuery 3 -->
	<jsp:include page="/footerjs"></jsp:include>
	<script src='<s:url value="/resources/dist/js/jqurery.min.js"></s:url>'></script>
	<script
		src='<s:url value="/resources/dist/js/bootstrap.min.js"></s:url>'></script>
</body>
</html>
