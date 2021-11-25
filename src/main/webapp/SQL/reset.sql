drop table member purge;
drop table pets purge;
drop table imageboard purge;
drop table comments purge;

create table member(
	id				varchar2(20)	primary key,
	password		varchar2(20),
	name			varchar2(20),
	profileImage	varchar2(30),
	email			varchar2(20),
	address			varchar2(30),
	joinDate		date			default sysdate
);

create table pets(
	petKey			number(10)		primary key,
	masterId		varchar(20),
	name			varchar(20),
	petImage		varchar(40),
	birthDate		Date
);

create table imageboard(
	seq					number(10)		primary key,
	masterId			varchar(20),
	title				varchar(50),
	content				varchar(200),
	uploadDate			Date,
	fileName			varchar(100)
);

create table comments(
	num					number(10)		primary key,
	content				varchar(200),
	imageSeq			number(10),
	masterid			varchar(100),
	uploadDate			Date
);