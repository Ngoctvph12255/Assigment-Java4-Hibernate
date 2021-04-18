<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
	<div class="col-9">
		<div class=" row p-2">
		<c:forEach var="item" items="${videos }">
			<div class="col-3 mt-2">
				<div class="card text-center">
					<div class="card-body">
						<img src="${  empty item.poster ? 'images/BackgroundCMD.jpg' : item.poster}" alt="Error" width="90%" class="img-fluid">

						<div class="row boder-top mt-2">
							<b>${item.title }</b>
						</div>
					</div>
					</div>
					<div class="card-footer">
						<a href="LikeVideo?videoId=${item.videoId }" class="${flagLike == true ? 'btn btn-success' :'btn btn-danger' }">Like</a> 
						<a href="ShareVideo?videoId=${item.videoId }"
							class="btn btn-info">Share</a>
				</div>
			</div>
			</c:forEach>
	<div class="row">
		<div class="col">
			<div class="d-flex justify-content-center">
				<ul class="pagination">
					<li class="page-item"><a
						href=""
						class="page-link" >Previous</a></li>
					<li class="page-item"><a class="page-link">${ page } / ${ Math.ceil(countUsers/Limit)} 
					</a></li>
					<li class="page-item"><a
						href=""
						class="page-link" >Next</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>