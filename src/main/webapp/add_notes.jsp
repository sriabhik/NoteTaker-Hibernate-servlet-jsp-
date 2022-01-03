<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file = "all_js_css.jsp" %>
</head>
<body>
	<div class = "container">
     <!--  this is jsp part(tags)-->
     
    	<%@include file = "navbar.jsp"%>
    	<h1>Write Note Here</h1>
    	<br>
    	<!-- forms -->
    	<form action = "SaveNoteServlet" method = "post">
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input name = "title" required type="text" class="form-control"  id="title" aria-describedby="emailHelp" placeholder="Enter Here">
		    
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name = "content" required id = "content" placeholder = "Enter Content area" class = "form-control"></textarea>
		  </div>
		  <div class="form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">Check me out</label>
		  </div>
		 <div class = "container text-center">
		 	 <button type="submit" class="btn btn-primary">Add</button>
		 </div>
		</form>
    	<!--  -->
    </div>
    
</body>
</html>