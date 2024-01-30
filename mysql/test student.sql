insert into test_student_tb
values 
(0, '김춘식'),
(0, '손흥민');
insert into test_subject_tb
values 
(0, '컴퓨터 구조'),
(0, '데이터 베이스'),
(0, '인공지능');

insert into test_register_tb
values 
(0, 1, 1, 95),
(0, 2, 1, 84),
(0, 1, 2, 89),
(0, 2, 2, 92),
(0, 1, 3, 100),
(0, 2, 3, 88);

select
	trt.test_register_id,
    tst.student_id,
    tst.student_name,
    tstb.test_subject_id,
    tstb.subject_name,
    trt.test_register_grade
from
	test_register_tb trt
    left outer join test_student_tb tst on (tst.student_id = trt.test_student_id)
    left outer join test_subject_tb tstb on (tstb.test_subject_id = trt.test_subject_id)
order by
	test_register_id limit 4;