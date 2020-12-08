<%
	session.removeAttribute("sessionId");
	response.sendRedirect("./index.jsp");
%>