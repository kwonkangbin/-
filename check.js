function joincheck(){
	console.log("등록");
	if(document.frm.custnamne.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		frm.custname.focus();
		return false;
	}
	else if(document.frm.phone.value.length == 0){
		alert("회원전화가 입력되지 않았습니다.");
		frm.phone.focus();
		return false;
	}
	else if(document.frm.adress.value.length == 0){
		alert("회원주소가 입력되지 않았습니다.");
		frm.adress.focus();
		return false;
	}
	else if(document.frm.joindate.value.length == 0){
		alert("가입일자가 입력되지 않았습니다.");
		frm.joindate.focus();
		return false;
	}
	else if(document.frm.city.value.length == 0){
		alert("도시코드가 입력되지 않았습니다.");
		frm.city.focus();
		return false;
	}
	alert("회원가입 완료");
	return true;
}

function search(){
	console.log("등록");
	//window.location = 'list.jsp';
}
