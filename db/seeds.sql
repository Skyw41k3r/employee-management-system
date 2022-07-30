INSERT INTO departments (name)
VALUES ("Sales"),
       ("Engineering"),
       ("Finance"),
       ("Legal");

INSERT INTO roles (title, salary, departments_id)
VALUES ("Sales Lead", 65000.00, 1),
       ("Salesperson", 50000.00, 1),
       ("Lead Engineer", 165000.00, 2),
       ("Engineer", 95000.00, 2),
       ("Account Manager", 65000.00, 3),
       ("Accountant", 55000.00, 3),
       ("Legal Team Lead", 145000.00, 4),
       ("Lawyer", 120000.00, 4);

INSERT INTO managers (first_name, last_name, departments_id)
VALUES ("Hashirama", "Senju", 1),
       ("Hiruzen", "Sarutobi", 2),
       ("Madara", "Uchiha", 3),
       ("Itachi", "Uchiha", 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Naruto", "Uzumaki", 1, 1),
       ("Sasuke", "Uchiha", 1, 2),
       ("Rock", "Lee", 2, 3),
       ("Neji", "Hyuga", 3, 4),
       ("Shikamaru", "Nara", 4, 5),
       ("Minato", "Namikaze", 6, 6),
       ("Kakashi", "Hatake", 5, 7),
       ("Tobirama", "Senju", 7, 8);