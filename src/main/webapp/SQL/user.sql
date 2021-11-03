drop table member purge;

create table member(
	id varchar2(10) primary key ,
	name varchar2(10),
	password varchar2(15) ,
	address varchar2(30) ,
	email varchar2(20) ,
	join_date date default sysdate
)

select * from member;
delete from member;
insert into member(id,name,password,address,email) values('test2','아이','agegwa','soul','abc@gmail.com')