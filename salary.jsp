<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="./header.jsp"%>
<section>
<h2>회원목록조회</h2>
<form>
	<table border="1px">
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>고객등급</td>
			<td>매출</td>
		</tr>
<%
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();	
	String sql = "select me.custno, me.custname, me.grade, sum(mo.price) price "+
			"from member_tbl_02 me, money_tbl_02 mo "+
			"where member_tbl_02.custno = money_tbl_02.custno"+
			"group by me.custno, me.custname, me.grade "+
			"order by price desc;"
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		grade = rs.getString("grade");
		switch(grade) {
	        case "A":
	            grade = "VIP";
	            break;
	        case "B":
	            grade = "일반";
	            break; 
	        case "C":
	        	grade="직원";
	            break;
		}
%>
		<tr>
			<td><%=rs.getString("custno")%></td>
			<td><%=rs.getString("custname")%></td>
			<td><%=grade%></td>
			<td><%=rs.getString("price")%></td>
		</tr>
<%	}
} catch(Exception e){
	e.printStackTrace();
}		
%>
	</table>
</form>	
<%@ include file="./footer.jsp"%>
</body>
</html>