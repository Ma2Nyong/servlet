<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% // 로그인 후에 오는 상황과 로그인 을 위한 상황이 있다.
	Object userId = session.getAttribute("userId");
	if(userId == null){
%>
			<a href='logIn.jsp'>로그인</a>
<%
	} else {
%>
		<%= userId %>님, 환영합니다. &nbsp;
		<a href='logOut.jsp'>로그아웃</a>
<%
	}
%>
<!-- 
과제:
메인에서 로그인 링크를 누르면, 로그인 폼으로 이동한다.
로그인 js 폼에서, 아이디/암호를 입력하고, 로그인 폼을 제출한다.
이때, 아이디/암호는 java/java 이다.

로그인 성공 시, proc에서,
메인에 'java님, 환영합니다.'를 출력한다.
위 화면 메세지 옆에 로그아웃 링크를 나란히 출력한다.
위 로그아웃 링크를 누르면, 로그아웃.jsp 이동 후, 메인으로 이동한다.

로그인 실패 시.,
로그인 폼으로 이동한다
위 폼 아래 에러 메세지를 출력한다.

 -->