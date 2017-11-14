package jspbook.ch04;

// ��Ű�� import
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * File : CalcServlet.java
 * Desc : ���� ����
 * @author Ȳ����(dinfree@dinfree.com)
 */
@WebServlet(description = "Calc1 ����", urlPatterns = { "/CalcServlet" })
public class CalcServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// GET ��û�� ó���ϱ� ���� �޼���
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost()�� ������.
		doPost(request, response);
	}

	// POST ��û�� ó���ϱ� ���� �޼���
	// doGet()������ ȣ���ϰ� �ֱ� ������ ��� ��û�� doPost()���� ó���Ǵ� �����̴�.
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���� ����
		int  num1,num2;
		int result;
		String op;

		// Ŭ���̾�Ʈ ����� ���޵� ����Ʈ�� ���� Ÿ�� ������ ĳ���ͼ� ����
		response.setContentType("text/html; charset=UTF-8");

		//Ŭ���̾�Ʈ ������ ���� ��� ��Ʈ�� Ȯ��
		PrintWriter out = response.getWriter();
		
		// HTML ���� ���� ���޵� num1, num2 �Ķ���� ���� ������ �Ҵ��Ѵ�.
		//�̶� getParameter() �޼���� ���ڿ��� �����ϹǷ� ������ �������� ��� Integer.parseInt() �� ���� int�� ��ȯ �Ѵ�.
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		// calc() �޼��� ȣ��� ����� �޾� �´�.
		result = calc(num1,num2,op);

		// ��� ��Ʈ���� ���� ȭ���� ���� �Ѵ�.
		out.println("<HTML>");
		out.println("<HEAD><TITLE>����</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>�����</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+" = "+result);
		out.println("</BODY></HTML>");
	}

	//���� ��� ����� �����ϴ� �޼���
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