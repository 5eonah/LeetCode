SELECT a.student_id, a.student_name, b.subject_name, COUNT(C.student_id) attended_exams
FROM Students a CROSS JOIN Subjects b LEFT JOIN Examinations c 
     ON a.student_id=c.student_id AND b.subject_name=c.subject_name
GROUP BY 1, 3
ORDER BY 1, 3