-- nagłówek -----------------------
DECLARE

  l_zmienna int := 123;
  v_zmienna varchar2(400); -- branch B

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
