<%@page import="core.model.CartLineInfo"%>
<%@page import="core.utils.CartUtil"%>
<%@page import="core.model.CartInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<th>ma giuong</th>
<th>ngay dat</th>
<th>ngay tra</th>
<th>gia phong</th>
<th>thao tac</th>
<th>maKH</th>

<%
CartInfo myCart = CartUtil.getCartInSession(request);
for(CartLineInfo line : myCart.getCartLines()){
%>
<tr>
<td><%= myCart.getCartLines().size()%></td>
<td><input type = "date"></td>
<td><input type = "date"></td>
<td>gia phong</td>
<td>nut xoa ne</td>
<td>makh</td>
</tr>
<%} %>
</table>
</body>
</html>