INSERT INTO Patients VALUES
(1,'Rahul','Male',25),
(2,'Priya','Female',30),
(3,'Kiran','Male',40),
(4,'Sneha','Female',28);

INSERT INTO Doctors VALUES
(101,'Ramesh','Cardiology'),
(102,'Suresh','Neurology'),
(103,'Anitha','Dermatology');

INSERT INTO Appointments VALUES
(1001,1,101,'2026-01-05',500),
(1002,2,102,'2026-01-06',700),
(1003,1,101,'2026-01-10',500),
(1004,3,103,'2026-01-15',600),
(1005,2,101,'2026-01-20',500),
(1006,4,102,'2026-01-25',700);

INSERT INTO Prescriptions VALUES
(1,1001,'Paracetamol','500mg'),
(2,1002,'Aspirin','100mg'),
(3,1003,'Vitamin D','1 tablet daily'),
(4,1004,'Cetirizine','10mg');
