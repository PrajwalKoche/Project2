<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html" %>
<html>
<body>
<c:forEach items="${sessionScope.productList}" var="product">
<div class="group">
 
 <div class="col-xs-12 col-sm-5 col-md-7">
     <img src="images/image1.jpg" alt="Nature" style="width:30%"/>
	 <div class="content">
	 <h1>Redmi Note 9</h1>
	 </div>
	 </div>
	 </div>
	 <div class="col-xs-12 col-sm-5 col-md-3">
	 <%
    try
    {
    	
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost/demo2","root","Pass@12345");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from product where productId='1001'");
    %>
    <div class="col-xs-12 col-sm-5 col-md-3">
    <table align="right">
      <thead>
          <tr>
             <th>Product Id</th>
             <th>Product Name</th>
             <th>Product Desc</th>
             <th>Stock</th>
             <th>Price</th>
             <th>Category</th>
             <th>Supplier</th>
          </tr>
<tr>
<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.productDesc}</td>
<td>${product.stock}</td>
<td>${product.price}</td>
<td>${product.category}</td>
<td>${product.supplier}</td>

</tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("productId") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("productName") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("productDesc")%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("stock") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("price") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("category") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><%=rs.getString("supplier") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
    <table>
	<br/><br/><br/><br/>
	<label for="quantity">Choose the quantity:</label>
	<select name="quantity"><option value="1" selected>1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	</select>
	</br></br>
	<td><a href="ViewCart" class="btn btn-info">Add to Cart</a></td>
</table>
    
</div>
   </br></br></br></br>   
  
     </a>
  </c:forEach>

</body>
</html>