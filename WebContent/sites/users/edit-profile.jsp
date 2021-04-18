<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<base href="/PolyAsg/"/>
<div class="col-8 offset-2">
	<form action="EditProfile" method="post">
		<div class="card">
			<div class="card-header">
				<b>Edit Profile</b>
			</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="col">
					<div class="form-group">
						<label for="password">Username</label> <input type="text"
							value="${user.username }"
							class="form-control" name="username" id="username"
							aria-describedby="helpId" placeholder="username"> <small
							id="usernamehelpId" class="form-text text-muted">Username
							is required</small>

					</div>
					<div class="form-group">
						<label for="fullname">Fullname</label> <input type="text"
							value="${user.fullname }"
							class="form-control" name="fullname" id="fullname"
							aria-describedby="helpId" placeholder="fullname"> <small
							id="fullnamehelpId" class="form-text text-muted">Fullname
							is required</small>

					</div>
				</div>

				<div class="col">
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" name="password" id="password"
							aria-describedby="helpId" placeholder="password"> <small
							id="passwordhelpId" class="form-text text-muted">Password
							is required</small>
					</div>
					<div class="form-group">
						<label for="email">Email</label> <input type="text"
							value="${user.email }"
							class="form-control" name="email" id="email"
							aria-describedby="helpId" placeholder="email"> <small
							id="emailhelpId" class="form-text text-muted">mail is
							required</small>
					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Save</button>
			</div>
		</div>
	</form>
</div>