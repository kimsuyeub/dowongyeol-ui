
--관리자아이디 생성
INSERT INTO TB_USER (USER_SEQ, USER_EMAIL, USER_PASSWORD, USER_NAME, USER_PHONE, USER_BIRTH, USER_AUTH, USER_DELFLAG, JOINDATE, USER_GENDER)
VALUES (710, 'admin1@admin.com', 'asd123', '관리자', '010-7555-7864', '2005-07-14', 'A', 'N', '2022-07-18', 'F');


--FAQ 자주묻는 질문 생성
INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'1', 'Q.도서 예약은 어떻게 하나요?', 'A. 예약버튼: 홈페이지 온라인 예약(00:00~24:00), 
예약 잔여분 및 취소분에 한해 당일 예약 가능 (00:00 ~ 24:00)
예약취소: 배송요청 당일까지 취소 가능', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'1', 'Q.도서관 이용을 처음하려고 합니다. 어떤 절차로 이용해야 하나요?', 'A. 회원 등록(이용자 등록은 인터넷으로 하실 수 있습니다.) 및 회원번호를 발급받으신 후, 로그인하시고 이용하시면 됩니다.
또한 도서관 소장 자료는 도서관 내에서만 이용하실 수인 책을 가지고 공부할 수 있는 일반열람실은 운영하지 않습니다.', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'1', 'Q.대출을 하려면 꼭 회원가입을 해야하나요?', 'A. 2005년 12월 1일부터 이용증을 발급 받아야 도서관 출입이 가능하며,
도서관 서비스(자료예약 및 신청, 디지털도서관 좌석 예약, 우편복사신청 등)를 제공받을 수 있습니다.
이용증을 발급 받기 위해서는 우선 회원가입을 해야 합니다', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'2', 'Q.희망도서 신청은 어떻게 하나요?', 'A. 자료검색에서 찾고자 하는 자료가 검색결과에 없을 경우 “자유게시판” 클릭을 통해 신청하실 수 있습니다. 로그인 후 신청하시고자 하는 자료명, 저자명, 출판사 등을 입력하시면 됩니다.', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'3', 'Q.본인확인이 되지 않는데 어떻게 해야 하나요?', 'A.개정 정보통신망법 제23조에 따라 회원 가입시에는 주민등록번호를 수집하지 않습니다.
I-PIN인증 또는 휴대폰 인증 중 하나를 선택하여 회원가입을 진행해야 합니다.
인증이 되지 않을 경우 각 고객센터로 문의하시기 바랍니다.
- KCB아이핀 고객센터
ㆍ연락처: 02-708-1000, cs_okname@koreacb.com
- 한국모바일인증(주) 고객센터
ㆍ연락처: 1644-1863, webmaster@kmcert.com
ㆍ운영시간: 월~금, 09:30~18:30', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'3', 'Q.본인확인이 되지 않는데 어떻게 해야 하나요?', 'A. □ 온라인에서 무분별하게 수집·보유 중인 개인정보에 유효기간을 두어 오남용을 최소화한다는 취지로 만들어진 것으로 일정기간 이용하지 않는 회원의 개인정보를 파기 또는 별도 분리 보관하는 등 조치를 하여야 합니다.
□「개인정보 보호법」제21조 제1항, 제3항 및 「 계발의 민족 홈페이지 개인정보처리방침」에 의거하여 2년 이상  계발의 민족을 이용하지 않은 회원의 계정을 휴면 전환하고, 해당 회원의 개인정보를 파기 또는 분리 보관 조치합니다.
□ 휴면 전환 대상
2년 이상 계발의 민족 홈페이지 또는 모바일 서비스에 로그인하지 않았거나 도서관 방문 이용 실적이 없는 회원
※「개인정보 보호법」 제21조(개인정보의 파기)
① 개인정보처리자는 보유기간의 경과, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 지체 없이 그 개인정보를 파기하여야 한다.
③ 개인정보처리자가 제1항 단서에 따라 개인정보를 파기하지 아니하고 보존하여야 하는 경우에는 해당 개인정보 또는 개인정보파일을 다른 개인정보와 분리하여서 저장·관리하여야 한다.
「홈페이지 개인정보처리방침」개인정보의 수집 및 보유
 계발의 민족 통합회원 : 마지막 이용일로부터 5년', 'N');



INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'3', 'Q.회원탈퇴는 어떻게 하나요?', 'A.국립중앙도서관 홈페이지 로그인 => ‘회원정보수정’ => ‘회원탈퇴’ 메뉴 클릭', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'4', 'Q.도서 검색은 어떻게 하나요?', 'A.홈페이지 검색창에 자료 제목, 저자명, 발행자 등을 입력해 소장자료를 검색합니다.', 'N');

INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'4', 'Q.도서 배송신청은 어떻게 하나요?', 'A. 홈페이지 대출신청 이후 주소지를 입력하고 배송비를 지불하면 대출이 실행됩니다.', 'N');
INSERT INTO BOOK.TB_FAQ_BOARD
(FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG)
VALUES(SQ_FAQ_BOARD.NEXTVAL, 710,'4', 'Q.도서 배송신청은 어떻게 하나요?', 'A. 홈페이지 대출신청 이후 주소지를 입력하고 배송비를 지불하면 대출이 실행됩니다.', 'N');


--새글등록
SELECT SQ_FAQ_BOARD.NEXTVAL FROM DUAL;



--전체FAQ조회
SELECT FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG
FROM BOOK.TB_FAQ_BOARD;

--FAQ 게시글 삭제
UPDATE BOOK.TB_FAQ_BOARD SET FAQ_DELFLAG='Y'
WHERE FAQ_DELFLAG='N'
AND FAQ_SEQ='10';


--게시글 수정
UPDATE BOOK.TB_FAQ_BOARD SET FAQ_CONTENT='A. 답변내용 수정중'
WHERE FAQ_SEQ='10';

--목록별 FAQ조회
SELECT FAQ_SEQ, USER_SEQ, FAQ_CATEGORY, FAQ_TITLE, FAQ_CONTENT, FAQ_DELFLAG
		FROM BOOK.TB_FAQ_BOARD
		WHERE FAQ_CATEGORY ='4';

	
	-- 1. 도서이용일반
	-- 2. 비치희망도서자료신청
	-- 3. 회원가입관련
	-- 4. 자료검색및 대출
	
	
	SELECT fb.FAQ_SEQ, fb.USER_SEQ, fb.FAQ_CATEGORY, fb.FAQ_TITLE, fb.FAQ_CONTENT, fb.FAQ_DELFLAG, fu.USER_NAME
		FROM BOOK.TB_FAQ_BOARD fb
		INNER JOIN TB_USER fu ON fb.USER_SEQ = fu.USER_SEQ
		WHERE fb.FAQ_SEQ ='10';
		
	
CREATE SEQUENCE SQ_FAQ_BOARD START WITH 600 INCREMENT BY 1;
    SELECT B.BOOK_SEQ, R.RENT_SEQ, U.USER_NAME AS USER_NAME, B.BOOK_TITLE AS BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS
    FROM (
        SELECT R.*, ROW_NUMBER() OVER(ORDER BY RENT_DATE DESC) AS RN
        FROM BOOK.TB_BOOK_RENT R
    ) AS TempTable
    INNER JOIN BOOK.TB_USER U ON TempTable.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON TempTable.BOOK_SEQ = B.BOOK_SEQ
    WHERE RN BETWEEN 1 AND 5
    ORDER BY RENT_DATE DESC;
    
   SELECT B.BOOK_SEQ, R.RENT_SEQ, U.USER_NAME AS USER_NAME, B.BOOK_TITLE AS BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS
FROM (
    SELECT R.*, ROWNUM AS RN
    FROM BOOK.TB_BOOK_RENT R
    WHERE . <= 5 -- 최대 행 수
    ORDER BY RENT_DATE DESC
) TempTable
INNER JOIN BOOK.TB_USER U ON TempTable.USER_SEQ = U.USER_SEQ
INNER JOIN BOOK.TB_BOOK B ON TempTable.BOOK_SEQ = B.BOOK_SEQ
ORDER BY RENT_DATE DESC;


    SELECT B.BOOK_SEQ, R.RENT_SEQ, U.USER_NAME AS USER_NAME, B.BOOK_TITLE AS BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS
    FROM BOOK.TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ;

    
   SELECT ID, NAME, EMAIL, AUTH, DELFLAG, JOINDATE 
	FROM (
			SELECT ID, NAME, EMAIL,
					AUTH, DELFLAG, JOINDATE,
			ROW_NUMBER()OVER(ORDER BY JOINDATE DESC) RN
			FROM USERINFO u
		)
		WHERE RN BETWEEN #{first} AND #{last}

