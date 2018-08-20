

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box
}

body {
	font-family: "Lato", sans-serif;
}

/* Style the tab */
.tab {
	float: left;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	width: 30%;
	height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
	display: block;
	background-color: inherit;
	color: black;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	float: left;
	padding: 0px 12px;
	border: 1px solid #ccc;
	width: 70%;
	border-left: none;
	height: 300px;
}
</style>
</head>
<body>

	<h2>Product Options</h2>

	<div class="tab">
		<button class="tablinks" onclick="openCity(event, 'products')"
			id="defaultOpen">Products List</button>
		<button class="tablinks" onclick="openCity(event, 'addproducts')">Add
			Product</button>
		<button class="tablinks" onclick="openCity(event, 'delete')">Delete
			Product</button>
	</div>
	
	<div id="products" class="tabcontent">
		<center>
			<h3>
				 <a href="Products">Show all products</a> <br>
				 	 <a href="productbyid">Show product by id</a> 
			</h3>
		</center>
	</div>

	<div id="addproducts" class="tabcontent">
		<center>
			<h3>
				<a href="addproduct">Add product</a>
			</h3>
		</center>
	</div>
	
	
	<div id="delete" class="tabcontent">
		<center>
			<h3>
				<a href="remove">Delete product</a>
			</h3>
		</center>
	</div>
	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
	
</body>
</html>
