<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 	<%@include file = "all_js_css.jsp" %>
 	<%@page import = "com.entities.*" %>
 	<%@page import = "java.util.*" %>
 	<%@page import = "org.hibernate.Session" %>
 	<%@page import = "org.hibernate.Query" %>
 	<%@page import = "com.helper.FactoryProvider" %>
    <title>All Notes</title>
  </head>
  <body>
    
    <div class = "container">
     <!--  this is jsp part(tags)-->
     
    	<%@include file = "navbar.jsp"%>
    	<br>
    	<h1>All NOTES</h1>
    	<div class = "row">
    		<div class = "col-12">
    			<%
    		Session s = FactoryProvider.getFactory().openSession();
    		Query q = s.createQuery("from Note");//HQL
    		List<Note> list = q.list();
    		for(Note note : list){
    			%>
    				<div class="card p-0 m-3">
						  <img class="card-img-top p-5px mx-auto" style = "max-width:40px"src="img/notepad.png" alt="Card image cap">
						  <div class="card-body px-5">
						    <h5 class="card-title"><%=note.getTitle() %></h5>
						    <p class="card-text"><%= note.getContent() %></p>
						    <p class="card-text">Date & Time : <%= note.getAddedDate() %></p>
						    <div class = "container text-center mt-2px">
						    	 <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						    	  <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Edit</a>
						    </div>
						   
						  </div>
					</div>
    			
    			<%
    		}
    		s.close();
    	%>
    		</div>
    	</div>
    </div>
    	
    
  </body>
</html>