SELECT B.BOOK_SEQ, R.RENT_SEQ, U.USER_NAME AS USER_NAME, B.BOOK_TITLE AS BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS
FROM (
    SELECT R.USER_SEQ AS ID, U.USER_NAME AS NAME, U.USER_EMAIL AS EMAIL,
           NULL AS AUTH, NULL AS DELFLAG, R.RENT_DATE AS JOINDATE,
           ROW_NUMBER() OVER (ORDER BY R.RENT_DATE DESC) AS RN
    FROM BOOK.TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
) TempTable
WHERE RN BETWEEN 1 AND 5;


SELECT SEQ, NAME, BOOK_TITLE, RENT_DATE, RENT_RETURN_DATE, RENT_STATUS
FROM (
    SELECT R.RENT_SEQ AS SEQ, U.USER_NAME AS NAME, B.BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS,
           ROW_NUMBER() OVER (ORDER BY R.RENT_DATE DESC) AS RN
    FROM BOOK.TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
) TempTable
WHERE RN BETWEEN 1 AND 5;



SELECT R.RENT_SEQ, R.USER_SEQ, R.BOOK_SEQ, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS,
           U.USER_NAME AS user_name, B.BOOK_TITLE AS book_title
    FROM TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
    WHERE U.USER_SEQ = #{user_seq}
    ORDER BY RENT_DATE DESC
    
    
SELECT SEQ, USER_SEQ, BOOK_SEQ, RENT_DATE, RENT_RETURN_DATE, RENT_STATUS,
       USER_NAME AS user_name, BOOK_TITLE AS book_title
FROM (
    SELECT R.RENT_SEQ AS SEQ, R.USER_SEQ, R.BOOK_SEQ, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS,
           U.USER_NAME, B.BOOK_TITLE,
           ROW_NUMBER() OVER (ORDER BY R.RENT_DATE DESC) AS RN
    FROM TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
    WHERE R.USER_SEQ = 1
) TempTable
WHERE RN BETWEEN 1 AND 40;






SELECT
    U.USER_NAME AS user_name,
    B.BOOK_SEQ AS book_seq,
    B.BOOK_TITLE AS book_title,
    R.RESVE_SEQ,
    R.RESVE_STATUS,
    (SELECT COUNT(DISTINCT RESVE_STEP) FROM BOOK.TB_RESVE WHERE BOOK_SEQ = B.BOOK_SEQ AND RESVE_STEP IS NOT NULL AND RESVE_STEP <= R.RESVE_STEP) AS RESVE_STEP
FROM BOOK.TB_RESVE R
INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
WHERE U.USER_SEQ = 701
ORDER BY RESVE_SEQ DESC;


SELECT RESVE_SEQ, user_name, book_title, RESVE_STATUS, RESVE_STEP
FROM (
    SELECT
        user_name,
        book_seq,
        book_title,
        RESVE_SEQ,
        RESVE_STATUS,
        RESVE_STEP,
        ROWNUM AS RN
    FROM (
        SELECT
            U.USER_NAME AS user_name,
            B.BOOK_SEQ AS book_seq,
            B.BOOK_TITLE AS book_title,
            R.RESVE_SEQ,
            R.RESVE_STATUS,
            (
                SELECT COUNT(DISTINCT RESVE_STEP)
                FROM BOOK.TB_RESVE R2
                WHERE R2.BOOK_SEQ = B.BOOK_SEQ
                AND R2.RESVE_STEP IS NOT NULL
                AND R2.RESVE_STEP <= R.RESVE_STEP
            ) AS RESVE_STEP
        FROM BOOK.TB_RESVE R
        INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
        INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
        WHERE U.USER_SEQ = 701
        ORDER BY R.RESVE_SEQ DESC
    )
)
WHERE RN BETWEEN 1 AND 10; 


SELECT SEQ, NAME, BOOK_TITLE, RENT_DATE, RENT_RETURN_DATE, RENT_STATUS
FROM (
    SELECT R.RENT_SEQ AS SEQ, U.USER_NAME AS NAME, B.BOOK_TITLE, R.RENT_DATE, R.RENT_RETURN_DATE, R.RENT_STATUS,
           ROW_NUMBER() OVER (ORDER BY R.RENT_DATE DESC) AS RN
    FROM BOOK.TB_BOOK_RENT R
    INNER JOIN BOOK.TB_USER U ON R.USER_SEQ = U.USER_SEQ
    INNER JOIN BOOK.TB_BOOK B ON R.BOOK_SEQ = B.BOOK_SEQ
) TempTable
WHERE RN BETWEEN 1 AND 10;
