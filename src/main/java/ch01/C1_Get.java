package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")
public class C1_Get extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException { // tomcat 한테 떠넘긴다. 왜? tomcat 이 doGet을 call했기때문에.
		int num1 = 1;
		int num2 = 2;
		//response에 들어있는 data를 content라고 한다.
		res.setContentType("text/html; charset=utf-8"); //html head 안에 넣었던 것이다.
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	} //개발자 도구 -> newwork -> response를 들어가면 확인할수있다.
}
// request는 Servlet 이 받는다 , tomcat 에 포함이 되어있으면 절대주소, 안돼있으면 상대주소,
//http://localhost/servlet/servlet/ch01.C1_Get
//http://localhost/servlet/ch01.C1_Get
//http://localhost/hello/servlet/ch01.C1_Get

