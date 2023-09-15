
declare
x number(10);
s number(10);
begin
x:=&x;
s:=0;
for i in 1..x loop
s:=s+i;
dbms_output.put_line(i);
end loop;
dbms_output.put_line('---------------');
dbms_output.put_line('sum =' || s);
end;
/
