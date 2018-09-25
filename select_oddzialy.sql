-- nagłówek -----------------------
DECLARE

l_zmienna int := 223;

BEGIN

   FOR l_rekord IN
   (
     SELECT IDDZIALU,NAZWA FROM DZIALY
     WHERE IDDZIALU > l_zmienna
     ORDER BY NAZWA
   )
   LOOP
     dbms_output.put_line('Nazwa działu ' || l_rekord.nazwa);
   END LOOP;

END;
