<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<br/><br/>
<body>

  <div class="col-xs-12 col-md-12 col-md-12">
<form action ="<c:url value='/updateCategory'/>" method="post" align="center">
<table align="center">
<tr bgcolor="orange">
<td colspan="2"><center>Update Category</center></td>
</tr>
<tr bgcolor="pink">
<td>Category Id</td>
<td><input type="text" name="categoryId"/></td>
</tr>
<tr bgcolor="pink">
<td>Category Name</td>
<td><input type="text" name="categoryName"/></td>
</tr>
<tr bgcolor="pink">
<td>Category Description</td>
<td><textarea rows="5" cols="20" name="categoryDesc"></textarea></td>
</tr>
<tr bgcolor="orange">
<td colspan="2">
<center>
<button type="submit" class="btn btn-dark">Update</button>
</center>
</td>
</tr>
</table>
</form>
</div>
  
</body>
</html>