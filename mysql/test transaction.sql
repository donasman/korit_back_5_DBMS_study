start transaction;

insert into test_product_tb
values
(0, '오렌지사탕', 20);

savepoint update_product;

update 
	test_product_tb
set
	test_product_count = 200
where
	test_product_id = 2;

rollback to update_product;

update 
	test_product_tb
set
	test_product_count = 200
where
	test_product_id = 1;
select
	*
from
	test_product_tb;

commit;