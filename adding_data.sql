-- Test data for adress table
INSERT INTO adress (city, street) VALUES
('Stockholm', 'Hemligavägen 007'),
('Falun', 'Hemligavägen 007'),
('Göteborg', 'Hemligavägen 007'),
('Lund', 'Hemligavägen 007'),
('Malmö', 'Hemligavägen 007'),
('Gotland', 'Hemligavägen 007');

-- Test data for instrument table
INSERT INTO instrument (instrument_name, brand, price, stock) VALUES
('Piano', 'Fender', 2000.00, 3),
('Guitar', 'Fender', 500.00, 8),
('Violin', 'Fender', 800.00, 5);

-- Test data for price_history table
INSERT INTO price_history (price) VALUES
(1000.00),
(800.00),
(900.00),
(1000.00),
(900.00),
(1100.00);

-- Test data for school table
INSERT INTO school (enrolled_students, max_studnets) VALUES
(6, 180);

-- Test data for skill_level table
INSERT INTO skill_level (beginner, intermediate, advanced) VALUES
(true, false, false),
(true, false, false),
(false, true, false),
(false, true, false),
(false, false, true),
(false, false, true);

-- Test data for student table
INSERT INTO student (personal_num, first_name, last_name, zip, school_id, student_school_id, adress_id) VALUES
('3707069991', 'Alice', 'Smith', '13377', 1, 101, 1),
('3707069992', 'Bob', 'Johnson', '13377', 1, 202, 2),
('3707069993', 'Erik', 'Svensson', '13377', 1, 203, 3),
('3707069994', 'Adam', 'Nilsson', '13377', 1, 204, 4),
('3707069995', 'Henrik', 'Erikson', '13377', 1, 205, 5),
('3707069996', 'Charlie', 'Williams', '13377', 1, 306, 6);

-- Test data for student_skill_level table
INSERT INTO student_skill_level (skill_level, instrument_id, student_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6);

-- Test data for contact_person_email table
INSERT INTO contact_person_email (email, student_id) VALUES
('persson@email.com', 1),
('alex@email.com', 2),
('alex@email.com', 3),
('alex@email.com', 4),
('alex@email.com', 5),
('dante@email.com', 6);

-- Test data for contact_person_phone_num table
INSERT INTO contact_person_phone_num (phone_num, student_id) VALUES
('1234567890', 1),
('9876543210', 2),
('9876543210', 3),
('9876543210', 4),
('9876543210', 5),
('5555555555', 6);

-- Test data for desired_instrument table
INSERT INTO desired_instrument (student_id, desired_instrument, skill_level) VALUES
(1, 'Flute', 1),
(2, 'Trumpet', 2),
(3, 'Trumpet', 3),
(4, 'Trumpet', 4),
(5, 'Trumpet', 5),
(6, 'Saxophone', 6);

-- Test data for email table
INSERT INTO email (email, student_id) VALUES
('alice@student.com', 1),
('bob@student.com', 2),
('bob@student.com', 3),
('bob@student.com', 4),
('bob@student.com', 5),
('charlie@student.com', 6);

-- Test data for instructor table
INSERT INTO instructor (teach_ensembles, personal_num, first_name, last_name, zip, school_id, adress_id) VALUES
(true, '3707069997', 'David', 'Miller', '13377', 1, 1),
(true, '3707069998', 'Eva', 'Jones', '13377', 1, 2),
(true, '3707069999', 'Peter', 'Davidson', '13377', 1, 3),
(true, '3707069901', 'Elsa', 'Elite', '13377', 1, 4),
(true, '3707069902', 'Johanna', 'Delta', '13377', 1, 5),
(true, '3707069903', 'Frank', 'Brown', '13377', 1, 6);

-- Test data for invoice table
INSERT INTO invoice (total, discount, student_id) VALUES
(500.00, 0.00, 1),
(400.00, 0.00, 2),
(600.00, 0.00, 3),
(700.00, 0.00, 4),
(800.00, 0.00, 5),
(1200.00, 0.00, 6);

-- Test data for phone_num table
INSERT INTO phone_num (phone_num, student_id) VALUES
('1112223333', 1),
('4445556666', 2),
('4445556666', 3),
('4445556666', 4),
('4445556666', 5),
('7778889999', 6);

