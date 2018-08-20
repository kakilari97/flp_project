<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="sample.css">
 <link rel="stylesheet" type="text/css" href="header2.css" />
 <div class="header"
	style="padding-bottom: 50px;padding-top: 10px;height: 50px;">
	<div class="holder">
		<img src="clogo.png"style="height: 40px;width: 150px;">
	</div>
	<div class="header-right">
	<input type="text" class="search_3" placeholder="Search...."/>
<input type="submit" class="submit_3" value="Search" />

	<a  href="http://localhost:8085/CapStore2/merchant.jsp">Home</a> <a class="active"
			href="http://localhost:8085/CapStore2/addproduct.jsp">Add
			Products</a> <a href="http://localhost:8085/CapStore2/remove.jsp">Remove
			Product</a> <a href="http://localhost:9090/CapStore2/changeprofile.jsp">Profile</a><a href="#OrderRequest">Order Request</a> <a href="#Chat">Chat</a>
	
		
	</div>
</div>
</head>
<body><div class="container">
<div class="bg row" > 
<div class=" hidden-xs col-sm-3"></div>
 <div class="login col-sm-6">
<div class="form-group ">

<form class="justify-content-center" style="color:white;" >
<center><h2 style="color:white;">Add Product</h2></center>
    <label for="pid"> Product ID:</label>
    <input type="text"  placeholder="Enter product id" class="form-control" id="pid" required>
    
	<label for="name"> Product Name:</label>
    <input type="name"  placeholder="Enter name" class="form-control" id="name" required>
    
    <label for="com_name"> Company Name:</label>
    <input type="text"  placeholder="Enter name" class="form-control" id="com_name" required>
    
    
     <label for="price"> Price:</label>
    <input type="text"  placeholder="Enter price" class="form-control" id="price" required>
    
     <label for="dom">Date Of Manufacturing:</label>
    <input type="Date"  placeholder="Enter Mfg" class="form-control" id="dom" required>
    
    <label for="type">Product Type:</label>
    <input type="text"  placeholder="Enter type of product" class="form-control" id="type" required>
    
    
     <label for="mid"> Manufacture ID:</label>
    <input type="text"  placeholder="Enter Manufacture id" class="form-control" id="mid" required>
    
     <label for="cid"> Coupen ID:</label>
    <input type="text"  placeholder="Enter Coupen id" class="form-control" id="cid" required>
    
      <label for="quantity"> Quantity:</label>
    <input type="text"  placeholder="Enter Quantity" class="form-control" id="qty" required>
  <form action="myform.cgi">
  <label for="fileupload"> Select a Image to upload</label> 
  <br>
  <input type="file" name="fileupload" value="fileupload" id="fileupload"> </form>


</form>
</body>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10 center">
      <button type="submit" class="btn btn-primary">Add</button>
    </div>
  </div>
  
  </div> 
</div>
</div>
</div>


</body>
</html>