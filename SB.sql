CREATE DATABASE IF NOT EXISTS res1;
USE res1;

CREATE TABLE IF NOT EXISTS parent (
    parent_id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS student (
    rollNo INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES parent(parent_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS subject (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS student_subject (
    rollNo INT,
    subject_id INT,
    grade VARCHAR(5),
    PRIMARY KEY (rollNo, subject_id),
    FOREIGN KEY (rollNo) REFERENCES student(rollNo) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id) ON DELETE CASCADE
);

-- Parents
INSERT INTO parent (fname) VALUES ('Raj Thakur');
INSERT INTO parent (fname) VALUES ('Anita Mehra');
INSERT INTO parent (fname) VALUES ('Suresh Yadav');

-- Students
INSERT INTO student (rollNo, name, parent_id) VALUES (101, 'Ayush Thakur', 1);
INSERT INTO student (rollNo, name, parent_id) VALUES (102, 'Neha Mehra', 2);
INSERT INTO student (rollNo, name, parent_id) VALUES (103, 'Ravi Yadav', 3);

-- Subjects
INSERT IGNORE INTO subject (sub_name) VALUES ('Math');
INSERT IGNORE INTO subject (sub_name) VALUES ('Science');
INSERT IGNORE INTO subject (sub_name) VALUES ('English');

-- Student-Subject Grades
INSERT INTO student_subject (rollNo, subject_id, grade) VALUES (101, 1, 'A');
INSERT INTO student_subject (rollNo, subject_id, grade) VALUES (101, 2, 'B+');
INSERT INTO student_subject (rollNo, subject_id, grade) VALUES (102, 1, 'A-');
INSERT INTO student_subject (rollNo, subject_id, grade) VALUES (103, 3, 'B');


SELECT * FROM parent;

SELECT * FROM student;

SELECT * FROM subject;

SELECT * FROM student_subject;

JOINED QUERY

SELECT
    s.name AS student_name,
    p.fname AS parent_name,
    sub.sub_name AS subject,
    ss.grade
FROM
    student s
JOIN
    parent p ON s.parent_id = p.parent_id
JOIN
    student_subject ss ON s.rollNo = ss.rollNo
JOIN
    subject sub ON ss.subject_id = sub.subject_id;
