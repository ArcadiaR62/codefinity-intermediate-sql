SELECT student_surname
FROM student_grades
WHERE subject_name = 'Mathematics' AND student_surname IN (
    SELECT student_surname
    FROM student_grades
    GROUP BY student_surname
    HAVING COUNT(grade) > 1
    )
GROUP BY student_surname