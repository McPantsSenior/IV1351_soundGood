CREATE TABLE adress (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 city VARCHAR(500),
 street VARCHAR(500)
);

ALTER TABLE adress ADD CONSTRAINT PK_adress PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_name VARCHAR(500) NOT NULL,
 brand VARCHAR(500),
 price FLOAT NOT NULL,
 stock INT NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE price_history (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 price FLOAT
);

ALTER TABLE price_history ADD CONSTRAINT PK_price_history PRIMARY KEY (id);


CREATE TABLE school (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 enrolled_students INT NOT NULL,
 max_studnets INT NOT NULL
);

ALTER TABLE school ADD CONSTRAINT PK_school PRIMARY KEY (id);


CREATE TABLE skill_level (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 beginner BOOLEAN,
 intermediate BOOLEAN,
 advanced BOOLEAN
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 personal_num VARCHAR(12) NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 school_id INT NOT NULL,
 student_school_id INT NOT NULL,
 adress_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_skill_level (
 skill_level INT NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_skill_level ADD CONSTRAINT PK_student_skill_level PRIMARY KEY (skill_level,instrument_id,student_id);


CREATE TABLE contact_person_email (
 email VARCHAR(500) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE contact_person_email ADD CONSTRAINT PK_contact_person_email PRIMARY KEY (email,student_id);


CREATE TABLE contact_person_phone_num (
 phone_num VARCHAR(10) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE contact_person_phone_num ADD CONSTRAINT PK_contact_person_phone_num PRIMARY KEY (phone_num,student_id);


CREATE TABLE desired_instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT NOT NULL,
 desired_instrument VARCHAR(500) NOT NULL,
 skill_level INT NOT NULL
);

ALTER TABLE desired_instrument ADD CONSTRAINT PK_desired_instrument PRIMARY KEY (id,student_id);


CREATE TABLE email (
 email VARCHAR(500) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email,student_id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 teach_ensembles BOOLEAN NOT NULL,
 personal_num VARCHAR(12) NOT NULL,
 first_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 school_id INT NOT NULL,
 adress_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE invoice (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 total FLOAT NOT NULL,
 discount FLOAT,
 student_id INT NOT NULL
);

ALTER TABLE invoice ADD CONSTRAINT PK_invoice PRIMARY KEY (id);


CREATE TABLE phone_num (
 phone_num VARCHAR(10) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE phone_num ADD CONSTRAINT PK_phone_num PRIMARY KEY (phone_num,student_id);


CREATE TABLE rent (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id INT NOT NULL,
 leasing_time_start TIMESTAMP(10) NOT NULL,
 leasing_time_end TIMESTAMP(10) NOT NULL,
 home_delivery BOOLEAN,
 student_id INT NOT NULL
);

ALTER TABLE rent ADD CONSTRAINT PK_rent PRIMARY KEY (id,instrument_id);


CREATE TABLE salary (
 instructor_id INT NOT NULL,
 total FLOAT NOT NULL,
 num_of_lessons INT NOT NULL
);

ALTER TABLE salary ADD CONSTRAINT PK_salary PRIMARY KEY (instructor_id);


CREATE TABLE siblings (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 sibling_student_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (id);


CREATE TABLE availiability (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 start_time TIMESTAMP(10) NOT NULL,
 end_time TIMESTAMP(10) NOT NULL
);

ALTER TABLE availiability ADD CONSTRAINT PK_availiability PRIMARY KEY (id,instructor_id);


CREATE TABLE booking (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT NOT NULL,
 availiability_id INT NOT NULL,
 instructor_id INT NOT NULL,
 instrument VARCHAR(500) NOT NULL,
 time TIMESTAMP(10) NOT NULL,
 skill_level INT NOT NULL,
 price FLOAT NOT NULL,
 invoice_id INT NOT NULL,
 price_history_id INT NOT NULL
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (id,student_id,availiability_id,instructor_id);


CREATE TABLE can_play_instrument (
 instrument_id INT NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE can_play_instrument ADD CONSTRAINT PK_can_play_instrument PRIMARY KEY (instrument_id,instructor_id);


CREATE TABLE ensembles (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 max_students INT NOT NULL,
 min_students INT NOT NULL,
 genre VARCHAR(500) NOT NULL,
 price FLOAT NOT NULL,
 time TIMESTAMP(10) NOT NULL,
 price_history_id INT NOT NULL,
 salary_id INT NOT NULL
);

ALTER TABLE ensembles ADD CONSTRAINT PK_ensembles PRIMARY KEY (id);


CREATE TABLE ensembles_instruments (
 instrument_id INT NOT NULL,
 ensambles_id INT NOT NULL
);

ALTER TABLE ensembles_instruments ADD CONSTRAINT PK_ensembles_instruments PRIMARY KEY (instrument_id,ensambles_id);


CREATE TABLE group_lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 max_students INT NOT NULL,
 min_students INT NOT NULL,
 skill_level_id INT NOT NULL,
 time TIMESTAMP(10) NOT NULL,
 instrument_id INT NOT NULL,
 price_history_id INT NOT NULL,
 salary_id INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE inovice_ensembles (
 invoice_id INT NOT NULL,
 ensembles_id INT NOT NULL
);

ALTER TABLE inovice_ensembles ADD CONSTRAINT PK_inovice_ensembles PRIMARY KEY (invoice_id,ensembles_id);


CREATE TABLE inovice_group_lesson (
 inovice_id INT NOT NULL,
 group_lesson_id INT NOT NULL
);

ALTER TABLE inovice_group_lesson ADD CONSTRAINT PK_inovice_group_lesson PRIMARY KEY (inovice_id,group_lesson_id);


CREATE TABLE student_ensembles (
 ensembles_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_ensembles ADD CONSTRAINT PK_student_ensembles PRIMARY KEY (ensembles_id,student_id);


CREATE TABLE student_group (
 group_lesson_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_group ADD CONSTRAINT PK_student_group PRIMARY KEY (group_lesson_id,student_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (school_id) REFERENCES school (id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (adress_id) REFERENCES adress (id);


ALTER TABLE student_skill_level ADD CONSTRAINT FK_student_skill_level_0 FOREIGN KEY (skill_level) REFERENCES skill_level (id);
ALTER TABLE student_skill_level ADD CONSTRAINT FK_student_skill_level_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);
ALTER TABLE student_skill_level ADD CONSTRAINT FK_student_skill_level_2 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE contact_person_email ADD CONSTRAINT FK_contact_person_email_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE contact_person_phone_num ADD CONSTRAINT FK_contact_person_phone_num_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE desired_instrument ADD CONSTRAINT FK_desired_instrument_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE email ADD CONSTRAINT FK_email_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (school_id) REFERENCES school (id);
ALTER TABLE instructor ADD CONSTRAINT FK_instructor_1 FOREIGN KEY (adress_id) REFERENCES adress (id);


ALTER TABLE invoice ADD CONSTRAINT FK_invoice_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE phone_num ADD CONSTRAINT FK_phone_num_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE rent ADD CONSTRAINT FK_rent_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id);
ALTER TABLE rent ADD CONSTRAINT FK_rent_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE salary ADD CONSTRAINT FK_salary_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE availiability ADD CONSTRAINT FK_availiability_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_1 FOREIGN KEY (availiability_id,instructor_id) REFERENCES availiability (id,instructor_id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_2 FOREIGN KEY (invoice_id) REFERENCES invoice (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_3 FOREIGN KEY (price_history_id) REFERENCES price_history (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_4 FOREIGN KEY (instructor_id) REFERENCES salary (instructor_id);


ALTER TABLE can_play_instrument ADD CONSTRAINT FK_can_play_instrument_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id);
ALTER TABLE can_play_instrument ADD CONSTRAINT FK_can_play_instrument_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (price_history_id) REFERENCES price_history (id);
ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_1 FOREIGN KEY (salary_id) REFERENCES salary (instructor_id);


ALTER TABLE ensembles_instruments ADD CONSTRAINT FK_ensembles_instruments_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id);
ALTER TABLE ensembles_instruments ADD CONSTRAINT FK_ensembles_instruments_1 FOREIGN KEY (ensambles_id) REFERENCES ensembles (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_2 FOREIGN KEY (price_history_id) REFERENCES price_history (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_3 FOREIGN KEY (salary_id) REFERENCES salary (instructor_id);


ALTER TABLE inovice_ensembles ADD CONSTRAINT FK_inovice_ensembles_0 FOREIGN KEY (invoice_id) REFERENCES invoice (id);
ALTER TABLE inovice_ensembles ADD CONSTRAINT FK_inovice_ensembles_1 FOREIGN KEY (ensembles_id) REFERENCES ensembles (id);


ALTER TABLE inovice_group_lesson ADD CONSTRAINT FK_inovice_group_lesson_0 FOREIGN KEY (inovice_id) REFERENCES invoice (id);
ALTER TABLE inovice_group_lesson ADD CONSTRAINT FK_inovice_group_lesson_1 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);


ALTER TABLE student_ensembles ADD CONSTRAINT FK_student_ensembles_0 FOREIGN KEY (ensembles_id) REFERENCES ensembles (id);
ALTER TABLE student_ensembles ADD CONSTRAINT FK_student_ensembles_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_group ADD CONSTRAINT FK_student_group_0 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id);
ALTER TABLE student_group ADD CONSTRAINT FK_student_group_1 FOREIGN KEY (student_id) REFERENCES student (id);