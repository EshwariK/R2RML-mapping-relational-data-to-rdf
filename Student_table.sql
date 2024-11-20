-- department table
CREATE TABLE department (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Degree Program table
CREATE TABLE program (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(id)
);


-- Student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    firstName VARCHAR(50),
	lastName VARCHAR (50),
	dob date,
    cgpa DECIMAL(3, 2),
    department_id INT,
    FOREIGN KEY (program_id) REFERENCES program(id)
);


-- Insert data into Department table
INSERT INTO Department (id, name) VALUES 
(1, 'Natural Sciences'),
(2, 'Computer Sciences'),
(3, 'Economics & Bussiness Administration');

-- Insert data into Student table
INSERT INTO Student (id, firstName, lastName, dob, cgpa, department_id) VALUES
(1, 'Maria', 'Lucy', '2001-02-15', 3.2, 1),
(2, 'Robert', 'Bruco', '1999-04-22', 3.7, 2),
(3, 'Alesco', 'Miyan', '2001-07-09', 3.2, 3),
(4, 'Lucy', 'Brown', '2000-11-30', 3.9, 4),
(5, 'Mike', 'Wilson', '1998-03-18', 3.4, 5);

-- Insert data into Course table
INSERT INTO Course (id, name, department_id) VALUES
(1, 'chemistry', 1),
(2, 'physics', 1),
(3, 'Automative Software Enginnering',2),
(4, 'Web Engineering', 2),
(5, 'Neurorobotics', 2),
(6, 'Bussiness Administration', 3),
(7, 'Bussiness information systems',3);