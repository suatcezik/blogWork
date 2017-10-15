<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

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
           
           
            
          </ul>
        </div>
      </div>
    </nav>
<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 col-md-10 mx-auto">
			<c:if test="${ not empty posts }">
			<c:forEach var="item" items="${ posts }">
				<div class="post-preview">
					<a href='<s:url value="/${ item.getIid()}"></s:url>'> 
							<h2 class="post-title">
								<c:out value="${ item.getBaslik() }"></c:out>
							</h2></a>
					<p class="post-meta">
						Posted by <a> <c:out value="${ item.getEkleyen() }"></c:out></a>
						on
						<c:out value="${ item.getTarih() }"></c:out>
						on <b> <c:out value="${ item.getKategori() }"></c:out></b>
				</div>
				<hr>
				</c:forEach>
			</c:if>
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
