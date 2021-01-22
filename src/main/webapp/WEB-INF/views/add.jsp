<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<div class="form-group">
			<label for="taskName">Task Name:</label><br /> <input type="text"
				class="form-group" name="taskName">
		</div>
		<label for="taskStart">Start Date</label><br /> 
		<input type="date" class="form-group" name="taskStart"><br/> 
		<label for="taskEnd">End Date</label><br /> 
		<input type="date" class="form-group" name="taskEnd"><br/> 

		<div class="form-group">
			<label for="description">Description</label>
			<textarea class="form-control rounded-0" name="description" rows="3"></textarea><br/>
		</div>

		<div class="form-group">
			<label for="email">Email</label><br/> <input type="text"
				class="form-group" name="email">
		</div>
		<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Severity</label>
		<select class="custom-select my-1 mr-sm-2"
			name="severity">
			<option selected>Choose...</option>
			<option value="High">High</option>
			<option value="Medium">Medium</option>
			<option value="Low">Low</option>
		</select>
		<input type="submit" value="Add Task">
	</form>
</body>
</html>