use `db_study`; #데이터 베이스 선택하는 명령어 DDL

insert into student_tb(student_id, name, age, address) values (0, '정건희', 25, '부산 해운대구');    
insert into student_tb(address, name, age, student_id) values ('부산 해운대구', '정건희', 25, 3); # primarykey 두개가 잡혀있으면 컴포지드프라이머리키 라고 함
																							# 3 정건희는 안됨 두개가 모두 중복일때만 안들어가짐
insert into student_tb(name, address) values ('정건희', null);
insert into student_tb values (0, '정건삼', 26, null);
insert into student_tb values (0, '정건삼', 26, null), (0, '정건사', 27, null);

# 줄바꿈 기준
insert into student_tb
    (student_id, name, age, address)
values	
	(0, '정건삼', 26, null),
	(0, '정건사', 27, null); 
