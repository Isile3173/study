-- 오라클 계정생성
  jsp/1234
  
  SQL> conn /as sysdba
  연결되었습니다.
  SQL> alter session set "_ORACLE_SCRIPT"=true;
  세션이 변경되었습니다.
  SQL> create user jsp identified by 1234;
  사용자가 생성되었습니다.
  SQL> grant CONNECT, RESOURCE to jsp;
  권한이 부여되었습니다.
  SQL> conn jsp/1234
  연결되었습니다.
  SQL> show user
  USER은 "JSP"입니다
--------------------------------------------
-- 번호 자동증가
create sequence seq_custno
  start with    10001
  increment by  1  
  minvalue      10001
  cache         20;

 CREATE TABLE MEMBER_TBL
 (
     custno     number(6)    primary key     -- 회원번호  숫자(6) 기본키 번호자동증가
    , custname  varchar2(30) not null        -- 회원이름  문자(30) 필수입력
    , phone     varchar2(20)                 -- 전화      문자(20)
    , address   varchar2(150)                -- 주소      문자(150)
    , joindate  date        default sysdate  -- 가입일        날짜 기본값 오늘
    , grade     varchar2(1)                  -- 고객등급      문자(1) 
    , city      varchar2(2)                  -- 거주도시코드  문자(2)
 )
 
 SQL> alter user jsp default tablespace
  2  users quota unlimited on users;
  
 grade : "A"  : "VIP", "B"  : "일반", "C"  : "직원", "D" : "손님"
  
 city  : "01", "서울"  "02", "부산"  "03", "대구"  "04", "인천"
         "05", "대전"  "06", "광주"  "41", "울릉"  "07", "제주";
  
  
