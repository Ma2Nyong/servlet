<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<% // 1번째 문단 장바구니를 준비한다.
	String cart = "";
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();
	// 2번째 문단 장바구니에 물건을 담는다.
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {
		for(String product: products)
			cart += product + "/";
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	} else {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>