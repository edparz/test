-- available online in file 'sample2' -- zmiana w 2 na boku
DECLARE

   CURSOR c1 is
      SELECT ename, empno, sal FROM emp
         ORDER BY sal DESC;   -- start with highest paid employee

   my_ename VARCHAR2(50);
   my_empno NUMBER(10);
   my_sal   NUMBER(7,2);

BEGIN
   
   OPEN c1;

   FOR i IN 1..5 LOOP
      FETCH c1 INTO my_ename, my_empno, my_sal;
      EXIT WHEN c1%NOTFOUND;  /* in case the number requested */
                              /* is more than the total       */
                              /* number of employees          */
      INSERT INTO temp VALUES (my_sal, my_empno, my_ename);
      COMMIT;
   END LOOP;

   CLOSE c1;

END;
