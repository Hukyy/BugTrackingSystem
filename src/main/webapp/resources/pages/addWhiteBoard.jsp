<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<title>Add message</title>
</head>
<body>
	<h1>Add message</h1>
	<form:form method="POST" action="/bugtracking/whiteBoard/addSave"
		modelAttribute="message">
		<table>
			<tr>
				<td>Title</td>
				<td><input type="text" name="title">
				<td>
				<td>Message</td>
				<td><input type="text" name="message">
				<td>
				<td>Dev_id</td>
				<td><input type="text" name="dev_id">
				<td>
				
			</tr>
		</table>
		<input type=submit id="btn1" name="Submit" />
	</form:form>

</body>
</html>