set serveroutput on;
declare 
    n number:=1;
    r number:=0;
begin
    while n<=100 loop
        r:=r+n;
      n:=n+2;
      end loop;
dbms_output.put_line(r);
    
end;
        