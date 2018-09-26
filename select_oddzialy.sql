-- nagłówek -----------------------
DECLARE

  l_zmienna int := 223;
  v_zmienna varchar2(100);

BEGIN

   FOR l_rekord IN
   (
     SELECT IDDZIALU,NAZWA FROM DZIALY
      WHERE IDDZIALU > l_zmienna
   )
   LOOP
     dbms_output.put_line('Nr działu: ' || l_rekord.IDDZIALU);
     dbms_output.put_line('Nazwa działu: ' || l_rekord.nazwa);
   END LOOP;

END;
