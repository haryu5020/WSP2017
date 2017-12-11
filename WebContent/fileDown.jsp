<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%@ page import="com.oreilly.servlet.ServletUtils"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
	<%
		boolean skip = false;
		String client = "";
		String filename = request.getParameter("uploadFile");
		InputStream in = null;
		OutputStream os = null;
		File file = null;
		
		String savePath = request.getServletContext().getRealPath("/file");
		try{
			try{
				file = new File(savePath + filename);
				in = new FileInputStream(file);
				}catch(FileNotFoundException e){
					skip = true;
			}
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");
		
		if(!skip){
	         
	         // IE
	            if(client.indexOf("MSIE") != -1){
	             response.setHeader ("Content-Disposition", "attachment; filename="+new String(filename.getBytes("KSC5601"),"ISO8859_1"));
	            }else{
	            // IE 이외
	             response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
	                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
	            } 
	            
	            response.setHeader ("Content-Length", ""+file.length() );
	           
	            out.clear();
	            pageContext.pushBody();
	           
	            os = response.getOutputStream();
	            byte b[] = new byte[(int)file.length()];
	            int leng = 0;
	            
	            while( (leng = in.read(b)) > 0 ){
	                os.write(b,0,leng);
	            }

	        }else{
	         response.setContentType("text/html;charset=UTF-8");
	            out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");

	        }
	        
	        in.close();
	        os.close();

	    }catch(Exception e){
	      e.printStackTrace();
	    }
	%>

</body>
</html>