<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- TODO:1 Use standard action (jsp:usebean) to obtain scoped variable "wishList" from session scope--%>
		<jsp:useBean id="wishList" class="com.seed.beans.ShoppingCart" scope="session"/>


<%-- TODO:2 set "productList" property of "wishList"with request parameter "bookID"--%>
		<jsp:setProperty property="productList" name="wishList" param="bookID"/>

<%-- TODO:3 forward current request to "categories.html" if user clicks on "Add to Wish List & shop more?" button--%>
     
<%-- TODO:4 forward current request to "displayWishListDetails.jsp" if user clicks on "check out" button--%>
  <%  String addToList = request.getParameter("addToList");
  	String checkOut = request.getParameter("checkout");
      	if(addToList!=null){%>
      		<jsp:forward page="categories.html"></jsp:forward>
      	<%}
      	else if(checkOut!=null){
      		%>
      		<jsp:forward page="displayWishListDetails.jsp"></jsp:forward>
      <%} %>

</body>
</html>