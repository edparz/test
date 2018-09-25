-- nagłówek -----------------------
CREATE OR REPLACE PROCEDURE test_asercji(l_tab IN VARCHAR2)
AUTHID CURRENT_USER IS

     l_const constant VARCHAR2(200) := 'delete #T#';
     l_sql VARCHAR2(200);

BEGIN
     l_sql := REPLACE(l_const, '#T#', SYS.DBMS_ASSERT.SIMPLE_SQL_NAME(l_tab));
     EXECUTE IMMEDIATE l_zapytanie;

END test_asercji;
