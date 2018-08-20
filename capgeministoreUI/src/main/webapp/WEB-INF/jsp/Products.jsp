 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head></head>
<body align="center">
<h2>Products</h2>
<a href="/products">All products</a>
<a href="/productbyid">Product by id</a>
  
</form>

</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
<body>

    <sql:query var="allproducts"   dataSource="${myDS}">
        SELECT * FROM products;
    </sql:query> 
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Company Name</th>
                <th>Date</th>
                <th>Type</th>
                <th>Price</th>
                <th>Merchant Id</th>
                <th>Coupon Id</th>
                <th>Quantity</th>
            </tr>
            <c:forEach items="${prods}" var="products" >
                <tr>
                    <td>${products.p_id}</td>
                    <td>${products.p_name}</td>
                    <td>${products.p_companyname}</td>
                    <td>${products.p_dom}</td>
                    <td>${products.p_type}</td>
                    <td>${products.p_price}</td>
                    <td>${products.p_merchantid}</td>
                    <td>${products.p_couponid}</td>
                    <td>${products.p_quantity}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>

 --%>

