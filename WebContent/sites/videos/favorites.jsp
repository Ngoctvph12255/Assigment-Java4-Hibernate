<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col">
	<div class="row p-2">
		<div class="clo-3 mt-2">
			<div class="card">
				<div class="card-body">
					<c:forEach var="item" items="${myfavList }">
					<img src="images/BackgroundCMD.jpg" alt="" class="img-fluid">
					<div class="row">
						<b>${item.likeDate }</b>
					</div>
				</div>
				<div class="card-footer text-muted">
					<a href="" class="btn btn-primary">Unlike</a> <a href=""
						class="btn btn-info">Share</a>
				</div>
			</div>
			</c:forEach>
		</div>

	</div>


	<div class="row">
		<div class="col">
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link" href="#"></a></li>
					<li class="page-item"><a class="page-link" href="#"></a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>