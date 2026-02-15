1.	Print a list of all doctors based at a paXrticular hospital

SELECT name
FROM doctors
WHERE hospital_id = 21;

2.	Print a list of all prescriptions for a particular patient, ordered by the prescription date
SELECT *
FROM prescriptions
WHERE patient_id = 345
ORDER BY prescription_date;

3.	Print a list of all prescriptions that a particular doctor has prescribed
SELECT *
FROM prescriptions
WHERE doctor_id = 2;

4.	Add a new patient to the database, including being registered with one of the doctors

INSERT INTO patients (name, date_of_birth, address, role, doctor_id)
VALUES ('Sam Watson, '1989-07-06', '35 Pipistrelle Way, 'Patient', 2);

5.	Identify which doctor has made the most prescriptions

SELECT doctor_id, COUNT(*) AS total_prescriptions
FROM prescriptions
GROUP BY doctor_id;

6.	Print a list of all doctors at the hospital with biggest size (number of beds).
SELECT *
FROM doctors
WHERE hospital_id IN (
SELECT hospital_id
FROM hospitals
WHERE size = (SELECT MAX(size) FROM hospitals));

