<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@include file = "./db_conn.jsp"%>
<%

	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from L3_user1 where ID = ? and password = ?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setString(2, password);
	rs = pstmt.executeQuery();
	
	if(rs.next()) {	
		String name = rs.getString("name");
		session.setAttribute("sessionId", ID);
		session.setAttribute("sessionName", name);

	}
	response.sendRedirect("index.jsp");
%>