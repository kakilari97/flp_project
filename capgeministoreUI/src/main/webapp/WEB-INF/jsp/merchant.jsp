<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Merchant Page</title>

<link rel="stylesheet" type="text/css" href="header2.css" />
<link rel="stylesheet" type="text/css" href="sample.css">
</head>
<body>
	<div class="header" style="height: 70px;">
		<a href="#default" class="logo"><img src="clogo.png"
			style="height: 40px; width: 150px;"></a>
		<div class="header-right">
			<input type="text" class="search_3" placeholder="Search...." /> <input
				type="submit" class="submit_3" value="Search" /> <a class="active"
				href="http://localhost:8085/CapStore2/merchant.jsp">Home</a> <a
				href="http://localhost:8085/CapStore2/addproduct.jsp">Add
				Products</a> <a href="http://localhost:8085/CapStore2/remove.jsp">Remove
				Product</a> <a href="http://localhost:9090/CapStore2/changeprofile.jsp">Profile</a>
			<a href="#OrderRequest">Order Request</a> <a href="#Chat">Chat</a>

		</div>
	</div>
	<div class="container">
		<div class="bg row">
			<div class=" hidden-xs col-sm-3"></div>
			<div class="login col-sm-6">
				<div class="form-group ">

					<form class="justify-content-center" style="color: white;">
						<div class="holder">
							<img src="handbag.png" style="height: 150px; width: 110px;">
						</div>

						<p>Product Name:Handbag</p>
						<div class="container">
							<button type="button" class="btn btn-primary"
								style="position: relative; top: 13px; left: 30%;" id="acpt">Accept</button>
							<button type="button" class="btn btn-primary"
								style="position: relative; top: 13px; left: 15%;" id="decl">Decline</button>
						</div>
				</div>
			</div>
		</div>
	</div>
	</form>






</body>
<div class="footr">
</div>
</html>