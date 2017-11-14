package jspbook.ch04;

// 패키지 import
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * File : CalcServlet.java
 * Desc : 계산기 서블릿
 * @author 황희정(dinfree@dinfree.com)
 */
@WebServlet(description = "Calc1 서블릿", urlPatterns = { "/CalcServlet" })
public class CalcServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// GET 요청을 처리하기 위한 메서드
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost()로 포워딩.
		doPost(request, response);
	}

	// POST 요청을 처리하기 위한 메서드
	// doGet()에서도 호출하고 있기 때문에 모든 요청은 doPost()에서 처리되는 구조이다.
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 변수 선언
		int  num1,num2;
		int result;
		String op;

		// 클라이언트 응답시 전달될 컨텐트에 대한 타잎 설정과 캐릿터셋 지정
		response.setContentType("text/html; charset=UTF-8");

		//클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out = response.getWriter();
		
		// HTML 폼을 통해 전달된 num1, num2 파라미터 값을 변수에 할당한다.
		//이때 getParameter() 메서드는 문자열을 리턴하므로 숫자형 데이터의 경우 Integer.parseInt() 를 통해 int로 변환 한다.
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		// calc() 메서드 호출로 결과를 받아 온다.
		result = calc(num1,num2,op);

		// 출력 스트림을 통해 화면을 구성 한다.
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+" = "+result);
		out.println("</BODY></HTML>");
	}

	//실제 계산 기능을 수행하는 메서드
	public int calc(int num1, int num2, String op) {
		int result = 0;

		if(op.equals("+")) {
			result = num1 + num2;
		}
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
		return result;
	}
}