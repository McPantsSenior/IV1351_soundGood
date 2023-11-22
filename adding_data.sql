-- Test data for adress table
INSERT INTO adress (city, street) VALUES
('City1', 'Street1'),
('City2', 'Street2'),
('City3', 'Street3');

-- Test data for instrument table
INSERT INTO instrument (instrument_name, brand, price, stock) VALUES
('Piano', 'Brand1', 1000.00, 5),
('Guitar', 'Brand2', 500.00, 10),
('Violin', 'Brand3', 800.00, 8);

-- Test data for price_history table
INSERT INTO price_history (price) VALUES
(1000.00),
(900.00),
(800.00);

-- Test data for school table
INSERT INTO school (enrolled_students, max_studnets) VALUES
(180, 280);

-- Test data for skill_level table
INSERT INTO skill_level (beginner, intermediate, advanced) VALUES
(true, false, false),
(false, true, false),
(false, false, true);

-- Test data for student table
INSERT INTO student (personal_num, first_name, last_name, zip, school_id, student_school_id, adress_id) VALUES
('111111111', 'Alice', 'Smith', '12345', 1, 101, 1),
('222222222', 'Bob', 'Johnson', '54321', 1, 202, 2),
('333333333', 'Charlie', 'Williams', '98765', 1, 303, 3);

-- Test data for student_skill_level table
INSERT INTO student_skill_level (skill_level, instrument_id, student_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- Test data for contact_person_email table
INSERT INTO contact_person_email (email, student_id) VALUES
('persson@email.com', 1),
('alex@email.com', 2),
('dante@email.com', 3);

-- Test data for contact_person_phone_num table
INSERT INTO contact_person_phone_num (phone_num, student_id) VALUES
('1234567890', 1),
('9876543210', 2),
('5555555555', 3);

-- Test data for desired_instrument table
INSERT INTO desired_instrument (student_id, desired_instrument, skill_level) VALUES
(1, 'Flute', 2),
(2, 'Trumpet', 1),
(3, 'Saxophone', 3);

-- Test data for email table
INSERT INTO email (email, student_id) VALUES
('alice@student.com', 1),
('bob@student.com', 2),
('charlie@student.com', 3);

-- Test data for instructor table
INSERT INTO instructor (teach_ensembles, personal_num, first_name, last_name, zip, school_id, adress_id) VALUES
(true, '444444444', 'David', 'Miller', '54321', 1, 1),
(false, '555555555', 'Eva', 'Jones', '98765', 1, 2),
(true, '666666666', 'Frank', 'Brown', '12345', 1, 3);

-- Test data for invoice table
INSERT INTO invoice (total, discount, student_id) VALUES
(500.00, 50.00, 1),
(800.00, 0.00, 2),
(1200.00, 100.00, 3);

-- Test data for phone_num table
INSERT INTO phone_num (phone_num, student_id) VALUES
('1112223333', 1),
('4445556666', 2),
('7778889999', 3);

-- Test data for rent table
INSERT INTO rent (instrument_id, leasing_time_start, leasing_time_end, home_delivery, student_id) VALUES
(1, '2023-01-01', '2023-02-01', true, 1),
(2, '2023-03-01', '2023-04-01', false, 2),
(3, '2023-05-01', '2023-06-01', true, 3);

-- Test data for salary table
INSERT INTO salary (instructor_id, total, num_of_lessons) VALUES
(1, 1500.00, 10),
(2, 1200.00, 8),
(3, 1800.00, 12);

-- Test data for siblings table
INSERT INTO siblings (sibling_student_id, student_id) VALUES
(2, 1),
(1, 3),
(3, 2);

-- Test data for availiability table
INSERT INTO availiability (instructor_id, start_time, end_time) VALUES
(1, '2023-01-01', '2023-01-02'),
(2, '2023-02-01', '2023-02-02'),
(3, '2023-03-01', '2023-03-02');

-- Test data for booking table
INSERT INTO booking (student_id, availiability_id, instructor_id, instrument, time, skill_level, price, invoice_id, price_history_id) VALUES
(1, 1, 1, 'Piano', '2023-01-01', 1, 100.00, 1, 1),
(2, 2, 2, 'Guitar', '2023-02-01', 2, 150.00, 2, 2),
(3, 3, 3, 'Violin', '2023-03-01', 3, 200.00, 3, 3);

-- Test data for can_play_instrument table
INSERT INTO can_play_instrument (instrument_id, instructor_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Test data for ensembles table
INSERT INTO ensembles (max_students, min_students, genre, price, time, price_history_id, salary_id) VALUES
(20, 10, 'Classical', 500.00, '2023-01-01', 1, 1),
(15, 8, 'Jazz', 800.00, '2023-02-01', 2, 2),
(25, 12, 'Rock', 1200.00, '2023-03-01', 3, 3);

-- Test data for ensembles_instruments table
INSERT INTO ensembles_instruments (instrument_id, ensambles_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Test data for group_lesson table
INSERT INTO group_lesson (max_students, min_students, skill_level_id, time, instrument_id, price_history_id, salary_id) VALUES
(15, 8, 1, '2023-01-01', 1, 1, 1),
(20, 10, 2, '2023-02-01', 2, 2, 2),
(25, 12, 3, '2023-03-01', 3, 3, 3);

-- Test data for inovice_ensembles table
INSERT INTO inovice_ensembles (invoice_id, ensembles_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Test data for inovice_group_lesson table
INSERT INTO inovice_group_lesson (inovice_id, group_lesson_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Test data for student_ensembles table
INSERT INTO student_ensembles (ensembles_id, student_id) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Test data for student_group table
INSERT INTO student_group (group_lesson_id, student_id) VALUES
(1, 1),
(2, 2),
(3, 3);