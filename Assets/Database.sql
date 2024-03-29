
create database clinic;

create table Doctor (
   doctor_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
   doctor_specialization varchar(255) NOT NULL ,
   doctor_name varchar(255)  NOT NULL
);


create table disease (
  disease_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  disease_name varchar(255) NOT NULL ,
  disease_description varchar(1000) NOT NULL
);



 create table Patient ( 
 patient_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
 patient_name varchar(255) NOT NULL ,
 patient_father_name varchar(255) NOT NULL , 
 sex boolean NOT NULL , 
 dob date, 
 doctor_name varchar(255) not null
 );



create table Disease_History(
   history_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
   patient_id int(11) NOT NULL ,
   disease_history varchar(500) NOT NULL ,
   FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
   history_timestamp timestamp NOT NULL
 );
/*Updated query for create table Disease_History  USE THIS IN FUTURE  FOR EXAMPLE ON PC*/
create table Disease_History(
   history_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT ,
   patient_id int(11) NOT NULL ,
   disease_history varchar(500) NOT NULL ,
   FOREIGN KEY (patient_id) REFERENCES Patient(patient_id) ON DELETE CASCADE,
   history_timestamp timestamp NOT NULL
 );



 create table Prescription_History(
   prescription_id int(11) not null primary key auto_increment ,
   patient_id int(11) not null ,
   prescription varchar(500) not null ,
   prescription_timestamp timestamp not null,
   FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
 );
/*Updated query for create table Disease_History  USE THIS IN FUTURE  FOR EXAMPLE ON PC*/
create table Prescription_History(
   prescription_id int(11) not null primary key auto_increment ,
   patient_id int(11) not null ,
   prescription varchar(500) not null ,
   prescription_timestamp timestamp not null,
   FOREIGN KEY (patient_id) REFERENCES Patient(patient_id) ON DELETE CASCADE
 );

create table User(
 user_id int(11) not null auto_increment PRIMARY KEY ,
 username varchar(30) not null ,
 password varchar(30) not null,
 user_level int(1) not null

  #now there could be two kinds \of use\r levels
  #1 Mean \ADMIN \AND \2 MEAN  GUESt  
);