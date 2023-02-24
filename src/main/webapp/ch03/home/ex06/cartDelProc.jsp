<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String[] delProducts = request.getParameterValues("delProduct");

	if(delProducts != null && delProducts.length > 0) {
		List<String> cart2 = new ArrayList<>();
		
		for(String delProduct: delProducts)
			cart2.remove(delProduct);
		
		session.setAttribute("cart", cart2);
	}
%>
<c:redirect url='cartOut.jsp'/>