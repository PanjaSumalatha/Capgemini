set serveroutput on;
declare 
    a number:=1;
    r number:=0;
begin
    while a<100 loop
        r:=r+a;
        a:=a+1;
    end loop;
    dbms_output.put_line(r);
    
end;
        