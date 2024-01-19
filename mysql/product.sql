create schema test_product;

create table test_product.product_tb  (
  product_id int not null AUTO_INCREMENT primary key,
  product_name varchar(100) not null,
  product_size varchar(10) not null,
  product_color varchar(20) not null,
  product_price int not null
  );
  
insert into product_tb
values
	(0, '모헤어 브이넥 앙고라 니트', 'S', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'M', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'L', 'Black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'XL', 'Black', 37400),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'S', 'White', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'M', 'White', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'L', 'White', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'XL', 'White', 38000),
	(0, '콘테 코듀로이 와이드 밴딩 팬츠', 'XXL', 'White', 38000),
	(0, '버티칼 투웨이 골지 양털 집업', 'M', 'Navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'L', 'Navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'XL', 'Navy', 49000),
	(0, '버티칼 투웨이 골지 양털 집업', 'XXL', 'Navy', 49000),
	(0, '반집업 꽈배기 카라니트', 'SS', 'White', 48000),
	(0, '반집업 꽈배기 카라니트', 'S', 'White', 48000),
	(0, '반집업 꽈배기 카라니트', 'M', 'White', 48000),
	(0, '반집업 꽈배기 카라니트', 'L', 'White', 48000),
	(0, '반집업 꽈배기 카라니트', 'XL', 'White', 48000),
	(0, '후드 MA-1 패딩', 'S', 'Black', 62000),
	(0, '후드 MA-1 패딩', 'M', 'Black', 62000),
	(0, '후드 MA-1 패딩', 'L', 'Black', 62000),
	(0, '후드 MA-1 패딩', 'XL', 'Black', 62000);
    
select 
	*
from 
	product_tb;

select 
	product_name as 상품명,
	product_color as 색상,
    count(product_color) as 'product_color_count'
from 
	product_tb
group by
	product_color;
    
    
    
select  # 생각하는 순서대로 작성하기 from -> where -> group by -> having -> select -> order by
	product_size,
    count(product_size) as product_size_count
from 
	product_tb
group by
	product_size;
    
