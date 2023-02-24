<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>진열대</a>
<h3>장바구니</h3>
<%
	// 세션에 저장된 장바구니 정보를 가져온다.
	Object cartObj = session.getAttribute("cart");

	if(cartObj != null) {
		// 세션에 저장된 장바구니 정보를 List<String> 타입으로 변환한다.
		List<String> cart = (List<String>)cartObj;
		
		// 장바구니에 물건이 있으면
		if(cart.size() > 0) {
%>
			<!-- 선택한 상품을 제거하는 form -->
			<form action='cartDelProc.jsp' method='post'>
				<ul>
<%
					// 장바구니에 있는 상품 목록을 출력한다.
					for(String product: cart) {
%>				
						<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/></li>
<%
					}
%>				
				</ul>
				<button type='submit'>빼기</button>
			</form>
<%			
			// 메시지가 있다면 출력한다.
			String msg = request.getParameter("msg");
			if(msg != null) out.print(msg);
		} else out.println("장바구니에 물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>