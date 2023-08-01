# SELECT appointments.occurs_on, patients.first_name, patients.last_name
# FROM appointments
# JOIN patients ON appointments.patient_id = patients.id


# # READ ROSALIND FRANKLIN'S CONSULTATIONS DATES ALONG WITH HER PATIENTS FIRST NAME & LAST NAME
# SELECT appointments.occurs_on, patients.first_name, patients.last_name
# FROM appointments
# JOIN patients ON appointments.patient_id = patients.id
# JOIN doctors ON appointments.doctor_id = doctors.id
# WHERE doctors.first_name = 'Rosalind' AND doctors.last_name = 'Franklin'
# ORDER BY patients.last_name ASC;


# query = "INSERT INTO students (last_name, first_name, middle_name) VALUES(?, ?)"
# rows = DB.execute(query, last_name, first_name) 

require 'sqlite3'
DB = SQLite3::Database.new("./patients_doctors.sqlite")
DB.results_as_hash = true

query = 'SELECT * FROM doctors'

rows = DB.execute(query)
doctor = rows.first
p doctor

p doctor["age"] 
p doctor[4]
# p rows