CREATE OR REPLACE VIEW lesson_num AS
SELECT
  instructor_id AS "Instructor Id",
  first_name AS "First Name",
  last_name AS "Last Name",
  SUM(no_of_lessons) AS "No of Lessons"
FROM (
  SELECT
    booking.instructor_id,
    count(*) AS no_of_lessons
  FROM booking
  GROUP BY booking.instructor_id

  UNION ALL

  SELECT
    salary.instructor_id,
    num_of_lessons
  FROM salary
) AS combined_data
LEFT JOIN instructor ON combined_data.instructor_id = instructor.id
GROUP BY combined_data.instructor_id, first_name, last_name
HAVING SUM(no_of_lessons) > 9 --- set a minimum number of lessons
ORDER BY SUM(no_of_lessons) DESC;

--- exempel query:
SELECT * FROM lesson_num;