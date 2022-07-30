DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;

USE company_db;

DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    departments_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (departments_id)
    REFERENCES departments(id) ON DELETE SET NULL
);

DROP TABLE IF EXISTS managers;
CREATE TABLE managers (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    departments_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (departments_id)
    REFERENCES departments(id) ON DELETE SET NULL
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role_id INT,
    manager_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id)
    REFERENCES roles(id) ON DELETE SET NULL,
    FOREIGN KEY (manager_id)
    REFERENCES manager(id) ON DELETE SET NULL
);