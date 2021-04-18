<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col mt-4">
	<jsp:include page="/common/inform.jsp"></jsp:include>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="videoediting-tab" data-toggle="tab"
			href="#videoediting" role="tab" aria-controls="videoediting"
			aria-selected="true">Video Editing</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="videolist-tab" data-toggle="tab" href="#videolist" role="tab"
			aria-controls="videolist" aria-selected="false">Video List</a></li>

	</ul>


	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoediting"
			role="tabpanel" aria-labelledby="videoediting-tab">
			<form action="" method="post" enctype="multipart/form-data">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-3">
								<div class="border p-3">
									<img src="${ video.poster != null ? video.poster : '/PolyAsg/images/0.jpg' }" class="img-fluid">
									<div class="input-group mb-3 mt-3">
										<span class="input-group-text">Upload</span>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="cover"
												name="cover"> <label for="cover">Choose file</label>
										</div>
									</div>
								</div>
							</div>
							<div class="col-9">
								<div class="form-group">
									<label for="youtubeid">Youtube ID</label> <input type="text"
										value="${ video.videoId }"
										class="form-control" name="videoId" id="youtubeid"
										aria-describedby="youtubeidhelpId" placeholder="Youtube ID">
									<small id="youtubeidhelpId" class="form-text text-muted">Youtube
										ID is required</small>
								</div>
								<div class="form-group">
									<label for="videotitle">Video Title</label> <input type="text"
									value="${video.title }"
										class="form-control" name="title" id="videotitle"
										aria-describedby="videotitle" placeholder="Video Title">
									<small id="videotitle" class="form-text text-muted">Video
										Title is required</small>
								</div>
								<div class="form-group">
									<label for="viewcount">View Count</label> <input type="text"
										value="${video.views }"
										class="form-control" name="views" id="viewcount"
										aria-describedby="helpId" placeholder="View Count"> <small
										id="viewcount" class="form-text text-muted">View Count
										is required</small>
								</div>
								<div class="form-check form-check-inline">
									<label><input type="radio" class="form-check-input"
										value="true" name="active" id="status" ${video.active ? 'checked' : '' }> Active</label> <label><input
										type="radio" class="form-check-input" value="false"
										name="active" id="status" ${! video.active ? 'checked' : '' }> Inactive</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="description">Description</label>
								<textarea name="description" id="description" cols="30" rows="4" ${video.description }
									class="form-control"></textarea>
							</div>
						</div>
					</div>
					<div class="card-footer text-muted">
						<button class="btn btn-primary" formaction="Admin/VideoManagement/create">Create</button>
						<button class="btn btn-warning" formaction="Admin/VideoManagement/update">Update</button>
						<button class="btn btn-danger" formaction="Admin/VideoManagement/delete">Delete</button>
						<button class="btn btn-info" formaction="Admin/VideoManagement/reset">Reset</button>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="videolist" role="tabpanel"
			aria-labelledby="videolist-tab">
			<table class="table table-striped">
				<tr>
					<td>Yotube ID</td>
					<td>Video title</td>
					<td>Video count</td>
					<td>Status</td>
					<td>&nbsp;</td>
				</tr>
				<c:forEach var="item" items="${listVideo }">
				<tr>
					<td> ${item.videoId } </td>
					<td> ${item.title } </td>
					<td>${item.views }</td>
					<td>${item.active ? 'Active' : 'Deactive' }</td>
					<td><a href="Admin/VideoManagement/edit?videoId=${ item.videoId }"> <i class="fa fa-edit" aria-hidden="true"></i>
							Edit
					</a> <a href=Admin/VideoManagement/delete?videoId=${ item.videoId }"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
					</td>
				</tr>
				</c:forEach>
			</table>

		</div>
	</div>
</div>