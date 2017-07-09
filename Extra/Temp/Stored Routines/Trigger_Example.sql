CREATE TABLE employees (
    id int(11) NOT NULL AUTO_INCREMENT,
    employee_no int(11) NOT NULL,
    first_name varchar(50) not null,
    last_name varchar(50) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE employees_update_audit (
    id int(11) NOT NULL AUTO_INCREMENT,
    employeeNumber int(11) NOT NULL,
    lastname varchar(50) NOT NULL,
    changedon datetime DEFAULT NULL,
    action varchar(50) DEFAULT NULL,
    PRIMARY KEY (id)
);

DELIMITER $$
CREATE TRIGGER before_employee_update
    BEFORE UPDATE ON employees
    FOR EACH ROW 
BEGIN
 
    INSERT INTO employees_audit
    SET action = 'update',
        employeeNumber = OLD.employee_no,
        lastname = OLD.last_name,
        changedon = NOW();
END$$
DELIMITER ;

insert into employees(employee_no, first_name, last_name) values(1002, 'Chandra', 'S');
UPDATE employees SET last_Name = 'Shekhar' WHERE employee_no = 1002;
select * from employees;
select * from employees_audit;

show triggers;