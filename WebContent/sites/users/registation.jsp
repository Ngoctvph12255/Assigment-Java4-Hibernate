<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-8 offset-2">
	<form action="" method="post">
	${Routes.SITE_REGISTRATION_SHOW }  
		 <div class="card">
		
			<div class="card-header">
				<b>Registration</b>
			</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
			<div class="row">
			
					<div class="col">
						<div class="form-group">
							<label for="username">Username</label> 
							<input type="text"
								value="${user.username }"
								class="form-control" name="username" id="username"
								aria-describedby="usernameHId" placeholder="username"> <small
								id="usernameHId" class="form-text text-muted">username
								is required</small>
						</div>
						<div class="form-group">
							<label for="fullname">Fullname</label> <input type="text"
								value="${user.fullname }"
								class="form-control" name="fullname" id="fullname"
								aria-describedby="fullnameHId" placeholder="Fullname"> <small
								id="fullnameHId" class="form-text text-muted">Fullname
								is required</small>
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								
								class="form-control" name="password" id="password"
								aria-describedby="passwordHId" placeholder="Password"> <small
								id="passwordHId" class="form-text text-muted">Password
								is required</small>
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="text"
								value="${user.email }"
								class="form-control" name="email" id="email"
								aria-describedby="emailHId" placeholder="Email"> <small
								id="emailHId" class="form-text text-muted">Email is
								required</small>
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Sign Up</button>
			</div>
		</div>
	</form>
</div>