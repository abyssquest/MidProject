drop table imageboard purge;

create table imageboard(
	seq					number(10)		primary key,
	title				varchar(100),
	content				varchar(200),
	masterId			varchar(100),
	uploadDate			Date,
	uploadFileName		varchar(200)
);

select * from imageboard;