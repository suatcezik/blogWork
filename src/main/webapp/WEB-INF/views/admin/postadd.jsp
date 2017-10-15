<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<jsp:include page="/header"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="<s:url value="/"></s:url>"> Suat
			Cezik - Blog</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href=" <s:url value="/postadd"></s:url>">İÇERİK EKLE</a></li>
				<li class="nav-item"><a class="nav-link"
					href=" <s:url value="/category"></s:url>">KATEGORİ EKLE</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<s:url value="cikis"></s:url>">ÇIKIŞ YAP</a></li>
			</ul>
		</div>
	</div>
</nav>
<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-10 mx-auto">


			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">İçerik Ekle</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<form role="form" action='<s:url value="/postekleme"></s:url>'
						method="post">
						<!-- text input -->
						<div class="form-group">
							<label for="sBaslik" class="col-sm-12 control-label">Başlık</label>
							<div class="form-group col-sm-12">
								<input name="baslik" type="text" class="form-control"
									placeholder="İçerik başlık giriniz...">
							</div>
						</div>
						<c:if test="${not empty category }">

							<div class="form-group">
								<label for="sKategori" class="col-sm-12 control-label">Kategori</label>
								<div name="" sKategori"" class="form-group col-sm-12">
									<select name="kategori"
										class="form-control select2 select2-hidden-accessible"
										style="width: 100%;" tabindex="-1" aria-hidden="true">
										<c:forEach var="item" items="${ category }">
											<option value="<c:out value='${ item.getKatid() }'></c:out>"><c:out value='${ item.getKategori() }'></c:out></option>
										</c:forEach>
									</select>
								</div>
							</div>
						</c:if>


						<div class="form-group">
							<label for="sAciklama" class="col-sm-12 control-label">Açıklama</label>
							<div class="col-sm-12">
								<textarea id="editor1" name="aciklama" rows="10" cols="80">
											</textarea>
							</div>
						</div>



						<div class="col-xs-4 pull-right">
							<p></p>
							<button type="submit" class="btn btn-primary btn-block btn-flat">Ekle</button>
						</div>
					</form>
				</div>
				<!-- /.box-body -->
			</div>


		</div>
	</div>
</div>

<hr>

<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<ul class="list-inline text-center">
					<li class="list-inline-item"><a href="#"> <span
							class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
					<li class="list-inline-item"><a href="#"> <span
							class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
					<li class="list-inline-item"><a href="#"> <span
							class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-github fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
				</ul>
				<p class="copyright text-muted">Copyright &copy; Your Website
					2017</p>
			</div>
		</div>
	</div>
</footer>

<!-- Bootstrap core JavaScript -->
<jsp:include page="/footerjs"></jsp:include>
</body>

</html>
