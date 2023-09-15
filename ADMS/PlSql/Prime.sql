
DECLARE
  x NUMBER(10);
  p NUMBER(10);
  r NUMBER(10);
BEGIN
  p := 0;
  x := &x;
  FOR i IN 2..x LOOP
    p := 0; 
    FOR j IN 1..i LOOP
      r:=MOD(i,j);
      IF (r = 0) THEN
        p := p + 1;
      END IF;
    END LOOP;
    
    IF (p = 2) THEN
      DBMS_OUTPUT.PUT_LINE(i);
    END IF;
  END LOOP;
END;
/