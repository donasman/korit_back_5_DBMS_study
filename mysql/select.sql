select * from student_tb;

# *의 의미는 전체 컬럼 

select 
	student_id, # 컬럼은 무조건 한줄에 하나
    name,
    age
from #데이터는 위치가 있기에 from where 을 사용
	student_tb 
where 
	not name = '정건희' # 특수기호 말고 문자 그대로 not or and 사용
    and name = '정건삼'; 
    
select
	*
from
	student_tb
where
	name in ('정건희', '정건삼'); # or처럼 사용가능
select 
	*
from
	student_tb
where
	student_id in(1, 2, 3);
    
truncate table student_tb;

/*
 10명 학생 정보 추가
 김도균 27 부산 금정구
 김도훈 25 부산 부산진구
 김범수 33 부산 금정구
 김상현 26 부산 남구
 이재영 26 부산 서구
 이정찬 29 부산 부산진구
 이지언 26 부산 동래구
 이편원 30 경상남도 양산시
 전주환 30 부산 부산진구
 심재원 29 부산 남구
 */
 
 insert into student_tb
	(student_id, name, age, address)
values
	(0, '김도균', 27, '부산 금정구'),
	(0, '김도훈', 25, '부산 부산진구'),
	(0, '김범수', 33, '부산 금정구'),
	(0, '김상현', 26, '부산 남구'),
	(0, '이재영', 26, '부산 서구'),
	(0, '이정찬', 29, '부산 부산진구'),
	(0, '이지언', 26, '부산 동래구'),
	(0, '이편원', 30, '경상남도 양산시'),
	(0, '전주환', 30, '부산 부산진구'),
	(0, '심재원', 29, '부산 남구');

select
	*
from
	student_tb
where 
	age > 19
    and age < 30;


select
	*
from
	student_tb
where 
	age between 20 and 29; # 이상 이하로 잡힌다 초과, 미만 x 숫자나 날짜의 이상 이하 값을 찾을 때 자주 사용
    
select
	*
from
	student_tb
where
	name like '%김%'; #와일드카드 %, __ (__는 자릿숚까지 맞춰야됨), 양쪽에 %?% ?만 있어도 나옴

select
	*
from
	student_tb
where
	name like '%도%'
    or name like '%원';

# 집계(그룹화)

select # 조회 하는 순서 from -> where -> group by -> having -> select -> order by
	name,
    address,
    count(*) as address_count # as -> 알리아스
from
	student_tb
group by
	address
having
	count(*) >= 2
order by # 오름차순 정렬
	address_count desc, #내림차순 정렬
    address desc; # count를 먼저 정렬하고 address 다시 정렬해준다. 앞에 코드는 숫자 순서로 내림 차순 정렬 후 글자 순서로 내림 차순 정렬 한 것임
    
