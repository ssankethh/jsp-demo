<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%
	application.setAttribute("title","Introduction to JSP");
%>
<%--HttpSession session1 = request.getSession();
	session1.setMaxInactiveInterval(5); --%>
<title><% out.print(application.getAttribute("title")); %></title>
</head>
<body>
	<nav class="navbar fixed-top navbar-dark bg-dark">
  		<a class="navbar-brand" href="index.jsp">
		    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADkAAAAeCAAAAACz2unXAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQfkCg8JAB6mDP0vAAABoUlEQVQ4y2P4jxO8Wpukoz4LpzQDFrFv13YsnTs514CLkUm8jGid2+dNLffQUlJSlBfnYmJg5DLbefoCCFy8/g2/zq2OKgoSPKzMQMDEyMDAwMQbGZ8IBhnZb/DqXKDCBtECAwJwqU9r8Oqcp8TMgAL44VKf55Otcx4ZOg+SrdOFXJ1x88nUKb124meidTKzMjCwCstygnTO3BD+hTg730xnuPf/fw9Y4ixQ565dhqeJ0/l+evB/HnZuhv/zGRb8lwa6NuazKbE6bf6vALoTqHPGf3Ge7vf//334d0bhHzE6GWr//Y9l+P/nx/9bDDzJFmZuTZ/+R74krPNzDzCInv1m+L8vRgkYQhMj8qMDP626SNC1/if/m9iuzf7zFORaUKz8nnVsd99vIvxpNy+QQffqx4OsDH/BOnn//vj+5///vzdJTgms7m6+fhE9tyaRnob+vbl06PST32Sm+P/Exeeg0jkfr048JdhH/CUYRqnJY+viBgb+Ke/w6vy/az5qSW157vY9MHj86z9+nSDw4+6+lfNIrh2QwNvNGXoauGskADcN30usF0WsAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIwLTEwLTE1VDA5OjAwOjMwKzAzOjAwj6vpBAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMC0xMC0xNVQwOTowMDozMCswMzowMP72UbgAAAAASUVORK5CYII=" class="d-inline-block align-top" alt="">
		    <% out.print(application.getAttribute("title")); %>
		  </a>
		  <%Integer count = (Integer) session.getAttribute("count");if(count != null && count > 0){ %>
			<div class="pull-right navbar-brand">
				Item : <%=count%>
			</div>
		<%} %>
	</nav>
	<div class="container" style="padding-top:60px;padding-bottom:60px;">
	  <div class="row d-flex justify-content-center">
	  	<a href="out.jsp" class="btn btn-primary mr-2 mt-2">Example for out</a>
	  	<a href="request.jsp"  class="btn btn-primary mr-2 mt-2">Example for Request</a>
	  	<a href="response.jsp"  class="btn btn-primary mr-2 mt-2">Example for Response</a>
	  	<a href="session.jsp" class="btn btn-primary mr-2 mt-2">Example on session</a>
	  	<a href="page-context.jsp"  class="btn btn-primary mr-2 mt-2">Example for PageContext</a>
	  	<a href="exception.jsp" class="btn btn-primary mr-2 mt-2">Example for Exception</a>
	  	<a href="dbregistration.jsp" class="btn btn-primary mr-2 mt-2">Add entry to DB</a>
	  </div>
	  <%   
	  	Cookie ourCookie = null;
	  	Cookie[] cookies = request.getCookies();
		if (cookies != null) {
		    for (Cookie cookie : cookies) {
		        if(cookie.getName().equals("intro_jsp")){
		        	ourCookie = cookie;
		        }
		    }
		}
	  %> 
	  <% if(ourCookie != null){ %>
	  	<div class="row d-flex justify-content-center pt-2">
		  	<div class="col-sm">
			  	<div class="card border-success mb-3">
				  <div class="card-header bg-transparent border-success"><h2>Cookie Details</h2></div>
				  <div class="card-body text-success">
				    <% if(ourCookie.getName() != null) { %>
					    <h5 class="card-title">Cookie Name : <%= ourCookie.getName()%></h5>
					<% } %>
					<% if(ourCookie.getValue() != null) { %>
					    <h5 class="card-title">Cookie Value : <%= ourCookie.getValue()%></h5>
					<% } %>
				  </div>
				</div>
			 </div>
	  	</div>
	  <%} %>
  	
  	<% 
		String sname=config.getServletName(); 
		Enumeration e = config.getInitParameterNames();
	%>
	<%if(sname != null && sname != ""){ %>
		<div class="row d-flex justify-content-center pt-2">
			  	<div class="col-sm">
				  	<div class="card border-success mb-3">
					  <div class="card-header bg-transparent border-success"><h2>Servlet Details</h2></div>
					  <div class="card-body text-success">
						<h3 class="card-title">Servlet Name : <%= sname%></h5>
						<h4 class="text-primary">Parameters : </h5>
						<% while (e.hasMoreElements()) { String name = (String) e.nextElement(); %>
						    <h5 class="text-info"><%= name%> : <%= config.getInitParameter(name)%></h5>
						<% } %>
					  </div>
					</div>
				 </div>
		 </div>
	 <% } %>
	 </div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark justify-content-center">
  		<a class="navbar-brand" href="javascript:void(0)">Thank you</a>
	</nav>
</body>
</html>