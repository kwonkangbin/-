<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	String sql = String.format("insert into member_tbl_02 values('%s','%s','%s','%s',TO_DATE('%s','yyyy-MM-dd'),'%s','%s')",custno,custname,phone,address,joindate,grade,city);
	stmt.executeUpdate(sql);
	stmt.close();
	con.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="join.jsp"></jsp:forward>
</body>
</html>