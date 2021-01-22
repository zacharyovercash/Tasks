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
	 <h2>Edit User</h2>
        <form:form action="delete" method="post" modelAttribute="delete">
            <table border="0" cellpadding="5">
               <tr>
                    <td>Id: </td>
                     <td>${delete.taskId}
                    <form:hidden path="taskId"/>
                </tr>    
                <tr>
                    <td>Name: </td>
                     <td>${delete.taskName}
                   <form:hidden path="taskName"/>
                </tr>
                 <tr>
                    <td>Start Date: </td>
                    <td>${delete.taskStart}
                   <form:hidden path="taskStart"/>
                </tr>
                 <tr>
                    <td>End Date: </td>
                    <td>${delete.taskEnd}
                   <form:hidden path="taskEnd"/>
                </tr>
                 <tr>
                    <td>Task Email: </td>
                   <td>${delete.email}
                   <form:hidden path="email"/>
                </tr>
                 <tr>
                    <td>Severity: </td>
                   <td>${delete.severity}
                   <form:hidden path="severity"/>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Delete Task"></td>
                </tr>                   
            </table>
        </form:form>
</body>
</html>