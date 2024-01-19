# delete 고민 또 고민 후 실행할것
# key 값으로 지우는게 기본이다. 특별한 상황에만 예외를 둔다.
# delete는 join이 안된다.

# 서브 쿼리는무조건 괄호를 넣는다
delete
from
	product_register_tb prt
    
where
	product_color_id in (select 
							product_color_id
						from
							product_color_tb
						where
							product_color_name = 'Black'
						or  product_color_name = 'White');

select
	*
from
	product_register_tb;
    
# 트랜잭션, 트리거, 저장프로시져, 일반함수