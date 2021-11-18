<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="write.writePro"%>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="sp" class="write.writeBean">
	<jsp:setProperty name="sp" property="*" />
</jsp:useBean>

<% 
	writePro st = writePro.getInstance();


	if(sp.getBoard_no().equals("0")){
		sp.setBoard_no("0");
	}
	else if(sp.getBoard_no().equals("01")) {
		sp.setBoard_no("01");
	}
	else if(sp.getBoard_no().equals("02")) {
		sp.setBoard_no("02");
	}
	else if(sp.getBoard_no().equals("1")) {
		sp.setBoard_no("1");
	}
	else if(sp.getBoard_no().equals("2")) {
		sp.setBoard_no("2");
	}
	else if(sp.getBoard_no().equals("3")) {
		sp.setBoard_no("3");
	}
	else if(sp.getBoard_no().equals("4")) {
		sp.setBoard_no("4");
	}
	else if(sp.getBoard_no().equals("5")) {
		sp.setBoard_no("5");
	}
	else if(sp.getBoard_no().equals("6")) {
		sp.setBoard_no("6");
	}
	else if(sp.getBoard_no().equals("7")) {
		sp.setBoard_no("7");
	}
	else if(sp.getBoard_no().equals("8")) {
		sp.setBoard_no("8");
	}
	else if(sp.getBoard_no().equals("9")) {
		sp.setBoard_no("9");
	}
	else if(sp.getBoard_no().equals("10")) {
		sp.setBoard_no("10");
	}
	else if(sp.getBoard_no().equals("11")) {
		sp.setBoard_no("11");
	}
	else if(sp.getBoard_no().equals("12")) {
		sp.setBoard_no("12");
	}
	else if(sp.getBoard_no().equals("13")) {
		sp.setBoard_no("13");
	}
	else if(sp.getBoard_no().equals("14")) {
		sp.setBoard_no("14");
	}
	else if(sp.getBoard_no().equals("15")) {
		sp.setBoard_no("15");
	}
	else if(sp.getBoard_no().equals("16")) {
		sp.setBoard_no("16");
	}
	else if(sp.getBoard_no().equals("17")) {
		sp.setBoard_no("17");
	}
	else if(sp.getBoard_no().equals("18")) {
		sp.setBoard_no("18");
	}
	else if(sp.getBoard_no().equals("19")) {
		sp.setBoard_no("19");
	}
	else if(sp.getBoard_no().equals("20")) {
		sp.setBoard_no("20");
	}
	else if(sp.getBoard_no().equals("21")) {
		sp.setBoard_no("21");
	}
	else if(sp.getBoard_no().equals("22")) {
		sp.setBoard_no("22");
	}
	else if(sp.getBoard_no().equals("23")) {
		sp.setBoard_no("23");
	}
	else if(sp.getBoard_no().equals("24")) {
		sp.setBoard_no("24");
	}
	else if(sp.getBoard_no().equals("25")) {
		sp.setBoard_no("25");
	}
	else if(sp.getBoard_no().equals("26")) {
		sp.setBoard_no("26");
	}
	else if(sp.getBoard_no().equals("27")) {
		sp.setBoard_no("27");
	}
	else if(sp.getBoard_no().equals("28")) {
		sp.setBoard_no("28");
	}

	st.insertFreeboard(sp);	
	
	response.sendRedirect("freeboard.jsp");
%>