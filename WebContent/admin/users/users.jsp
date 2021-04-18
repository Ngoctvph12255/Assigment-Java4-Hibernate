<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="videoediting-tab" data-toggle="tab"
			href="#videoediting" role="tab" aria-controls="videoediting"
			aria-selected="true">User Editing</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="videolist-tab" data-toggle="tab" href="#videolist" role="tab"
			aria-controls="videolist" aria-selected="false">User List</a></li>

	</ul>


	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoediting"
			role="tabpanel" aria-labelledby="videoediting-tab">
			<form action="" method="post">
				<div class="card">

					<div class="card-body">
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="username">Username</label> <input type="text"
										class="form-control" name="username" id="username"
										aria-describedby="helpId" placeholder="Username"> <small
										id="helpId" class="form-text text-muted">Username</small>
								</div>
								<div class="form-group">
									<label for="fullname">Fullname</label> <input type="text"
										class="form-control" name="fullname" id="fullname"
										aria-describedby="fulnamehelpId" placeholder="Fullname">
									<small id="fulnamehelpId" class="form-text text-muted">Fullname
										is required</small>
								</div>
							</div>


							<div class="col">
								<div class="form-group">
									<label for="password">Password</label> <input type="text"
										class="form-control" name="password" id="password"
										aria-describedby="passwordHid" placeholder="password">
									<small id="passwordHid" class="form-text text-muted">password
										is required</small>
								</div>
								<div class="form-group">
									<label for="email">Email</label> <input type="text"
										class="form-control" name="email" id="email"
										aria-describedby="emailHid" placeholder="Email"> <small
										id="emailHid" class="form-text text-muted">Email is
										required</small>
								</div>
							</div>


						</div>
					</div>
					<div class="card-footer text-muted">
						<button class="btn btn-primary">Create</button>
						<button class="btn btn-warning">Update</button>
						<button class="btn btn-danger">Delete</button>
						<button class="btn btn-info">Reset</button>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="videolist" role="tabpanel"
			aria-labelledby="videolist-tab">
			<table class="table table-striped">
				<tr>
					<td>Username</td>
					<td>Fullname</td>
					<td>Email</td>
					<td>Role</td>
				</tr>
				<tr>
					<td>NgocTv</td>
					<td>Trinh Van Ngoc</td>
					<td>ngoctvph12255@gmail.com</td>
					<td>Admins</td>
					<td><a href=""> <i class="fa fa-edit" aria-hidden="true"></i>
							Edit
					</a> <a href=""><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
					</td>
				</tr>
			</table>

		</div>
	</div>
</div>