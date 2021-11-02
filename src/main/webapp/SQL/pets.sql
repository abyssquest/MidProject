drop table pets purge;

create table pets(
	seq				number(10)		primary key,
	name			varchar(100),
	masterId		varchar(100),
	birthDate		Date
);

select * from pets;