# Electronic Health Record (EHR) System

The Electronic Health Record (EHR) System is a database-driven application designed to store patient records, doctor information, and medicine prescriptions. This README file provides instructions on how to set up and run the EHR system.

## Prerequisites

Before running the EHR system, ensure that you have the following prerequisites installed on your system:

- **Database Management System (DBMS):** Install a DBMS such as MySQL, PostgreSQL, or SQLite.
- **Programming Language:** Install the necessary programming language required to run the EHR system. For example, if you're using a web-based application, you might need to install :Python or Node.js or PHP.

## Database Setup

1. Create a new database in your DBMS to store the EHR system data.
2. Execute the provided SQL script or run the database migration tool to create the required tables and relationships. The script should create tables for patients, doctors, medicines, treatments, and prescriptions. You can use the database schema provided earlier as a reference.
3. Ensure that you have the database connection details (e.g., host, port, username, password) handy, as you'll need them to configure the EHR system.

## Retrieving Patient Data with Prescriptions

To retrieve the data of patients along with their prescribed medicines, you can use a SQL query like the following:

```
SELECT Patients.patient_id, Patients.patient_name, Medicines.medicine_name, Prescriptions.dosage
FROM Patients
JOIN Prescriptions ON Patients.patient_id = Prescriptions.patient_id
JOIN Medicines ON Prescriptions.medicine_id = Medicines.medicine_id;
```

## Troubleshooting

If you encounter any issues while setting up or running the EHR system, refer to the documentation or contact the system administrator or developer for assistance.
