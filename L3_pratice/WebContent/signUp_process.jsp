<%@page import="javax.websocket.SendResult"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*"%>

<%@include file = "db_conn.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String tel = request.getParameter("tel");
	String description = request.getParameter("description");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "insert into L3_user1 values (?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setString(2, password);
	pstmt.setString(3,name);
	pstmt.setString(4,sex);
	pstmt.setString(5,tel);
	pstmt.setString(6,description);
	
	
	pstmt.executeQuery();
	
	response.sendRedirect("./index.jsp");
	
%>