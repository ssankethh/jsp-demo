<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Example for Request Object</title>
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
		<button type="button" class="btn btn-light pull-right" onclick="javascript:history.go(-1)">Back</button>
	</nav>
	<div class="container" style="padding-top:60px;padding-bottom:60px;">
	  <div class="row d-flex justify-content-center pt-2">
	  	<div class="col-sm">
		 	<h2>HTTP GET REQUEST</h2>
		 	<form action="request.jsp" method="GET">
				  <div class="form-group">
				    <label for="exampleInputPhone1">Phone Number</label>
				    <input type="number" name="phone" class="form-control" id="exampleInputPhone1" aria-describedby="emailHelp" placeholder="Enter email">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
				 <%   
					String phone=request.getParameter("phone");
				  %> 
				<% if((phone != null && phone != "")) { %>   
					<div class="row d-flex justify-content-center row pt-2">
						<div class="card border-success mb-3">
						  <div class="card-header bg-transparent border-success">Details</div>
						  <div class="card-body text-success">
						    <% if(phone != null && phone != "") { %>
							    <h5 class="card-title">Phone Number : <%= phone%></h5>
							<% } %>
						  </div>
						</div>
					</div>	
				<% } %>
		 </div>
		  <div class="col-sm">
		  	<h2>HTTP POST REQUEST</h2>
		  	<form action="request.jsp" method="POST">
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email address</label>
			    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
		 
			  <%   
				String email=request.getParameter("email");
				String password=request.getParameter("password");  
			  %> 
			<% if((email != null && email != "") || (password != null && password != "")) { %>   
				<div class="row d-flex justify-content-center pt-2">
					<div class="card border-success mb-3">
					  <div class="card-header bg-transparent border-success">Details</div>
					  <div class="card-body text-success">
					    <% if(email != null && email != "") { %>
						    <h5 class="card-title">Email : <%= email%></h5>
						<% } %>
					    <% if(password != null && password != "") { %>
						    <h5 class="card-title">Password : <%= password%></h5>
						<% } %>
					  </div>
					</div>
				</div>	
			<% } %>
		</div>
	 </div>
	 <div class="row d-flex justify-content-center row pt-2">
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
	  	</div>
  	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark justify-content-center">
  		<a class="navbar-brand" href="javascript:void(0)">Thank you</a>
	</nav>
</body>
</html>