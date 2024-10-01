-- Healthcare System Schema

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialty VARCHAR(100)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(200),
    DosageForm VARCHAR(50)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    MedicationID INT,
    PrescriptionDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

-- Questions

-- 1. List all patients and their appointments, including patients who have never had an appointment.
SELECT * FROM Patients LEFT JOIN Appointments ON Patients.PatientID = Appointments.PatientID

-- 2. Display all doctors and their scheduled appointments, including doctors without any appointments.
SELECT * FROM Doctors LEFT JOIN Appointments ON Doctors.DoctorID = Appointments.DoctorID

-- 3. Show all medications and the patients they've been prescribed to, including medications that haven't been prescribed.
SELECT * FROM Medications LEFT JOIN Prescriptions ON Medications.MedicationID = Prescriptions.MedicationID LEFT JOIN Patients ON Prescriptions.PatientID = Patients.PatientID

-- 4. List all possible patient-doctor combinations, regardless of whether an appointment has occurred.
SELECT PatientName,DoctorName FROM Patients CROSS JOIN Doctors

-- 5. Display all prescriptions with patient and medication information, including prescriptions where either the patient or medication information is missing.
SELECT PrescriptionID,pat.PatientID,DateOfBirth,Gender,MedicationName,DosageForm 
FROM Prescriptions prs LEFT JOIN Medications med 
ON med.MedicationID = prs.MedicationID LEFT JOIN Patients pat ON pat.PatientID = prs.PatientID

-- 6. Show all patients who have never been prescribed any medication, along with their appointment history.
SELECT PatientName,AppointmentDate,DoctorName 
FROM Patients pat LEFT JOIN Appointments app 
ON pat.PatientID = app.PatientID LEFT JOIN Prescriptions pres ON pres.Patientid = pat.Patientid LEFT JOIN Doctors doc ON app.DoctorID = doc.DoctorID WHERE MedicationID IS NULL

-- 7. List all doctors who have appointments in the next week, along with the patients they're scheduled to see.

-- 8. Display all medications prescribed to patients over 60 years old, including medications not prescribed to this age group.

-- 9. Show all appointments from last year and any associated prescription information.

-- 10. List all possible specialty-medication combinations, regardless of whether a doctor of that specialty has prescribed that medication.
