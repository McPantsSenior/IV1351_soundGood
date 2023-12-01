SELECT 
    TO_CHAR(e.time, 'Dy') AS Day,
    genre,
CASE
    WHEN e.max_students = COUNT(se.student_id) THEN 'no seats left'
    WHEN e.max_students - COUNT(se.student_id) = 1 THEN '1 seat left'
    ELSE 'Many seats'
END AS space
FROM ensembles e
LEFT JOIN student_ensembles se ON e.id = se.ensembles_id
WHERE e.time BETWEEN NOW() AND NOW() + INTERVAL '1 WEEK'
GROUP BY e.time, e.genre, e.max_students
ORDER BY  e.genre;