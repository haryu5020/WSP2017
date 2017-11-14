<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>

<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>

<jsp:useBean id="product" class="jspbook.ch10.Product"/>

<H2><jsp:doBody/></H2>
<table border="${border}" bgcolor="${bgcolor}" width="150">
	<%
		for(String item : product.getProductList()) {
			out.println("<tr><td>"+item+"</td></tr>");
		}
	%>
</table>