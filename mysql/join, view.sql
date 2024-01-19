SELECT * FROM db_study.product_register_tb;
create view product_register_view as  #view 가상테이블
select
	prt.product_register_id,
	prt.product_id,
	pt.product_name,
	prt.product_size_id,
    pst.product_size_name,
    prt.product_color_id,
    pct.product_color_name,
    pt.product_price
    
from #테이블 결합하기 
	product_register_tb prt  # 마스터 테이블 테이블에는 as를 생략한다.
	left outer join product_tb pt on(pt.product_id = prt.product_id)      #곱하기 개념, 슬레이브 테이블, 테이블에 조인을 결정하는것은 슬레이브 테이블이다. on안에 들어가는게 조건이다. -> 참 일때 조인해라. 
	left outer join product_size_tb pst on(pst.product_size_id = prt.product_size_id)     
	left outer join product_color_tb pct on(pct.product_color_id = prt.product_color_id);


select
	prt.product_size_id,
	pst.product_size_name,
    count(prt.product_size_id) as count
from #테이블 결합하기 
	product_register_tb prt  # 마스터 테이블 테이블에는 as를 생략한다.
	left outer join product_tb pt on(pt.product_id = prt.product_id)      #곱하기 개념, 슬레이브 테이블, 테이블에 조인을 결정하는것은 슬레이브 테이블이다. on안에 들어가는게 조건이다. -> 참 일때 조인해라. 
	left outer join product_size_tb pst on(pst.product_size_id = prt.product_size_id)     
	left outer join product_color_tb pct on(pct.product_color_id = prt.product_color_id)
group by
	prt.product_size_id,
    pst.product_size_name
order by
	prt.product_size_id;
    
    
select
	product_size_id,
    product_size_name,
    count(product_size_id) as product_size_count
from
	product_register_view
group by
	prt.product_size_id,
    pst.product_size_name
having
	product_size_id > 3;
    
        
select
	product_size_id,
    product_size_name,
    count(product_size_id) as product_size_count
from
	product_register_view
where 
	product_size_name in ('L', 'XL', 'XXL')
group by
	prt.product_size_id,
    pst.product_size_name;