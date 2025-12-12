SELECT student_surname, AVG(grade) AS average_grade
FROM student_grades
WHERE student_surname IN (
    SELECT student_surname
    FROM student_grades
    GROUP BY student_surname
    HAVING COUNT(grade) > 1
    )
GROUP BY student_surname
ORDER BY student_surname