SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT
            s.StudentID,
            s.StudentName,
            c.DepartmentID
        FROM Student s
        JOIN Course c ON s.CourseID = c.CourseID;

BEGIN
    FOR student_record IN student_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ID: ' || student_record.StudentID ||
            ' | Student Name: ' || student_record.StudentName ||
            ' | Department ID: ' || student_record.DepartmentID
        );
    END LOOP;
END;
/
