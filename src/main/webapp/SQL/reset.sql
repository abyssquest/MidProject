drop table member purge;
drop table pets purge;
drop table imageboard purge;
drop table comments purge;

create table member(
	id varchar2(10) primary key ,
	name varchar2(10),
	password varchar2(15) ,
	address varchar2(30) ,
	email varchar2(20) ,
	join_date date default sysdate
);

create table pets(
	seq				number(10)		primary key,
	name			varchar(100),
	masterId		varchar(100),
	birthDate		Date,
	uploadPetFile	varchar(100)
);

create table imageboard(
	seq					number(10)		primary key,
	title				varchar(100),
	content				varchar(200),
	masterId			varchar(100),
	uploadDate			Date,
	uploadFileName		varchar(200)
);

create table comments(
	seq					number(10)		primary key,
	content				varchar(200),
	imageSeq			number(10),
	masterid			varchar(100),
	uploadDate			Date
);