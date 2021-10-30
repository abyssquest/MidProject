select * from member;

create table member(
	name varchar2(10) primary key,
	id varchar2(10) ,
	password varchar2(15) ,
	address varchar2(30) ,
	email varchar2(20) ,
	join_date date
) 
insert into member values('너','dudcks','admin','Seoul','email.com',sysdate);
delete from member where name = '너';
select * from pet;

create table pet(
	name varchar2(10) ,
	masterId varchar2(10) ,
	profileImageKey varchar2() ,
)