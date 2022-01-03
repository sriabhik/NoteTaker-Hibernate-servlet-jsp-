<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file = "all_js_css.jsp" %>
 	<%@page import = "com.entities.*" %>
 	<%@page import = "java.util.*" %>
 	<%@page import = "org.hibernate.*" %>
 	
 	<%@page import = "com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file = "all_js_css.jsp" %>
</head>
<body>
	<div class = "container">
     <!--  this is jsp part(tags)-->
     
    	<%@include file = "navbar.jsp"%>
    	<h1>Edit note</h1>
    	<%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
	
		
		Note note = (Note)s.get(Note.class,noteId);
    	%>
    	
    	<!--  -->
    		<form action = "UpdateServlet" method = "post">
    		<input value="<%= note.getId() %>" name = "noteId" type ="hidden" />
			  <div class="form-group">
			    <label for="title">Note Title</label>
			    <input name = "title" required type="text" class="form-control"  
			    id="title" aria-describedby="emailHelp" placeholder="Enter Here"
			    value = "<%=note.getTitle()%>"
			    />
			    
			  </div>
			  <div class="form-group">
			    <label for="content">Note Content</label>
			    <textarea name = "content" required id = "content" placeholder = "Enter Content area" 
			  	class = "form-control">
			  	<%=note.getContent() %>
			  	</textarea>
			  </div>
			  <div class="form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			 <div class = "container text-center">
			 	 <button type="submit" class="btn btn-primary">Update</button>
			 </div>
		</form>
    	<!--  -->
    </div>
</body>
</html>