<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="offset-4 col-4">
	<form action="" method="post">
		<div class="card">
			<div class="card-header">
				<b>Login to System</b>
			</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						class="form-control" name="username" id="username"
						aria-describedby="usernamehid" placeholder="username"> <small
						id="usernamehid" class="form-text text-muted">username is
						required</small>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="text"
						class="form-control" name="password" id="password"
						aria-describedby="passwordhid" placeholder="Password"> <small
						id="passwordhid" class="form-text text-muted">Password is
						required</small>
				</div>
				<div class="form-check form-check-inline">
					<label><input type="radio" class="form-check-input"
						name="remember">Remember me</label>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Login</button>
			</div>
		</div>
	</form>
</div>