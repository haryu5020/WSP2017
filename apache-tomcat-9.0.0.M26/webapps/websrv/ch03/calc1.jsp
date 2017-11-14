<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// 변수설정
	int result = 0;

	// 웹페이지 요청이 post 인 경우에만 수행 즉 form 을 통해 전달된것만 수행
	// 초기 로딩시 오류방지
	if(request.getMethod().equals("POST")) {

		// 연산자를 가지고 옴.
		String op =  request.getParameter("operator");

		// 문자열 형태로 전달된 인자들을 int 로 변환함.
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));

		// 각 연산자별 처리
		if(op.equals("+")) {
			result = num1+num2;
		}
		else if(op.equals("-")) {
			result = num1-num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
	}
%>

<HTML>
<HEAD>
<TITLE>ch03 : 계산기 </TITLE>
</HEAD>

<BODY>
<div align="center">
<H3>계산기</H3>
<HR>
<form name=form1 method=post>
<INPUT TYPE="text" NAME="num1" width=200 size="5">
<SELECT NAME="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</SELECT>

<INPUT TYPE="text" NAME="num2" width=200 size="5"> 
<input type="submit" value="계산" name="B1"> <input type="reset" value="다시입력" name="B2">
</form>
<HR>

계산결과 : <%=result %>
</div>
</BODY>
</HTML>