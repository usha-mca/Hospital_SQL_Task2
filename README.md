# Task 2 – Data Insertion and Handling Nulls (HospitalDB)

This task was completed as part of the SQL Developer Internship program by Elevate Labs.  
The objective was to practice inserting, updating, deleting data, and handling NULL values.

## 🗂️ Tables Used

The following tables were used from the `hospitaldb` schema:

- **Departments**
- **Doctors**
- **Patients**
- **Appointments**

## 📌 SQL Concepts Practiced

- `INSERT INTO` with full and partial column sets
- `UPDATE` to fix/complete missing or incorrect data
- `DELETE` with foreign key handling
- Handling `NULL` values explicitly
- Maintaining data consistency with manual deletes

## 🧪 Sample Data Inserted

### ✅ Departments
Inserted 4 departments including *Cardiology*, *Neurology*, *Orthopedics*, and *Pediatrics*.

### ✅ Doctors
Inserted 5 doctors:
- One doctor had a `NULL` specialization which was later updated.
- One doctor inserted without a department.

### ✅ Patients
Inserted 5 patients:
- One patient had `NULL` gender and another had `NULL` birth_date.
- Both values were later updated using `UPDATE`.

### ✅ Appointments
Inserted 4 appointments:
- One had a `NULL` reason, which was later updated.

## 🔄 Update Operations

- Updated the `specialization` of a doctor where it was initially `NULL`.
- Updated the `gender` and `birth_date` of patients where data was missing.
- Updated the `reason` for an appointment that had a `NULL` value.

## ❌ Delete Operations

To safely delete a patient with appointments, the related records in `Appointments` were deleted first:

```sql
DELETE FROM Appointments WHERE patient_id = 2;
DELETE FROM Patients WHERE patient_id = 2;

## ✍️ Partial Inserts (Handling NULLs)

- Inserted a patient record without birth_date.
- Inserted a doctor without assigning a department.

## ✅ Output

All data insertion, update, and deletion operations were successful.  
The database is now clean, consistent, and ready for further tasks.

