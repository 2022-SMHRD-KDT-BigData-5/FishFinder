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


select count(*) as todayCnt from visit
        where v_date > DATE_ADD(now(), interval -24 hour)

SELECT * FROM community_info ORDER BY article_date DESC

SELECT B.* FROM 
      	(SELECT  @ROWNUM:=@ROWNUM +1 AS RN, A.* FROM
			(SELECT * FROM community_info ORDER BY article_date DESC) A ) B
		WHERE RN > (#{nowPage}-1)*#{cntPerPage} and RN <= #{nowPage}*#{cntPerPage}
		
SELECT * FROM 
      	(SELECT  @ROWNUM:=@ROWNUM +1 AS RN, A.* FROM
			(SELECT * FROM community_info ORDER BY article_date DESC) A ) B
		WHERE RN BETWEEN #{start} AND #{end}	
		
		
SELECT COUNT(article_seq) FROM comment where user_num = (select user_num from user_info)	

SELECT COUNT(comment_seq) FROM comment 
        where article_seq = (select article_seq from community_info where article_seq=1)
        
select * from comment where article_seq = 1

SELECT B.* FROM 
      	(SELECT  @ROWNUM:=@ROWNUM +1 AS RN, A.* FROM
			(SELECT * FROM community_info ORDER BY article_date DESC) A ) B
		WHERE RN BETWEEN 1 AND 10
		
SELECT  @ROWNUM:=@ROWNUM +1 AS RN, A.* FROM
			(SELECT * FROM community_info ORDER BY article_date DESC) A WHERE RN BETWEEN 1 AND 10
			
update question_board set q_status=1 
        where q_seq=(select q_seq from question_board where q_seq (insert into answer_info(q_seq) values (1)))			
        
update question_board set q_status=1 where q_seq=1