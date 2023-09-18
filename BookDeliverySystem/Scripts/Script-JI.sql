-- 배송테이블 생성
CREATE TABLE TB_DELIVERY(
   DELIVERY_SEQ NUMBER PRIMARY KEY,
   USER_SEQ NUMBER REFERENCES TB_USER(USER_SEQ),
   DELIVERY_NAME VARCHAR2(30) NOT NULL,
   DELIVERY_PHONE VARCHAR2(30) NOT NULL,
   POSTCODE VARCHAR2(10) NOT NULL,
   ADDRESS VARCHAR2(100) NOT NULL,
   DETADDR VARCHAR2(100),
   EXTADDR VARCHAR2(100),
   DELIVERY_NUM NUMBER
);

CREATE SEQUENCE SQ_DELIVERY START WITH 6000000 INCREMENT BY 1;

DROP TABLE TB_DELIVERY;



DROP TABLE TB_PAY;

----결제테이블 생성
CREATE TABLE TB_PAY(
    PAY_SEQ NUMBER PRIMARY KEY,
    PAY_IMD VARCHAR2(50),
    USER_SEQ NUMBER REFERENCES TB_USER(USER_SEQ),
    PAY_PAYMENT NUMBER NOT NULL,
    PAY_DATE DATE NOT NULL
);


--조인
--SELECT *
--FROM TB_PAY P
--INNER JOIN TB_USER U ON P.USER_SEQ = U.USER_SEQ
--INNER JOIN TB_DELIVERY D ON P.DELIVERY_SEQ = D.DELIVERY_SEQ;




CREATE TABLE TB_PAY(
    PAY_SEQ NUMBER PRIMARY KEY,
    PAY_IMD VARCHAR2(50),
    USER_SEQ NUMBER REFERENCES TB_USER(USER_SEQ),
    PAY_PAYMENT NUMBER NOT NULL,
    PAY_DATE DATE NOT NULL,
    DELIVERY_SEQ NUMBER REFERENCES TB_DELIVERY(DELIVERY_SEQ),
    DELIVERY_PHONE VARCHAR2(30),
    POSTCODE VARCHAR(10),
    ADDRESS VARCHAR(100)
);


-- 유저와 배송테이블 조인
SELECT *
FROM TB_DELIVERY D
JOIN TB_USER U ON D.USER_SEQ = U.USER_SEQ;

--두 테이블 조인 확인
SELECT D.*, U.*
FROM TB_DELIVERY D
LEFT JOIN TB_USER U ON D.USER_SEQ = U.USER_SEQ
WHERE U.USER_SEQ IS NOT NULL;


--유저의 맨 마지막 주소
 SELECT D.DELIVERY_SEQ, D.USER_SEQ, D.DELIVERY_NAME, D.DELIVERY_PHONE, D.POSTCODE, D.ADDRESS, D.DETADDR, D.EXTADDR, D.DELIVERY_NUM
    FROM TB_DELIVERY D
    LEFT JOIN TB_USER U ON D.USER_SEQ = U.USER_SEQ
    WHERE D.USER_SEQ = 1
    ORDER BY D.DELIVERY_SEQ  DESC  
    FETCH FIRST 1 ROW ONLY;
    
    
--송장번호 업데이트
UPDATE TB_DELIVERY 
SET DELIVERY_NUM = '5645489756'
WHERE DELIVERY_SEQ = '600020';
