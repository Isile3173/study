멀티게시판

menus
  MENU_ID     MENU_NAME    MENU_SEQ
  MENU01      JAVA         1
  MENU02      JSP          2
  MENU03      HTML         3
  MENU04      SPRING       4
  
 BOARD
   IDX      TITLE       MENU_ID
    3       SRPING      MENU04 
    2       JAVA 11     MENU01    
    1       JAVA        MENU01
    
 ----------------------------------
 CREATE  TABLE    MENUS
 (
       MENU_ID     VARCHAR2(6)   PRIMARY KEY
    ,  MENU_NAME   VARCHAR2(30)  NOT NULL 
    ,  MENU_SEQ    NUMBER(6)     DEFAULT 0
 )
 
 INSERT INTO  MENUS ( MENU_ID,  MENU_NAME, MENU_SEQ  )
  VALUES            ( 'MENU01', 'JAVA',   1 );
 COMMIT;
 
 -----------------------------------
 --  게시판
CREATE   TABLE   BOARD
(
      IDX            NUMBER(5, 0)        PRIMARY KEY
    , MENU_ID        VARCHAR2( 6 )       NOT NULL
        REFERENCES   MENUS ( MENU_ID  )
    , TITLE          VARCHAR2( 300  )    NOT NULL
    , CONT           VARCHAR2( 4000 )                       
    , WRITER         VARCHAR2( 30 )
    , REGDATE        DATE                DEFAULT  SYSDATE 
    , READCOUNT      NUMBER( 6, 0 )      DEFAULT  0
    
    , BNUM           NUMBER( 5, 0 )      DEFAULT  0
    , LVL            NUMBER( 5, 0 )      DEFAULT  0
    , STEP           NUMBER( 5, 0 )      DEFAULT  0
    , NREF           NUMBER( 5, 0 )      DEFAULT  0
)
 
 INSERT  INTO  BOARD (
      IDX, 
      MENU_ID, 
      TITLE, 
      CONT, 
      WRITER
)  VALUES  (  
      ( SELECT NVL(MAX(IDX), 0)+1  FROM  BOARD ),
      'MENU01',
      'JAVA 환영합니다',
      'JAVA 게시판에 오신것을 환영합니다.....',
      'ADMIN'
);
COMMIT;
 
 
 
 
 
 
 
 
 
 
 
 
    
    
    
    
    
    
    







