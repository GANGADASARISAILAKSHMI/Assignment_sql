-- creating database
create database online_consulation_theraphy_website
-- creating a table doctor
create table doctor(
doctor_id int primary key ,
doctor_name varchar(40) not null,
specialization varchar(30) not null
);
-- creating appointments table
create table Appointments(
patent_id int not null,
doctor_id int not null,
appointment_date date not null,
appointment_time time not null,
address varchar(40) not null,
foreign key (docter_id) references doctor,
foreign key (patient_id) references Patient
);
-- creating patient table
create table Patient(
patient_id int primary key,
patient_name varchar(30) not null,
gender varchar(30),
patent_age int,
patient_problem varchar(30) not null,
patient_contact_number int not null
);
--creating reviews table
create table Reviews(
 review_id int primary key,
 patient_id int,
 doctor_id int not null,
 review_date date,
 rating int,
 comments varchar(300),
 foreign key (docter_id) references doctor,
foreign key (patient_id) references Patient
 );
 


