CREATE TABLE hospitals (
hospital_id varchar(150) NOT NULL,
name varchar(150) NOT NULL,
address varchar(150) NOT NULL,
size varchar(150) NOT NULL,
type varchar(150) NOT NULL,
accreditation_status varchar(150) NOT NULL,
PRIMARY KEY (hospital_id)
);

CREATE TABLE doctors (
person_id varchar(150) NOT NULL,
name varchar(150) NOT NULL,
date_of_birth date NOT NULL,
address varchar(150) NOT NULL,
role varchar(150) NOT NULL,
hospital_id varchar(150) NOT NULL,
PRIMARY KEY (person_id),
FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);

CREATE TABLE prescriptions (
prescription_id VARCHAR(150) NOT NULL,
patient_id VARCHAR(150) NOT NULL,
doctor_id VARCHAR(150) NOT NULL,
medication VARCHAR(150) NOT NULL,
prescription_date DATE NOT NULL,
PRIMARY KEY (prescription_id),
FOREIGN KEY (patient_id) REFERENCES patients(person_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(person_id)
);
CREATE TABLE patients (
person_id VARCHAR(150) NOT NULL,
name VARCHAR(150) NOT NULL,
date_of_birth DATE NOT NULL,
address VARCHAR(150) NOT NULL,
role VARCHAR(150) NOT NULL,
doctor_id VARCHAR(150) NOT NULL,
PRIMARY KEY (person_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(person_id)
);
