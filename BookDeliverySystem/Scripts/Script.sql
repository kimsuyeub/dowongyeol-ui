

SELECT *
	FROM TB_RESVE tr 
WHERE BOOK_SEQ ='47' AND USER_SEQ ='1' ;

SELECT *
	FROM TB_RESVE tr 
	WHERE BOOK_SEQ ='35';




UPDATE TB_RESVE SET RESVE_STEP = RESVE_STEP-1
WHERE RESVE_STEP  > 
			(SELECT RESVE_STEP 
				FROM TB_RESVE
				WHERE BOOK_SEQ ='35' AND USER_SEQ ='3');
			
DELETE FROM TB_RESVE
WHERE BOOK_SEQ ='35' AND USER_SEQ ='3';
				
