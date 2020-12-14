
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="/css/index.css">
	<title>Languages</title>
</head>
<body>
	<div id="box">
		<table>
			<thead>
				<tr>
					<th class="thead">Name</th>
					<th class="thead">Creator</th>
					<th class="thead">Version</th>
					<th class="thead">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${langs}" var="lang">
					<tr>
						<td><a href="/languages/${lang.id}"><c:out value="${lang.name}"/></a></td>
						<td><c:out value="${lang.creator}"/></td>
						<td><c:out value="${lang.currentVersion}"/></td>
						<td><a href="languages/${lang.id}/delete">delete |</a>
						<a href="languages/${lang.id}/edit"> edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="box2">
		<form:form id="create" action="/languages" method="post" modelAttribute="language">
			<p>
				<form:label path="name">Name</form:label>
				<form:errors path="name" />
				<form:input path="name" />
			</p>
			<p>
				<form:label path="creator">Creator</form:label>
				<form:errors path="creator" />
				<form:input path="creator" />
			</p>
			<p>
				<form:label path="currentVersion">Version</form:label>
				<form:errors path="currentVersion" />
				<form:input path="currentVersion" />
			</p>
			<input type="submit" value="Submit" />
		</form:form>
	</div>
</body>
</html>