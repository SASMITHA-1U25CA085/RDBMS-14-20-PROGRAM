SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION CountStudentsByDepartment (
    p_department_id IN NUMBER
)
RETURN NUMBER
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student s
    JOIN Course c ON s.CourseID = c.CourseID
    WHERE c.DepartmentID = p_department_id;

    RETURN v_count;
END;
/
