alter session set "_oracle_script"=true;
SET ECHO OFF
SET VERIFY OFF

PROMPT 
PROMPT specify password for username as parameter 1:
DEFINE pass     = &1
PROMPT 
PROMPT specify default tablespace for pega as parameter 2:
DEFINE tbs      = &2
PROMPT 
PROMPT specify temporary tablespace for pega as parameter 3:
DEFINE ttbs     = &3
PROMPT 
PROMPT specify password for SYS as parameter 4:
DEFINE pass_sys = &4
REM PROMPT 
REM PROMPT specify log path as parameter 5:
REM DEFINE log_path = &5
REM PROMPT
REM PROMPT specify connect string as parameter 6:
REM DEFINE connect_string     = &6
PROMPT specify admin username as parameter 5:
DEFINE user_name     = &5

-- The first dot in the spool command below is 
-- the SQL*Plus concatenation character

REM DEFINE spool_file = &log_path.pega_main.log
REM SPOOL &spool_file
SPOOL

REM =======================================================
REM cleanup section
REM =======================================================

DROP USER &user_name CASCADE;

REM =======================================================
REM create user
REM tpegaee separate commands, so the create user command 
REM will succeed regardless of the existence of the 
REM DEMO and TEMP tablespaces 
REM =======================================================

CREATE USER &user_name IDENTIFIED BY &pass;

ALTER USER &user_name DEFAULT TABLESPACE &tbs
              QUOTA UNLIMITED ON &tbs;

ALTER USER &user_name TEMPORARY TABLESPACE &ttbs;

GRANT CREATE SESSION, CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO &user_name;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE , UNLIMITED TABLESPACE TO &user_name;

REM =======================================================
REM grants from sys schema
REM =======================================================

REM CONNECT sys/&pass_sys@&connect_string AS SYSDBA;
GRANT execute ON sys.dbms_stats TO &user_name;

REM =======================================================
REM create pega schema objects
REM =======================================================

REM CONNECT &user_name/&pass@&connect_string
ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;
ALTER SYSTEM SET NLS_LENGTH_SEMANTICS=CHAR scope=both;
GRANT ANALYZE ANY DICTIONARY TO &user_name;
GRANT UNLIMITED TABLESPACE TO &user_name;
GRANT CREATE SESSION TO &user_name;
GRANT CREATE ANY TABLE TO &user_name;
GRANT ALTER ANY TABLE TO &user_name;
GRANT SELECT ANY TABLE TO &user_name;
GRANT UPDATE ANY TABLE TO &user_name;
GRANT DELETE ANY TABLE TO &user_name;
GRANT CREATE ANY INDEX TO &user_name;
GRANT CREATE ANY PROCEDURE TO &user_name;
GRANT EXECUTE ANY PROCEDURE TO &user_name;
GRANT CREATE ANY VIEW TO &user_name;
GRANT CREATE ANY TYPE TO &user_name;
GRANT CREATE ANY TRIGGER TO &user_name;
GRANT ALTER ANY TRIGGER TO &user_name;
GRANT DROP ANY PROCEDURE TO &user_name;
GRANT DROP ANY TRIGGER TO &user_name;
GRANT DROP ANY TABLE TO &user_name;
GRANT DROP ANY VIEW TO &user_name;
GRANT DROP ANY INDEX TO &user_name;
GRANT UNLIMITED TABLESPACE TO &user_name;
GRANT SELECT_CATALOG_ROLE TO &user_name;

--
-- create tables, sequences and constraint
--

REM @__SUB__CWD__/pega/pega_wotever

-- 
-- populate tables

spool off
commit;
quit;


