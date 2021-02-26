<%@ page language="java" contentType="text/html"%> 
<%@include file="CommonHeader.jsp"%>
<body>
<div class="container" align="center">
<form action="InsertSupplier" method="post">

<table align="center" cellspacing="2">
	<tr bgcolor="orange"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">Supplier Info</font></h2></center></td></tr>
	<tr bgcolor="orange"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">${errorInfo}</font></h2></center></td></tr>
	<tr>
	<td>Supplier Id</td><td> <input type="text" name="supplierId" required/></td>
	</tr>
	<tr>
	<td>Supplier Name</td><td> <input type="text" name="supplierName" required/></td>
	</tr>
	<tr>
	<td>Supplier Address</td><td><input type="text" name="supplierAddr" required/></td>
	</tr>
	
	<tr bgcolor="orange">
	<td colspan="2"><center><input type="submit"  value="Submit"/><input type="Reset" value="Reset"/></center></td>
	</tr><br/>
	
	</table>
	</br>
	
	<div class="col-xs-12 col-sm-8 col-sm-8">
<table class="table table-bordered table-condensed" align="center">
<thead bgcolor="orange">
<th>Supplier Id</th>
<th>Supplier Name</th>
<th>Supplier Address</th>
<th colspan='2'>Operation</th>
</thead>
<c:forEach items="${supplierList}" var="supplier">
<tr>
<td>${supplier.supplierId}</td>
<td>${supplier.supplierName}</td>
<td>${supplier.supplierAddr}</td>
<td><a href="<c:url value='/deleteSupplier/${supplier.supplierId}' />" class="btn btn-danger">Delete</a></td>
<td><a href="<c:url value='/editSupplier/${supplier.supplierId}' />" class="btn btn-info">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>
	<br/><br/><br/>

</form>
</body>
</html>