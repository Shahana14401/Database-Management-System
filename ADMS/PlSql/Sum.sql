 declare
 x number(10);
 y number(10);
 z number(10);
 begin
 x:=&x;
 y:=&y;
 z:=x+y;
 dbms_output.put_line('SUM='||z);
 end;
 /
