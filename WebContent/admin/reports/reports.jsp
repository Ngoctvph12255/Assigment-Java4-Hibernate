<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="favorites-tab" data-toggle="tab"
			href="#favorites" role="tab" aria-controls="favorites"
			aria-selected="true">Favorites</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="favorite_users-tab" data-toggle="tab" href="#favorite_users"
			role="tab" aria-controls="favorite_users" aria-selected="false">Favorite
				Users</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="share_friends-tab" data-toggle="tab" href="#share_friends"
			role="tab" aria-controls="favorite_users" aria-selected="false">Share
				Friends</a></li>


	</ul>


	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="favorites" role="tabpanel"
			aria-labelledby="favorites-tab">
			<table class="table table-border mt-3">
				<tr>
					<td>Video Title</td>
					<td>Favorites Count</td>
					<td>Lasted Date</td>
					<td>Oldest Date</td>
				</tr>
				<c:forEach var="item" items= "${ favList }">
				<tr>
					<td>${item.videoTitle }</td>
					<td>${item.favoriteCount } </td>
					<td>${item.newsDate } </td>
					<td>${item.oldestDate } </td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div class="tab-pane fade" id="favorite_users" role="tabpanel"
			aria-labelledby="favorite_users-tab">
			<form action="" method="get">
				<div class="row mt-3">
					<div class="col">
						<div class="form-inline">
							<div class="form-group">
								<label> Video title <select name="videoUserId" id="videoUserId"
									class="form-control ml-3 mr-3">
									<c:forEach var="item" items= "${ vidList }">
										<option value="${ item.videoId }"
										 ${ item.videoId == videoUserId? 'selected' : '' }>
										 ${ item.title }</option>
									</c:forEach>
								</select>
								</label>
								<button class="btn btn-info">Report</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col mt-3">
						<table class="table table-bordered">
							<tr>
								<td>Username</td>
								<td>Fullname</td>
								<td>Email</td>
								<td>Favorite Date</td>
							</tr>
							<c:forEach var="item" items= "${ favUsers }">
							<tr>
								<td>${ item.username }</td>
								<td>${ item.fullname }</td>
								<td>${ item.email }</td>
								<td>${ item.likeDate }</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>

		</div>

		<div class="tab-pane fade" id="share_friends" role="tabpanel"
			aria-labelledby="share_friends-tab">
			<form action="" method="get">
				<div class="row mt-3">
					<div class="col">
						<div class="form-inline">
							<div class="form-group">
								<label> Video title <select name="videoUserId" id="videoUserId"
									class="form-control ml-3 mr-3">
									<c:forEach var="item" items= "${ vidList }">
										<option value="${ item.videoId }"  ${ item.videoId == videoUserId? 'selected' : '' } >${ item.title }</option>
									</c:forEach>
								</select>
								</label>
								<button class="btn btn-info">Report</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col mt-3">
						<table class="table table-bordered">
							<tr>
								<td>Sender Name</td>
								<td>Sender Email</td>
								<td>Receiver</td>
								<td>Send Date</td>
							</tr>
							<c:forEach var="item" items= "${ favUsers }">
							<tr>
								<td>${ item.username }</td>
								<td>${ item.fullname }</td>
								<td>${ item.email }</td>
								<td>${ item.likeDate }</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</form>

		</div>
	</div>
</div>