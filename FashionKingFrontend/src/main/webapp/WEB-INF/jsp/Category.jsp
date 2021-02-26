<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>

<body>
<div class="container" align="center">


  <div class="col-xs-12 col-sm-6 col-sm-6">
<form action ="InsertCategory" method="post" align="center">
<table align="center">
<tr bgcolor="orange">
<td colspan="2"><center>Category Dialog</center></td>
</tr>
<tr bgcolor="#80d4ff">
<td>Category Id</td>
<td><input type="text" name="categoryId"/></td>
</tr>
<tr bgcolor="#80d4ff">
<td>Category Name</td>
<td><input type="text" name="categoryName"/></td>
</tr>
<tr bgcolor="#80d4ff">
<td>Category Description</td>
<td><textarea rows="5" cols="20" name="categoryDesc"></textarea></td>
</tr>
<tr bgcolor="orange">
<td colspan="2">
<center>
<button type="submit" class="btn btn-dark">Submit</button>
</center>
</td>
</tr>
</table>
</form>
</div>


 </br>
 
  
   <div class="col-xs-12 col-sm-8 col-sm-8">
<table class="table table-bordered table-condensed" align="center">
<thead bgcolor="orange">
<th>Category Id</th>
<th>Category Name</th>
<th>Category Desc</th>
<th colspan='2'>Operation</th>
</thead>
<c:forEach items="${categoryList}" var="category">
<tr>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td><a href="<c:url value='/deleteCategory/${category.categoryId}' />" class="btn btn-danger">Delete</a></td>
<td><a href="<c:url value='/editCategory/${category.categoryId}' />" class="btn btn-info">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>

  </div>
</body>
<br/><br/><br/>
</html>