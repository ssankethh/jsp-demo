<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Example on session object</title>
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
	  <div class="row pt-2">
  		<div class="card w-100">
			  <div class="card-header">
			    Enter Item in DB
			  </div>
			  <div class="card-body">
			    <form action="dbdetails.jsp" method="post">
			      <div class="form-group">
				    <label for="exampleInputFirstName">Enter First name</label>
				    <input type="text" name="firstName" class="form-control" id="exampleInputFirstName" placeholder="Enter First Name">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputLastName">Enter Last name</label>
				    <input type="text" name="lastName" class="form-control" id="exampleInputLastName" placeholder="Enter Last Name">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputUserName">Enter User name</label>
				    <input type="text" name="userName" class="form-control" id="exampleInputUserName" placeholder="Enter User Name">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputAddressName">Enter Address</label>
				    <input type="text" name="address" class="form-control" id="exampleInputAddressName" placeholder="Enter Address">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputContactName">Enter Contact No</label>
				    <input type="Number" name="contact" class="form-control" id="exampleInputContactName" placeholder="Enter Contact No">
				  </div>				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			  </div>
		</div>
	  </div>
  	</div>
	<nav class="navbar fixed-bottom navbar-dark bg-dark justify-content-center">
  		<a class="navbar-brand" href="javascript:void(0)">Thank you</a>
	</nav>
</body>
</html>