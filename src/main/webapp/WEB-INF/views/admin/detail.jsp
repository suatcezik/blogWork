<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<jsp:include page="/header"></jsp:include>
<!-- Main Content -->


<!-- Post Content -->
<article>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">

				<c:if test="${ not empty detail }">
					<c:forEach var="item" items="${ detail }">

						<h2 class="section-heading">
							<c:out value="${ item.getBaslik() }"></c:out>
						</h2>
							<c:out value="${ item.getAciklama() }" escapeXml="false" ></c:out><br>
							<c:out value="${ item.getKategori() }"></c:out><br>
							<c:out value="${ item.getEkleyen() }"></c:out><br>
								<c:out value="${ item.getTarih() }"></c:out><br>

					</c:forEach>
				</c:if>

			</div>
		</div>
	</div>
</article>


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
