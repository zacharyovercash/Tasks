<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Task Name</th>
					<th scope="col">Task Start</th>
					<th scope="col">Task End</th>
					<th scope="col">Task Description
					<th scope="col">Task Email</th>
					<th scope="col">Task Severity</th>
					<th scope="col">Update Task</th>
					<th scope="col">Delete Task</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${tasks}" var="tasks">
				<tr>
					<td>${tasks.taskId}</td>
					<td>${tasks.taskName}</td>
					<td>${tasks.taskStart}</td>
					<td>${tasks.taskEnd}</td>
					<td>${tasks.description}</td>
					<td>${tasks.email}</td>
					<td>${tasks.severity}</td>
					<td><a href="/update/${tasks.taskId}">update task</a></td>
					<td><a href="/delete/${tasks.taskId}">Delete task</a></td>
					</tr>

	</c:forEach>
			</tbody>
		</table>
	</form>
	<a href= "/add">Add New Task</a>
</body>
</html>