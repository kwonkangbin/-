# -정처산기
테이블 통째로 지우고 다시 만드는 방법!
1. delete fron table명 : 테이블의 벼대는 살아있고 insert만 죽음
2. drop table 테이블명 : 완전히 없애기 

select *
from money_tbl_02;

select *
from member_tbl_02;

1. 조회
select *(혹은 *대신 내가 보고싶은 모든속성)
from 테이블
where 조건
group by
having
order by

2.삽입 
insert into 테이블명
values(값1, 값2.........)

3.수정
update 테이블명
set 속성2 = '값2'
where 속성1 = '값1'

4.삭제
delete from 테이블명
where 속성1 = '값1' // 안적어도됨 안적으면 모두 삭제

5.생성
CREATE TABLRE명 테이블명(
	자료형1 변수명1 [NOTNULL],
	자료형1 변수명1 [NOTNULL],	
)



create table member_tbl_02 (
	custno number(6) not null PRIMARY KEY,
	custname varchar2(20),
	phone varchar2(13),
	address varchar2(60),
	joindate date,
	grade char(1),
	city char(2)
);

PRIMARY KEY(custno)

insert into member_tbl_02 values(10001,'김행복', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');
insert into member_tbl_02 values(10002,'이축복', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');
insert into member_tbl_02 values(10003,'장믿음', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');
insert into member_tbl_02 values(10004,'최사랑', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');
insert into member_tbl_02 values(10005,'진평화', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');
insert into member_tbl_02 values(10006,'차공단', '010-1111-2222', '서울 동대문구 휘경 1동', '20210102', 'A', '10');



create table money_tbl_02 (
	custno number(6) not null,
	salenol number(8) not null,
	pcost number(8),
	amount number(4),
	price number(8),
	pcode varchar2(4),
	sdate date,
	PRIMARY KEY(custno, salenol)
);

insert into money_tbl_02 values(100001,20160001,500,5,2500,A001,20160101);
insert into money_tbl_02 values(100001,20160002,1000,4,4000,A002,20160101);
insert into money_tbl_02 values(100001,20160003,500,3,2500,A008,20160101);
insert into money_tbl_02 values(100002,20160004,2000,1,2500,A004,20160101);
insert into money_tbl_02 values(100002,20160005,500,1,2500,A001,20160101);
insert into money_tbl_02 values(100003,20160006,1500,2,2500,A003,20160101);
insert into money_tbl_02 values(100004,20160007,500,2,2500,A001,20160101);
insert into money_tbl_02 values(100004,20160008,300,1,2500,A005,20160101);
insert into money_tbl_02 values(100004,20160009,600,1,2500,A006,20160101);
insert into money_tbl_02 values(100004,20160010,3000,1,2500,A007,20160101);












