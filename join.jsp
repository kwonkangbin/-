<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href = "./style.css">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<%@ include file="./header.jsp"%>
<section>
	<h2>홈쇼핑 회원 등록</h2>
	<form method="POST" name="frm" action='i-action.jsp'>
		<table border="1">
		<%  
		     // try - catch 문법을 사용해야한다.
			String custno = "";
			try{
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select max(custno)+1 as custno from member_tbl_02");
				rs.next(); //한 개의 결과물을 출력, 여러개 출력할거면 반복문 필요
				custno = rs.getString("custno");
				stmt.close();
				con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		%>
			<tr>
				<td>회원번호(자동발생)</td>
				<td>
					<input type="text" name="custno" value='<%=custno%>' readonly>
				</td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td>
					<input type="text" name = "custname">
				</td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td>
					<input type="text" name = "phone">
				</td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td>
					<input type="text" name = "adress">
				</td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td>
					<input type="text" name = "joindate">
				</td>
			</tr>
			<tr>
				<td>고객등급[A:VIP,B:일반,C:직원]</td>
				<td>
					<input type="text" name = "grade">
				</td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td>
					<input type="text" name = "city">
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="submit" name = "city" value="등록" onclick="return joincheck()">
					<input type="button" name = "city" value="조회" onclick="return search()">
				</td>
			</tr>
		</table>
	</form>
</section>
<%@ include file="./footer.jsp"%>
</body>
</html>