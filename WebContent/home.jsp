
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
       if(session.getAttribute("name")==null){
    	   response.sendRedirect("UserLogin.jsp");
       }
     
    
    %>
 <%--  <%@page import="com.AreaSearch"%>
<%@page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%> --%>
<%--- f3fb8bc5e7a51c08611946559465f2526aff0b74--%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="text/html"> <%-- ie=edge --%>
<title>User Home Page</title>
<%--boostrap link --%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!-- Main css -->

<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%--navbar --%>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" width="60"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><b>Welcome <%=session.getAttribute("name") %></b></a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
        </li>
      </ul>
      <form class="d-flex"  action="/Blood_Finder/AreaSearchNew" method="post">
        <input class="form-control me-2" type="search"   name="area" placeholder="Search by area name" aria-label="Search">
        <input  type="submit"  class="btn btn-outline-success sear" value="search">
        
      </form>
       
          <a class="nav-link link" href="Logout"><b>Logout</b></a>
       
    </div>
  </div>
</nav>


<%--end navbar --%>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	

		
		
			<div class="container">

			
				<h1 class="typewriter">A Drop of Blood Can Save a life!!</h1>
						
						
						
				
				
					
			
			</div>
		

	

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	
	 var obj=document.getElementById("status").value;
	 if(obj=="failed"){
		 swal("Sorry","No Blood Bank Found","failed");
	 }
	</script>
</body>
<style>

h1{
    font-family: "Incosolata", Consolas, monospace;
    font-size: 3.7em;
    color: black;
}
.typewriter{
    position: relative;
}
.typewriter::after{
    content: '|';
    position: absolute;
    right: 0;
   
    color: black;
    background-color: white;
    width: 100%;
    animation: typing 10s steps(70) alternate 3s infinite,
                line infinite;
}
@keyframes typing{
    to{
        width: 0%;
    }
}
@keyframes line {
    50%{
        color:transparent;
    }
}
.link{
background-color:black;
color:white;
margin-left:2px;}
.sear{
width:80px;}
</style>
</html>