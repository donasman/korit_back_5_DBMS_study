set @book_name = 'aa';
set @author_name = 'bb';
set @pubshlier_name = 'cc';
set @p_insert_book_status = 0;

# 프로시저의 역할
call p_insert_book (@book_name, @author_name, @pubshlier_name, @p_insert_book_status);

select
	*
from
	book_tb
order by
	book_id desc;
    
select @p_insert_book_status;