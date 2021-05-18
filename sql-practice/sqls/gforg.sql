-- DROP TABLE IF EXISTS students;
CREATE TABLE students (
    roll_no BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(140) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    age SMALLINT NOT NULL 
);

INSERT INTO students VALUES (1, 'RAM', 'DELHI', '9455123451', 18);

-- DROP TABLE IF EXISTS A;
CREATE TABLE A (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL
);

INSERT INTO A VALUES (12, 'Arun', 60);
INSERT INTO A VALUES (15, 'Shreya', 24);
INSERT INTO A VALUES (99, 'Rohit', 11);

-- DROP TABLE IF EXISTS B;
CREATE TABLE B (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL
);

INSERT INTO B VALUES (15, 'Shreya', 24);
INSERT INTO B VALUES (25, 'Hari', 40);
INSERT INTO B VALUES (98, 'Rohit', 20);
INSERT INTO B VALUES (99, 'Rohit', 11);

-- DROP TABLE IF EXISTS C;
CREATE TABLE C (
    id BIGINT NOT NULL PRIMARY KEY,
    phone VARCHAR(15) NOT NULL,
    area CHAR(2) NOT NULL
);

INSERT INTO C VALUES (10, '2200', 02);
INSERT INTO C VALUES (99, '2100', 01);

-- DROP TABLE IF EXISTS student_details;
CREATE TABLE student_details (
    s_id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(400) NOT NULL
);

-- DROP TABLE IF EXISTS student_marks;
CREATE TABLE student_marks (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks SMALLINT NOT NULL,
    age SMALLINT NOT NULL
);

INSERT INTO student_details VALUES (1, 'Harsh', 'Kolkata');
INSERT INTO student_details VALUES (2, 'Ashish', 'Durgapur');
INSERT INTO student_details VALUES (3, 'Pratik', 'Delhi');
INSERT INTO student_details VALUES (4, 'Dhanraj', 'Bihar');
INSERT INTO student_details VALUES (5, 'Ram', 'Rajasthan');
INSERT INTO student_marks VALUES (1, 'Harsh', 90, 19);
INSERT INTO student_marks VALUES (2, 'Suresh', 50, 20);
INSERT INTO student_marks VALUES (3, 'Pratik', 80, 19);
INSERT INTO student_marks VALUES (4, 'Dhanraj', 95, 21);
INSERT INTO student_marks VALUES (5, 'Ram', 85, 18);

-- DROP TABLE IF EXISTS student_mavg;
CREATE TABLE student_mavg (
    tid SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    sub1 SMALLINT NULL,
    sub2 SMALLINT NULL,
    sub3 SMALLINT NULL,
    total SMALLINT NULL,
    per SMALLINT NULL
);

-- DROP TRIGGER IF EXISTS student_mavg_tr;
CREATE TRIGGER student_mavg_tr BEFORE INSERT ON student_mavg FOR EACH ROW SET NEW.total = NEW.sub1 + NEW.sub2 + NEW.sub3, NEW.per = NEW.total * 60 / 100;

INSERT INTO student_mavg (name, sub1, sub2, sub3) VALUES ('Biology', 20, 40, 70);
