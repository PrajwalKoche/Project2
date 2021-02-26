<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>

<div class="container-fluid">

<div class="row">

<div class="col-xs-12 col-sm-7 col-md-8">
    <img src="<c:url value='./images/login.jpg'/>" alt="logo" style="width:600px;height:600px"/>
  </div>
  <div class="col-xs-12 col-sm-5 col-md-4">
  <br/><br/><br/>

<form action="perform_login" method="post">          
  <table class="table table-bordered table-condensed" align="center">
  <thead>
<tr bgcolor="orange">
<th colspan="2"><center>Sign In Here</center></th>
</tr>
<tr>
<td>Login Name</td>
<td><input type="text" name="username"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr bgcolor="orange">
<td colspan="2">
<center>
<button type="signin" class="btn btn-dark">Sign In</button>
</center>
</td>
</tr>
</table>
</form>
</div>
</div>
</div>
