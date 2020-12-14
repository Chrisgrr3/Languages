<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="/css/modify.css">
	<title>${lang.name}</title>
</head>
<body>
<h2 class="delete"><a href="/languages/${lang.id}/delete">Delete</a></h2>
<h2 class="dash"><a href="/languages">Dashboard</a></h2>
	<br /><br /><br />
	<div class="langForm">
		<form:form action="/languages/${lang.id}" method="post" modelAttribute="lang">
			<input type="hidden" name="_method" value="put" />
			<p>
				<form:label path="name">Name</form:label>
				<form:errors path="name" />
				<form:input class="name" path="name" />
			</p>
			<p>
				<form:label path="creator">Creator</form:label>
				<form:errors path="creator" />
				<form:textarea path="creator" />
			</p>
			<p>
				<form:label path="currentVersion">Current Version</form:label>
				<form:errors path="currentVersion" />
				<form:input class="version" path="currentVersion" />
			</p>
			<input class="submit" type="submit" value="Submit" />
		</form:form>
	</div>
</body>
</html>