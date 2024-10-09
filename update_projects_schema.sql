CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(120) NOT NULL,
    location VARCHAR(120) NOT NULL
);
INSERT INTO departments (department_name, location) VALUES 
('Finance', 'Boston'),
('Research and Development', 'Seattle'),
('Customer Support', 'Austin'),
('Legal', 'Dallas');
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(120) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
ALTER TABLE departments
MODIFY COLUMN location VARCHAR(200);
DELETE FROM departments WHERE department_id = 3;
