SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE InsertStudent (
    p_student_id   IN NUMBER,
    p_student_name IN VARCHAR2,
    p_course_id    IN NUMBER
)
AS
BEGIN
    INSERT INTO Student (StudentID, StudentName, CourseID)
    VALUES (p_student_id, p_student_name, p_course_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student inserted successfully.');
END;
/
