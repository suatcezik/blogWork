<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

  <jsp:include page="/header"></jsp:include>
    
    
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="<s:url value="/"></s:url>"> Suat Cezik - Blog</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
           
              <a class="nav-link" href=" <s:url value="/postadd"></s:url>">İÇERİK EKLE</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href=" <s:url value="/category"></s:url>">KATEGORİ EKLE</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<s:url value="cikis"></s:url>">ÇIKIŞ YAP</a>
            </li>
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
              <h3 class="box-title">Kategori Ekle</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form" action='<s:url value="/categoryadd"></s:url>' method="post">
                <!-- text input -->
                <div class="form-group">
                  <label>Kategori Adı</label>
                  <input name="kategori" type="text" class="form-control" placeholder="Kategori giriniz...">
                </div>
                <button type="submit" class="btn btn-info pull-right">Ekle</button>
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
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            </ul>
            <p class="copyright text-muted">Copyright &copy; Your Website 2017</p>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
	<jsp:include page="/footerjs"></jsp:include>
  </body>

</html>
