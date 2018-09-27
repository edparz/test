-- nagłówek -----------------------
DECLARE

  L_IDDZIALU NUMBER;
  L_PRE VARCHAR2(20) := 'Dzial nr ';
  V_tmp VARCHA2(50); 

BEGIN

     FOR l_licznik IN 1..20 LOOP
	 
     -- zagnieżdżony SQL
       INSERT INTO DZIALY(NAZWA) values( UPPER( L_PRE || l_licznik) ) RETURN IDDZIALU into L_IDDZIALU;
       dbms_output.put_line('ID działu z zapytania SQL: '||L_IDDZIALU);

	 END LOOP;
END;
