<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<title>Add message</title>
</head>
<body>
	<h1>Add message</h1>
	<form:form method="POST" action="/bugtracking/whiteBoard/removeSave"
		modelAttribute="message">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="id">
			
				
			</tr>
		</table>
		<input type=submit id="btn1" name="Submit" />
	</form:form>

</body>
</html>