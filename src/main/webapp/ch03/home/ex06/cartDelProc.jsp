<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	// 선택한 상품 정보를 배열로 받아온다.
	String[] products = request.getParameterValues("product");
	// 세션에 저장된 장바구니 정보를 가져온다.
	Object cartObj = session.getAttribute("cart");

	// 장바구니 정보가 있다면
	if(cartObj != null) {
		// 세션에 저장된 장바구니 정보를 List<String> 타입으로 변환한다.
		List<String> cart = (List<String>)cartObj;
		
		// 선택한 상품이 있으면
		if(products != null && products.length > 0) {
			// 선택한 상품을 장바구니에서 제거한다.
			for(String product: products)
				cart.remove(product);
		} else {
%>
			<!-- 선택한 상품이 없으면 메시지를 설정한다. -->
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
<% 			
		}
	} else {
%>		
			<!-- 장바구니 정보가 없으면 메시지를 설정한다. -->
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
<!-- 메시지와 함께 다른 페이지로 이동한다. -->
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>