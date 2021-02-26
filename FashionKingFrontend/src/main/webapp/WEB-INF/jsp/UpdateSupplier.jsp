<%@ page language="java" contentType="text/html"%> 
<%@include file="CommonHeader.jsp"%>
<br/><br/>
<body>
<div class="container">
<form action ="<c:url value='/updateSupplier'/>" method="post" align="center">

<table align="center" cellspacing="2">
	<tr bgcolor="green"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">Update Supplier Info</font></h2></center></td></tr>
	<tr bgcolor="green"><td colspan="2"><center><h2><font face="monotype corsiva"color="black" size="5">${errorInfo}</font></h2></center></td></tr>
	<tr>
	<td>Supplier Id</td><td> <input type="text" name="supplierId" required/></td>
	</tr>
	<tr>
	<td>Supplier Name</td><td> <input type="text" name="supplierName" required/></td>
	</tr>
	<tr>
	<td>Supplier Address</td><td><input type="text" name="supplierAddr" required/></td>
	</tr>
	
	<tr bgcolor="green">
	<td colspan="2">
    <center>
    <button type="submit" class="btn btn-dark">Update</button>
    </center>
    </td>
	</tr>
	
	
</form>
</body>
</html>