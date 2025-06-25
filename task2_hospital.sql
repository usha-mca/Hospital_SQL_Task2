use hospitaldb;

INSERT INTO Departments (name)
VALUES 
    ('Cardiology'),
    ('Neurology'),
    ('Orthopedics'),
    ('Pediatrics');


INSERT INTO Doctors (name, specialization, department_id)
VALUES
    ('Dr. Ravi Kumar', 'Cardiologist', 1),
    ('Dr. Meena Rao', 'Neurologist', 2),
    ('Dr. Ajay Singh', NULL, 3),           -- NULL specialization
    ('Dr. Sneha', 'Pediatrician', 4);


INSERT INTO Patients (name, gender, birth_date)
VALUES
    ('Anjali Sharma', 'Female', '1990-06-15'),
    ('Rahul Verma', 'Male', '1985-12-20'),
    ('Sneha Patil', NULL, '2000-01-10'),     -- NULL gender
    ('Mohit Kumar', 'Male', NULL);           -- NULL birth_date


INSERT INTO Appointments (doctor_id, patient_id, appointment_date, reason)
VALUES
    (1, 1, '2025-06-20', 'Routine Checkup'),
    (2, 2, '2025-06-22', 'Migraine'),
    (3, 3, '2025-06-23', NULL),               -- NULL reason
    (4, 4, '2025-06-25', 'Vaccination');
    
UPDATE Doctors
SET specialization = 'Orthopedic Surgeon'
WHERE doctor_id = 3;

UPDATE Patients
SET gender = 'Female'
WHERE patient_id = 3;

UPDATE Patients
SET birth_date = '1995-07-01'
WHERE patient_id = 4;

UPDATE Appointments
SET reason = 'Follow-up Visit'
WHERE appointment_id = 3;


DELETE FROM Appointments
WHERE patient_id = 2;

DELETE FROM Patients
WHERE patient_id = 2;

INSERT INTO Patients (name, gender)
VALUES ('Kavita Deshmukh', 'Female');

INSERT INTO Doctors (name, specialization)
VALUES ('Dr. Manoj Tiwari', 'General Physician');