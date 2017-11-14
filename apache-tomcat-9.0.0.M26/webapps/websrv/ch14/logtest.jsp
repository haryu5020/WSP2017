<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.io.*, org.slf4j.*"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch14 : log 테스트</title>
</head>
<body>
<div align="center">
<H2>ch14:logtest.jsp</H2>
<HR>
로그 종합 테스트로 화면상에는 아무것도 출력되지 않지만 콘솔 메시지및 log 디렉토리에 파일로 로그가 생성 됩니다.
<%
	// 시스템 기본 로그를 통해 처리함.
	application.log("logtest.jsp:테스트 로그 메시지...",new IOException());

	Logger log = LoggerFactory.getLogger(this.getClass());
	log.info("info-jsp 파일에서 처리한 로그"); 
	log.warn("warn-jsp 파일에서 처리한 로그"); 
%>

</div>
</body>
</html>