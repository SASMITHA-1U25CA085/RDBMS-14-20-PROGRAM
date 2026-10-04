SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee record inserted successfully.'
    );
END;
/

