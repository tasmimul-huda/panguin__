/*creating databases */
CREATE DATABASE panguin;

/*--CREATE tabel courses;*/
CREATE TABLE courses (
    id int AUTO_INCREMENT,
    name varchar(50),
    teacher_id int
    );
DESCRIBE courses;
/*--CREATE tabel teachers;*/    
CREATE TABLE teachers (
    id int,
    name varchar(50)
    );

DESCRIBE courses;
/* Insert data into courses table */    
INSERT INTO courses
    VALUES ('English Grammer', 3);

INSERT INTO courses
    VALUES ('Mathematics', 1);
INSERT INTO courses
    VALUES ('Physics', 4);

INSERT INTO courses
    VALUES ('Chemistry', 4);

INSERT INTO courses
    VALUES ('Biology', 5);
    
    /* Insertion complete in courses tabel */

SELECT * FROM courses;

/* Insert data into teachers table */    
INSERT INTO teachers
    VALUES (1, 'Johanna Kabir');

INSERT INTO teachers
    VALUES (2, 'Lara Gilbert');

INSERT INTO teachers
    VALUES (3, 'John Smith');

INSERT INTO teachers
    VALUES (4, 'Danniel Robertson');

INSERT INTO teachers
    VALUES (5, 'Larry Copper');
    
    /* Insertion complete in teacher tabel */

SELECT * FROM teachers;


/*Task 1 */

SELECT courses.name, teachers.name FROM teachers LEFT JOIN courses ON teachers.id =courses.teacher_id


/*task 2*/
SELECT teacher_id, COUNT(`teacher_id`) AS `value_occurrence` FROM courses GROUP BY teacher_id ORDER BY `value_occurrence` DESC LIMIT 1




/* TASK 3 */
SELECT teachers.id, courses.name, teachers.name FROM teachers LEFT JOIN courses ON teachers.id =courses.teacher_id where courses.name IS NULL















