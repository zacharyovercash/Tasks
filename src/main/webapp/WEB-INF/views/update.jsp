<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Edit Task</h2>
        <form:form action="save" method="post" modelAttribute="update">
            <table border="0" cellpadding="5">
               <tr>
                    <td>Id: </td>
                     <td>${update.taskId}
                    <form:hidden path="taskId"/>
                </tr>    
                <tr>
                    <td>Name: </td>
                    <td><form:input path="taskName" /></td>
                </tr>
                 <tr>
                    <td>Start Date: </td>
                    <td><form:input type="date" path="taskStart" /></td>
                </tr>
                 <tr>
                    <td>End Date: </td>
                    <td><form:input type="date" path="taskEnd" /></td>
                    <td>
                </tr>
                 <tr>
                    <td>Task Description: </td>
                    <td><form:input path="description" /></td>
                </tr>
                 <tr>
                    <td>Task Email: </td>
                    <td><form:input path="email" /></td>
                </tr>
                 <tr>
                    <td>Severity: </td>
                    <td><form:input path="severity"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                   
            </table>
        </form:form>
</body>
</html>