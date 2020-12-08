<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file = "./db_conn.jsp"%>

<%
	String ID = (String)session.getAttribute("sessionId");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "delete from L3_user1 where id = ?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ID);
	
	pstmt.executeQuery();
	
	response.sendRedirect("./index.jsp");
	
	session.removeAttribute(ID);
%>