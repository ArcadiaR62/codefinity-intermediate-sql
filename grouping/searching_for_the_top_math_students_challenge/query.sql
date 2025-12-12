SELECT student_surname, AVG(grade) AS average_grade
FROM student_grades
WHERE subject_name = 'Mathematics' AND student_surname IN(
    SELECT student_surname 
    FROM student_grades
    WHERE subject_name = 'Mathematics'
        AND grade >=90
    )
GROUP BY student_surname
ORDER BY average_grade DESC
LIMIT 10