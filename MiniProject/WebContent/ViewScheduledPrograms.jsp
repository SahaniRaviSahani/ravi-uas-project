<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	1
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>View Scheduled Programs</title>
</head>
<body>
	<div>
		<div class="col-sm-10">
			<h2>View Scheduled Programs</h2>
		</div>
		<div class="col-sm-2">
			<c:if test="${not empty requestScope.role}">
				<button type="submit" class="btn btn-primary pull-right">
					<a href="viewScheduledProgram?page=add&role=${requestScope.role}">Add</a>
				</button>
			</c:if>
		</div>
	</div>
	<br>
	<table class="table table-striped">
		<tr>
			<th>Program Id</th>
			<th>Program Name</th>
			<th>Location</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Session Per Week</th>
			<th>Action</th>
		</tr>
		<c:forEach var="programScheduled"
			items="${requestScope.listOfprogramScheduled}">
			<tr>
				<td><c:out value="${programScheduled.scheduledProgramId}" /></td>
				<td><c:out value="${programScheduled.programName}" /></td>
				<td><c:out value="${programScheduled.location}" /></td>
				<td><c:out value="${programScheduled.startDate}" /></td>
				<td><c:out value="${programScheduled.endDate}" /></td>
				<td><c:out value="${programScheduled.sessionsPerWeek}" /></td>
				<th><c:choose>
						<c:when
							test="${(requestScope.role eq 'mac') || (requestScope.role eq 'admin') }">
							<div class="col-lg-6 col-md-6">
								<a href="viewApplication?role=${requestScope.role}&scheduledProgramId=${programScheduled.scheduledProgramId}">View Application</a>
							</div>
							<div class="col-lg-6 col-md-6">
								<a href="viewScheduledProgram?page=delete&role=${requestScope.role}&scheduledProgramId=${programScheduled.scheduledProgramId}">Delete</a>
							</div>
						</c:when>
						<c:otherwise>
							<a href="applyForCourse?scheduledProgramId=${programScheduled.scheduledProgramId}">Apply for Course</a>
						</c:otherwise>
					</c:choose></th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>