a:=&a;
b:=&b;
for i in a..b
loop
	dbms_output.put_line('-->'||i);
end loop;
end;
/