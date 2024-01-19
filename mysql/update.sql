# update
update product_color_tb
set product_color_name = 'Green'
where 
	product_color_name = 'Navy';


update product_color_tb #case when when else end 조건문 if -> case,  ( -> when,  ) -> end,
set 
	product_color_name_kor = case
	when product_color_name = 'Black' then '블랙' # when + 조건
	when product_color_name = 'White' then '화이트'
	when product_color_name = 'Green' then '그린'
end;


UPDATE product_color_tb
SET product_color_name_kor = '블랙'
WHERE product_color_name = 'Black';

UPDATE product_color_tb
SET product_color_name_kor = '화이트'
WHERE product_color_name = 'White';

UPDATE product_color_tb
SET product_color_name_kor = '그린'
WHERE product_color_name = 'Green';
