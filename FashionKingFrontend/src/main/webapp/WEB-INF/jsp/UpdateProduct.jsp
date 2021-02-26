<%@ page language="java" contentType="text/html"%> 
<%@include file="CommonHeader.jsp"%>
<body>
<div class="container">
<form action ="<c:url value='/updateProduct'/>" method="post" align="center">

<table align="center" cellspacing="2">
	<tr bgcolor="gray"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">Update Product Info</font></h2></center></td></tr>
	<tr bgcolor="gray"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">${errorInfo}</font></h2></center></td></tr>
	<tr>
	<td>Product Id</td><td> <input type="text" name="productId" required/></td>
	</tr>
	<tr>
	<td>Product Name</td><td> <input type="text" name="productName" required/></td>
	</tr>
	<tr>
	<td>Description</td><td><textarea cols"30" rows"5"  name="productDesc" required></textarea></td>
	</tr>
	<tr>
	<td>Stock</td><td> <input type="text" name="stock" required/></td>
	</tr>
	<tr>
	<td>Price</td><td><input type="text" name="price" required/></td>
	</tr>
	<tr>
	<td>Category</td>
	<td><select name="category">
		<option value="Mobile">Mobile</option>
		<option value="PenDrive">Shirt</option>
		<option value="Others">Others</option>
	</select></td>
	</tr>
	<tr>
	<td>Supplier</td>
	<td><select name="supplier" required>
		<option value="CloudRetail">CloudRetail</option>
		<option value="Incorporation">Incorporation</option>
		<option value="CloudMap">Cloud Map</option>
		<option value="E-Kart">E-Kart</option>
	</select> </td>
	</tr>
	
	<tr bgcolor="gray">
	<td colspan="2">
    <center>
    <button type="submit" class="btn btn-dark">Update</button>
    </center>
    </td>
	</tr>
	
	<br/><br/><br/>
</body>
</html>