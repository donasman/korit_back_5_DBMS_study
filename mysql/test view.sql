
create view USER_VIEW as 
(SELECT
	`USER_ID`,
	`USERNAME`,
	`PASSWORD`,
	`NAME`,
	`EMAIL`
FROM
	`USER_TB`
where
	`USER_ID` BETWEEN 1 AND 200);
    
select
	*
from
	USER_VIEW
where
	 uesrname like 'a%';
     
show index from test_product_tb;

SHOW FULL TABLES IN db_study
WHERE TABLE_TYPE LIKE 'VIEW';