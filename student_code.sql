
CREATE OR REPLACE FUNCTION count_students_in_dept (

2	+
    p_dept IN VARCHAR2
3	+
) RETURN NUMBER IS
4	+
    v_count NUMBER := 0;
5	+
BEGIN
6	+
    SELECT COUNT(*)
7	+
    INTO v_count
8	+
    FROM Student
9	+
    WHERE department = p_dept;
1	10	

11	+
    RETURN v_count;
12	+
END count_students_in_dept;
13	+
/
