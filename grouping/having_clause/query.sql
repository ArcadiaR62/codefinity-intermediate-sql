SELECT student_surname
FROM student_grades
GROUP BY student_surname
HAVING count(grade) > 1
ORDER BY student_surname