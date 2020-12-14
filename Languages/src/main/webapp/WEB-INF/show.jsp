<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${lang.name}</title>
</head>
<body>
	<h2 style="position: absolute; right: 40px; top: 15px;"><a href="/languages">Dashboard</a></h2>
	<br />
	<h2>${lang.name}</h2>
	<br />
	<h2>${lang.creator}</h2>
	<br />
	<h2>${lang.currentVersion}</h2>
	<br />
	<br />
	<h2><a href="/languages/${lang.id}/edit">Edit</a></h2>
	<br />
	<h2><a href="/languages/${lang.id}/delete">Delete</a></h2>
</body>
</html>