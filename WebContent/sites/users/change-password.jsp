<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="offset-4 col-6 mt-4">
	<form action="ChangePassword" method="post">
		<div class="card">
			<div class="card-header">Change Password</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="username">Username</label> <input type="text"
								 value="${username }"
								 class="form-control" name="username" id="username"
								 placeholder="Username">

						</div>
						<div class="form-group">
							<label for="password">New Password</label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="Password">
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="currentPassword">Current password</label> <input
								type="text" class="form-control" name="currentPassword"
								id="currentPassword"
								placeholder="Crrent Password">

						</div>
						<div class="form-group">
							<label for="confirmPassword">Confirm Password</label> <input
								type="text" class="form-control" name="confirmPassword"
								id="confirmPassword" 
								placeholder="Confirm Password">

						</div>
					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Change password</button>
			</div>
		</div>
	</form>
</div>
