CREATE VIEW lessons AS (
SELECT
    month,
    year,
    SUM(Booking) AS Booking,
    SUM(grouplesson) AS grouplesson,
    SUM(ensembles) AS ensembles,
    SUM(Booking + grouplesson + ensembles) AS total_lessons
FROM (
    SELECT
        EXTRACT(MONTH FROM time) AS month,
        EXTRACT(YEAR FROM time) AS year,
        COUNT(*) AS Booking,
        0 AS grouplesson,
        0 AS ensembles
    FROM
        booking
    WHERE
        EXTRACT(YEAR FROM time) = 2023
    GROUP BY
        EXTRACT(MONTH FROM time), EXTRACT(YEAR FROM time)

    UNION ALL

    SELECT
        EXTRACT(MONTH FROM time) AS month,
        EXTRACT(YEAR FROM time) AS year,
        0 AS booking,
        COUNT(*) AS grouplesson,
        0 AS ensembles
    FROM
        group_lesson
    WHERE
        EXTRACT(YEAR FROM time) = 2023
    GROUP BY
        EXTRACT(MONTH FROM time), EXTRACT(YEAR FROM time)

    UNION ALL

    SELECT
        EXTRACT(MONTH FROM time) AS month,
        EXTRACT(YEAR FROM time) AS year,
        0 AS booking,
        0 AS grouplesson,
        COUNT(*) AS ensembles
    FROM
        ensembles
    WHERE
        EXTRACT(YEAR FROM time) = 2023
    GROUP BY
        EXTRACT(MONTH FROM time), EXTRACT(YEAR FROM time)
) AS subquery
GROUP BY
    month, year
ORDER BY
    year, month );

--- Test Query could be:

---SELECT *
---FROM lessons
---WHERE month = 1

---month 1 is January
