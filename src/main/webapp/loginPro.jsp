<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.memberPro"%>
 
<% request.setCharacterEncoding("utf-8");%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
	String passwd  = request.getParameter("passwd");
	
	memberPro member = memberPro.getInstance();
    int check= member.userCheck(id,passwd);

	if(check==1){
		session.setAttribute("id",id); 
		response.sendRedirect("main.jsp");
	}else if(check==0){%>
    <script> 
	  alert("비밀번호가 맞지 않습니다.");
      history.go(-1); 
	</script>
<%}else{ %> 
	<script>
	  alert("아이디가 맞지 않습니다..");
	  history.go(-1);
	</script>
<%}%>