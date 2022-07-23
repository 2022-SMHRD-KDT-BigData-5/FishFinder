create table board
( 
	idx int not null auto_increment,
	title varchar(100),
	writer varchar(100),
	content varchar(2000),
	indate datetime default now(),
	count int default 0,
	
	primary key(idx)
);

-- alt + x (실행 단축키)

insert into board(title, writer, content)
values('스프링 게시판', '김승현', '즐거운 게시판 만들기');

delete from board;

insert into visit(v_date) values(NOW());

select count(*) as totalCnt from visit;

select count(*) as todayCnt from visit
        where v_date=now();
        
select * from 
       	(select rownum rn, a.*from 
       		(community_info order by article_date desc) a) where rn > (#{viewPage}-1)*#{unit} rd <= #{viewPage}*#{unit};
       		
select * from 
       	(select rownum rn, a.*from 
       		(select * from community_info order by article_date desc) a) 
       			where rn BETWEEN #{startIndex} AND #{endIndex};
       			
select * from community_info order by article_date desc 
limit #{startIndex} , #{endIndex};