-- Test data for rent table
INSERT INTO rent (instrument_id, leasing_time_start, leasing_time_end, home_delivery, student_id) VALUES
(1, '2023-01-01', '2023-02-01', true, 1),
(2, '2023-02-01', '2023-03-01', false, 2),
(2, '2023-03-01', '2023-04-01', false, 3),
(2, '2023-04-01', '2023-05-01', false, 4),
(3, '2023-05-01', '2023-06-01', false, 5),
(3, '2023-06-01', '2023-07-01', true, 6);

-- Test data for salary table
INSERT INTO salary (instructor_id, total, num_of_lessons) VALUES
(1, 1500.00, 10),
(2, 900.00, 4),
(3, 1200.00, 23),
(4, 1700.00, 15),
(5, 400.00, 7),
(6, 1800.00, 2);

-- Test data for siblings table
INSERT INTO siblings (sibling_student_id, student_id) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(2, 3),
(3, 2),
(5, 2),
(2, 5);

-- Test data for availiability table
INSERT INTO availiability (instructor_id, start_time, end_time) VALUES
(1, '2023-01-01', '2023-02-02'),
(2, '2023-02-01', '2023-03-02'),
(3, '2023-03-01', '2023-04-02'),
(4, '2023-04-01', '2023-05-02'),
(5, '2023-05-01', '2023-06-02'),
(6, '2023-06-01', '2023-07-02');

-- Test data for booking table
INSERT INTO booking (student_id, availiability_id, instructor_id, instrument, time, skill_level, price, invoice_id, price_history_id) VALUES
(1, 1, 1, 'Piano', '2023-01-01', 1, 100.00, 1, 1),
(1, 2, 2, 'Guitar', '2023-02-01', 2, 150.00, 1, 2),
(1, 2, 2, 'Guitar', '2023-02-01', 2, 150.00, 1, 3),
(2, 2, 2, 'Guitar', '2023-02-01', 2, 150.00, 2, 2),
(2, 2, 2, 'Guitar', '2023-02-01', 2, 150.00, 2, 1),
(2, 3, 3, 'Violin', '2023-03-01', 3, 200.00, 2, 3),
(3, 2, 2, 'Guitar', '2023-02-01', 3, 150.00, 3, 2),
(3, 2, 2, 'Guitar', '2023-02-01', 1, 150.00, 3, 2),
(4, 2, 2, 'Guitar', '2023-02-01', 1, 150.00, 4, 3),
(5, 2, 2, 'Guitar', '2023-02-01', 1, 150.00, 5, 2),
(6, 2, 2, 'Guitar', '2023-02-01', 3, 150.00, 6, 2);

-- Test data for can_play_instrument table
INSERT INTO can_play_instrument (instrument_id, instructor_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6);

-- Test data for ensembles table
INSERT INTO ensembles (max_students, min_students, genre, price, time, price_history_id, salary_id) VALUES
(5, 2, 'Classical', 500.00, '2023-01-01', 1, 1),
(8, 4, 'Jazz', 800.00, '2023-02-01', 2, 2),
(4, 2, 'Rock', 800.00, '2023-02-01', 2, 3),
(9, 4, 'Pop', 800.00, '2023-02-01', 3, 4),
(10, 5, 'Jazz', 800.00, '2023-02-01', 1, 5),
(12, 5, 'Rock', 1200.00, '2023-03-01', 3, 6);

-- Test data for ensembles_instruments table
INSERT INTO ensembles_instruments (instrument_id, ensambles_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(2, 5),
(3, 6);

-- Test data for group_lesson table
INSERT INTO group_lesson (max_students, min_students, skill_level_id, time, instrument_id, price_history_id, salary_id) VALUES
(4, 2, 1, '2023-01-01', 1, 1, 1),
(4, 2, 1, '2023-02-01', 2, 2, 2),
(4, 2, 2, '2023-03-01', 3, 2, 3),
(4, 2, 2, '2023-04-01', 1, 3, 4),
(6, 2, 3, '2023-05-01', 2, 2, 5),
(6, 2, 3, '2023-06-01', 3, 3, 6);

-- Test data for inovice_ensembles table
INSERT INTO inovice_ensembles (invoice_id, ensembles_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Test data for inovice_group_lesson table
INSERT INTO inovice_group_lesson (inovice_id, group_lesson_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Test data for student_ensembles table
INSERT INTO student_ensembles (ensembles_id, student_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Test data for student_group table
INSERT INTO student_group (group_lesson_id, student_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);