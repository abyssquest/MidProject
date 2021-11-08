insert into member (id, password, name, profileImage, email, joinDate)
		values ('admin', 'admin', '관리자', 'profile01.jpg', 'email@email.com', sysdate)

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '01', '더미01', sysdate, 'dummy01.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '02', '더미02', sysdate, 'dummy02.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '03', '더미03', sysdate, 'dummy03.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '04', '더미04', sysdate, 'dummy04.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '05', '더미05', sysdate, 'dummy05.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '06', '더미06', sysdate, 'dummy06.jpeg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '07', '더미07', sysdate, 'dummy07.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '08', '더미08', sysdate, 'dummy08.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '09', '더미09', sysdate, 'dummy09.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '10', '더미10', sysdate, 'dummy10.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '11', '더미11', sysdate, 'dummy11.jpg')

insert into imageboard (seq, masterId, title, content, uploadDate, fileName)
values ((select nvl(max(seq), 0)+1 from imageboard), 'admin', '12', '더미12', sysdate, 'dummy12.jpg')