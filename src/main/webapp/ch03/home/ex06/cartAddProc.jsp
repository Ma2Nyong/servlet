<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<% // 진열대에서 상품이 무엇인지 확인하고,
   String[] products = request.getParameterValues("product");
	//진열대에서 가져온 물품이 있는건지 맞는지,
   if(products != null && products.length > 0) { // "product" 파라미터가 존재할 경우 // 가져올때마다 새로운 장바구니를 가져오니까 문제가 발생한것이다.
      List<String> cart = null;
   
      Object cartObj = session.getAttribute("cart");
      if(cartObj == null){ // "cart" 속성값이 존재하지 않을 경우
         cart = new ArrayList<>();
      
         session.setAttribute("cart",cart);
      } else cart = (List<String>)cartObj;
      // "cart" 속성값이 존재할 경우, ArrayList로 타입 캐스팅

      for(String product: products)
         cart.add(product); // "product" 파라미터값을 "cart" 속성값의 List에 추가
   }else{ // "product" 파라미터가 존재하지 않을 경우
%>
   <!-- "msg" 파라미터와 함께 "main.jsp" 페이지로 리다이렉트 -->
   <c:redirect url='main.jsp'>
      <c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
   </c:redirect>
<%
   }
%>

<!-- "cartOut.jsp" 페이지로 리다이렉트 -->
<c:redirect url='cartOut.jsp'/>