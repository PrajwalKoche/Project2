<%@ page language="java" contentType="text/html"%> 
<%@include file="CommonHeader.jsp"%>
<body>
<div class="container" align="center">
<form action="InsertProduct" method="post">
<table align="center" cellspacing="2">
	<tr bgcolor="orange"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">Product Info</font></h2></center></td></tr>
	<tr bgcolor="orange"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">${errorInfo}</font></h2></center></td></tr>
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
		<option value="Shirt">Shirt</option>
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
	
	<tr bgcolor="orange">
	<td colspan="2"><center><input type="submit"  value="Submit"/><input type="Reset" value="Reset"/></center></td>
	</tr>
	
	</tr>
	</table>
	<br/>
	
	<div class="col-xs-12 col-sm-8 col-sm-8">
<table class="table table-bordered table-condensed" align="center">
<thead bgcolor="orange">
<th>Product Id</th>
<th>Product Name</th>
<th>Description</th>
<th>Stock</th>
<th>Price</th>
<th>Category</th>
<th>Supplier</th>
<th colspan='2'>Operation</th>
</thead>
<c:forEach items="${productList}" var="product">
<tr>
<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.productDesc}</td>
<td>${product.stock}</td>
<td>${product.price}</td>
<td>${product.category}</td>
<td>${product.supplier}</td>
<td><a href="<c:url value='/deleteProduct/${product.productId}' />" class="btn btn-danger">Delete</a></td>
<td><a href="<c:url value='/editProduct/${product.productId}' />" class="btn btn-info">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>
	<br/><br/><br/>
</form>
</body>
</html>