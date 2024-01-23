select 
	bt.book_id,
	bt.book_name,
    at.author_name,
    pt.publisher_name
    
from
	book_tb bt
    left outer join author_tb at on(at.author_id = bt.author_id)
    left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
where
	bt.book_name like '%손흥민%'
group by
	bt.book_name,
    at.author_name,
    pt.publisher_name;
    
select
	*
from (select 
	bt.book_name,
    at.author_name,
    pt.publisher_name
    
	from
		book_tb bt
		left outer join author_tb at on(at.author_id = bt.author_id)
		left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
	group by
		bt.book_name,
		at.author_name,
		pt.publisher_name
	)
where

