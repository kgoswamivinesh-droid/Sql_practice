-- Part A

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Part B


INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Computer Science'),
(2, 'Electrical'),
(3, 'Mechanical'),
(4, 'Civil'),
(5, 'Electronics');

INSERT INTO Courses (course_id, course_name, dept_id) VALUES
(101, 'DBMS', 1),
(102, 'Operating Systems', 1),
(103, 'Data Structures', 1),
(104, 'Digital Circuits', 2),
(105, 'Power Systems', 2),
(106, 'Thermodynamics', 3);

INSERT INTO Courses (course_id, course_name, dept_id) VALUES

(107, 'Thermodynamics', 3),
(108, 'Fluid Mechanics', 3),
(109, 'Heat Transfer', 3),
(110, 'Structural Analysis', 4),
(111, 'Surveying', 4),
(112, 'RCC Design', 4),
(113, 'Microprocessors', 5),
(114, 'VLSI', 5),
(115, 'Embedded Systems', 5);



-- Part C



SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Courses
    GROUP BY dept_id
    HAVING COUNT(course_id) > 2
);

Select * from Departments;
SELECT * FROM Courses;

-- Part D


GRANT SELECT ON db_43sdq4mdy.Courses TO 'viewer_user'@'bytexldb.com';
