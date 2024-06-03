<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All notes</h1>

		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();

		for (Note note : list) {
		%>
		<div class="card">
			<img class="card-img-top mx-auto " src="img/note.png" style="width: 100px" 
				alt="...">
			<div class="card-body px-5">
				<h5 class="card-title">
					<%=note.getTitle()%>
				</h5>
				<p class="card-text">
					<%=note.getContent()%>
				</p>
				<p><b class="text-primary">Last updated : <%= note.getAddedDate() %></b></p>
				<div class="container text-center mt-2">
					<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a> 
					<a href="edit.jsp?note_id=<%= note.getId() %>"	class="btn btn-primary">Update</a>
				</div>
			</div>
		</div>
		<%
		}
		s.close();
		%>
	</div>
</body>
</html>