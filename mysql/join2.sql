select
	*
from
	(select  #상위 그래프에 있는 개념을 가져온다.
		rank() over(partition by bt.publisher_id order by bt.publisher_id, sum(brt.loans_count) desc) as rank_num, # partition by select 할 때 한번 더 묶어준다.
		row_number() over(partition by bt.publisher_id order by bt.publisher_id, sum(brt.loans_count) desc) as row_num, # row_number 매칭시킬때 사용
		brt.book_id,
		bt.book_name,
		bt.author_id,
		at.author_name,
		bt.publisher_id,
		pt.publisher_name,
		sum(brt.loans_count) as total_loans_count
	from
		book_register_tb brt
		left outer join book_tb bt on (bt.book_id = brt.book_id)
		left outer join author_tb at on (at.author_id = bt.author_id)
		left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id)
	group by
		brt.book_id,
		bt.author_id,
		bt.publisher_id) as temp_book_register_tb  # 서브쿼리는 as무조건 붙인다
