SET SERVEROUTPUT ON;
DECLARE
   V_num NUMBER := &enter_a_number;
BEGIN
    IF MOD(V_num,2) = 0 THEN
       DBMS_OUTPUT.PUT_LINE(V_NUM||' Is Even');
    ELSE
       DBMS_OUTPUT.PUT_LINE(V_NUM||' Is Odd');
    END IF;
       DBMS_OUTPUT.PUT_LINE('If Then Else Construct Complete');
END;
       
    