CREATE TABLE TB_PAY(
    PAY_SEQ NUMBER PRIMARY KEY,
    PAY_IMD VARCHAR2(50),
    USER_SEQ NUMBER REFERENCES TB_USER(USER_SEQ),
    PAY_PAYMENT NUMBER NOT NULL,
    PAY_DATE DATE NOT NULL,
    PAY_POINT NUMBER,
    PAY_SUMPOINT NUMBER
);


CREATE SEQUENCE BOOK.SQ_PAY INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 NOCYCLE CACHE 20 NOORDER;