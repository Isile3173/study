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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    
    
    
    
    
    
    







