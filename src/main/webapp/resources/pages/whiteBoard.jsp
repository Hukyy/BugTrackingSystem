<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Developers Registry</title>
</head>
<body>
	<h1>Developers Registry</h1>
	<button type="button" onclick="location = 'whiteBoard/add'">Add Message
		</button>
		<button type="button" onclick="location = 'whiteBoard/remove'">remove Message
		</button>
	<table border="1">
		<thead>
			<tr>
				<td>ID</td>
				<td>Title</td>
				<td>Message</td>
				<td>Timestamp</td>
				<td>User_id</td>
			</tr>
		</thead>

		<c:if test="${not empty Messages }">
			<tbody>
				<c:forEach var="msg" items="${Messages}">
					<tr>
						<td>${msg.id }</td>
						<td>${msg.title }</td>
						<td>${msg.message }</td>
						<td>${msg.timestamp }</td>
					    <td>${msg.dev_id }</td> 
					   <!--   <form:form method="GET" action="/bugtracking/whiteBoard/removeSave" modelAttribute="message">
							<td>${msg.id }</td>
						<td><button type="button" onclick="location = 'removeSave'">X
		</button></td>
		</form:form>  -->
					</tr>
				</c:forEach>

			</tbody>
		</c:if>


	</table>

</body>
</html>
