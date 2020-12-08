<%@page contentType="text/html; charset=UTF-8" %>
<div class = "menu">
	
<% if(session.getAttribute("sessionId")==null){ %>
    		<a href = "login.jsp">로그인</a>
    		<a href = "sign_Up.jsp">회원가입</a>
    		<a href = "./index.jsp">메인 화면으로</a>
    	<%}else { %>
    		<p>ID :<%=session.getAttribute("sessionId")%>
    			<a href = "logout.jsp">로그아웃</a>
    		</p>
    		<p>
    			이름 <%=session.getAttribute("sessionName") %>
    		</p>
    		<a href = "update.jsp">회원 수정</a>
    		<a href = "sign_delete.jsp">회원탈퇴</a>
    		<a href = "./index.jsp">메인 화면으로</a>
 <%} %>
 </div>