-- Create the Doctors table
CREATE TABLE Doctors (
  doctor_id INT PRIMARY KEY,
  doctor_name VARCHAR(100),
  specialty VARCHAR(100)
);

-- Create the Patients table
CREATE TABLE Patients (
  patient_id INT PRIMARY KEY,
  patient_name VARCHAR(100),
  date_of_birth DATE,
  doctor_id INT,
  FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Create the Medicines table
CREATE TABLE Medicines (
  medicine_id INT PRIMARY KEY,
  medicine_name VARCHAR(100)
);

-- Create the Prescriptions table
CREATE TABLE Prescriptions (
  prescription_id INT PRIMARY KEY,
  patient_id INT,
  medicine_id INT,
  dosage VARCHAR(100),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
  FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
);