/*create the database*/
create database blood_donation


create table donor(
donor_email varchar(50) NOT NULL UNIQUE, 
donor_id int NOT NULL,
donor_firstName varchar(50) NOT NULL,
donor_lastName varchar(50) NOT NULL,
donor_username varchar(50) NOT NULL,
donor_password varchar(50) NOT NULL,
primary key(donor_email)
);

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('Sai@gmail.com', 2001,'Sia','Ai','Sai@gmail.com','Sai213');

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('hollyasher@gmail.com', 2002,'Holly','Asher','hollyasher@gmail.com','hollyasher123');

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('hollya2003@gmail.com', 2003,'Holly','Asher','hollya2003@gmail.com','123');

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('Rachel.mane@gmail.com', 2004,'Rachel','Mane','rachelmane@gmail.com','rachelmane123');

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('Mimi.kim@gmail.com', 2005,'Mimi','Kim','Mimi.kim@gmail.com','mimikim123');

insert into donor(donor_email, donor_id, donor_firstName, donor_lastName, donor_username, donor_password)
values('Mary.kent@gmail.com', 2006,'Mary','Kent','Mary.Kent@gmail.com','marykent123');

UPDATE donor SET donor_email = 'Mimikim@gmail.com' WHERE donor_email = 'Mimi.kim@gmail.com'; 



/*create table donor_details in which all donor information gets stored.*/
create table donor_details(
donor_id int NOT NULL,
donor_number varchar(12) NOT NULL,
donor_email varchar(50), 
donor_age int NOT NULL,
donor_gender varchar(10) NOT NULL,
donor_bloodtype varchar(10) NOT NULL,
donor_address varchar(100) NOT NULL,
Primary key(donor_id), 
foreign key(donor_email) references donor(donor_email)
);

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2001, '236-144-3655', 'Sai@gmail.com','29', 'Female', 'B+', '8441 Rym Ave');

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2002, '313-291-9392', 'hollyasher@gmail.com','36', 'Female', 'B+', '5427 Ocean Drive Ave');

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2003, '983-293-9302', 'hollya2003@gmail.com','18', 'Female', 'O+', '283 Rhine Road');

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2004, '002-039-2811', 'Rachel.mane@gmail.com','40', 'Female','O+','299 Main Street');

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2005, '646-293-2918', 'Mimikim@gmail.com', '39', 'Female','B+', '1440 Main Street');

insert into donor_details(donor_id, donor_number, donor_email, donor_age, donor_gender, donor_bloodtype, donor_address)
values(2006, '293-299-1929', 'Mary.kent@gmail.com', '38', 'Female', 'B+', '33 Claw Street');

UPDATE donor_details SET donor_address = '29 Main Street' WHERE donor_id = 2004;


create table medpersonnel(
empl_email varchar(50) NOT NULL UNIQUE, 
empl_id int NOT NULL,
empl_firstName varchar(50) NOT NULL,
empl_lastName varchar(50) NOT NULL,
empl_username varchar(50) NOT NULL,
empl_password varchar(50) NOT NULL,
primary key(empl_email)
);

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('Jim.Mcmanus@donationbank.com', 1001,'Jim','McManus','Jim.Mcmanus@donationbank.com','jimmcmanus123');

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('James.Hadron@donationbank.com', 1002,'James','Hadron','James.Hadron@donationbank.com','JamesHadron123');

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('Alex.Coffing@donationbank.com', 1003,'Alex','Coffing','Alex.Coffing@donationbank.com','AlexCoffing123');

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('Alex.Coughing@donationbank.com', 1004,'Alex','Coughing','Alex.Coughing@donationbank.com','AlexCoughing123');

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('Mario.Sanchez@donationbank.com', 1005,'Mario','Sanchez','Mario.Sanchez@donationbank.com','MarioSanchez123');

insert into medpersonnel(empl_email, empl_id, empl_firstName, empl_lastName, empl_username, empl_password)
values('test@donationbank.com', 1006,'test','test','test@donationbank.com','test123');


UPDATE medpersonnel SET empl_password = '123AlexCoughing' WHERE empl_id = 1004;

/* create a table with all information about medical personnel gets stored*/
create table medpersonnel_credentials(
empl_id int NOT NULL UNIQUE,
empl_email varchar(50) NOT NULL, 
empl_firstName varchar(50) NOT NULL,
empl_lastName varchar(50) NOT NULL,
empl_username varchar(50) NOT NULL,
empl_password varchar(50) NOT NULL,
primary key(empl_id), 
foreign key(empl_email) references medpersonnel(empl_email)
);

/*  insert medpersonnel data into medpersonnel_credential table*/
insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1001, 'Jim.Mcmanus@donationbank.com', 'John', 'Doe', 'administrator1','1234');

insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1002, 'James.Hadron@donationbank.com', 'James', 'Smith','administrator2','1234');

insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1003,'Alex.Coffing@donationbank.com', 'Alex','Coffing','administrator3','AlexCoffing123');

insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1004,'Alex.Coughing@donationbank.com', 'Alex','Coughing','administrator4','AlexCoughing123');

insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1005,'Mario.Sanchez@donationbank.com', 'Mario','Sanchez','administrator4','MarioSanchez123');

insert into medpersonnel_credentials(empl_id, empl_email, empl_firstName, empl_lastName, empl_username, empl_password)
values(1006,'test@donationbank.com', 'test','test','test@donationbank.com','test123');

UPDATE medpersonnel_credentials SET empl_password = '123AlexCoughing' WHERE empl_id = 1004;

/*create table blood in which all blood group is stored.*/ 
create table blood_donation(
blood_id SERIAL Not Null,
donor_id int Not Null, 
quantityDonated INT NOT NULL, 
blood_dateDonated DATE NOT NULL, 
blood_type varchar(10) NOT NULL,
primary key(blood_id), 
foreign key(donor_id) references donor_details(donor_id)
);

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(1, 2001, 1, '01-01-2022','B+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(2, 2002, 1, '01-03-2022','B+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(3, 2003, 1, '01-02-2022','O+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(4, 2004, 1, '04-01-2022','O+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(5, 2003, 1, '10-01-2022','O+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(6, 2002, 1, '02-28-2022','B+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(7, 2004, 1, '01-28-2022','B+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(8, 2005, 1, '12-02-2022','B+'); 

insert into blood_donation(blood_id, donor_id, quantityDonated, blood_dateDonated, blood_type)
values(9, 2006, 1, '12-02-2022','O+'); 

UPDATE blood_donation SET blood_type = 'O+' WHERE donor_id = 2005;


/*create table donor_details in which all donor information gets stored.*/
create table recipient_details(
recipient_id int NOT NULL,
recipient_firstName varchar(50) NOT NULL,
recipient_lastName varchar(50) NOT NULL,
recipient_number varchar(12) NOT NULL,
recipient_email varchar(50),
recipient_age int NOT NULL,
recipient_gender varchar(10) NOT NULL,
recipient_bloodtype varchar(10) NOT NULL,
recipient_address varchar(100) NOT NULL,
Primary key(recipient_id)
);

insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3001,'Mark', 'Smith','212-928-0392','marksmith@gmail.com',27,'Male','B+','15 Marks Place');

insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3002,'Mike','Doe','646-927-0392','mikedoe@gmail.com',35,'Male','B+','36 Saint George Road');

insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3003,'Joe','Campbell','516-293-0293','johnnylee@gmail.com',32,'Male','O+','225 E 34th Street Apt 21G');

insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3004,'Betty','Tai','574-343-0293','bettytai@gmail.com',32,'Female','O+','13675 37 Ave Apt 1B');

insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3005,'Marcia','Elingsworth','212-002-0002','bettytai@gmail.com',32,'Female','O+','136 Main Street');
/* delete the duplicate registration*/
insert into recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
values(3006,'Maria','Vasquez','212-002-0002','mariavasquez@gmail.com',32,'Female','O+','13675 37 Ave Apt 1B');

Update recipient_details SET recipient_email = 'MarciaElingsworth@gmail.com' WHERE recipient_id = 3005; 
DELETE FROM recipient_details WHERE recipient_id = 3006; 

create table blood_transaction(
transaction_id int, 
empl_id int NOT NULL, 
blood_id SERIAL NOT NULL, 
dateOut DATE NOT NULL, 
quantity int NOT NULL, 
recipient_id int NOT NULL, 
primary key(transaction_id), 
foreign key(recipient_id) references recipient_details(recipient_id), 
foreign key(blood_id) references blood_donation(blood_id), 
foreign key(empl_id) references medpersonnel_credentials(empl_id)
); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4001, 1002, 1, '01-02-2022', 1, 3001); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4002, 1001, 2, '01-02-2022', 1, 3003); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4003, 1003, 3, '01-02-2022', 1, 3002); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4004, 1004, 4, '01-02-2022', 1, 3004); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4005, 1005, 5, '03-02-2022', 1, 3005); 

insert into blood_transaction(transaction_id, empl_id, blood_id, dateOut, quantity, recipient_id)
values(4006, 1005, 6, '04-02-2022', 1, 3002); 

Update blood_transaction SET dateOut = '02-02-2022' WHERE recipient_id = 3004; 
DELETE FROM blood_transaction WHERE transaction_id = 4006; 

DELETE FROM medpersonnel_credentials where empl_id =1006;
DELETE FROM medpersonnel where empl_email ='test@donationbank.com';




create table preexisting_details(
donor_preexistingconditions varchar(50) NOT NULL,
donor_email varchar(50) NOT NULL UNIQUE, 
foreign key(donor_email) references donor(donor_email)
);

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('None', 'Sai@gmail.com'); 

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('Pregnant', 'hollyasher@gmail.com'); 

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('Diabetic', 'hollya2003@gmail.com'); 

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('Unknown', 'Rachel.mane@gmail.com'); 

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('Unknown', 'Mimikim@gmail.com'); 

insert into preexisting_details(donor_preexistingconditions, donor_email)
values('HIV', 'Mary.kent@gmail.com'); 

UPDATE preexisting_details SET donor_preexistingconditions = 'None' WHERE donor_email = 'Mimikim@gmail.com'; 
DELETE FROM blood_donation where donor_id = 2006; 
DELETE FROM preexisting_details WHERE donor_email = 'Mary.kent@gmail.com'; 
DELETE FROM donor_details where donor_email = 'Mary.kent@gmail.com'; 
DELETE FROM donor where donor_email = 'Mary.kent@gmail.com'; 


Create view PatientSeen as Select 
concat_ws(' ', m.empl_firstName, m.empl_lastName) as "Medical Personnel",   
concat_ws(' ', r.recipient_firstName, r.recipient_lastName) as "Patient Name", 
b.dateOut as "Date Seen"
From medpersonnel m, blood_transaction b, recipient_details r
WHERE m.empl_id = b.empl_id AND r.recipient_id = b.recipient_id 

Create view BloodQuantity as Select 
donor_details.donor_bloodtype as "Blood Type", sum(blood_donation.quantityDonated) as "In Stock"
FROM blood_donation join donor_details 
on blood_donation.donor_id = donor_details.donor_id
group by donor_details.donor_bloodtype 

/* What is the patient list of information for the donors? */
Select donor.donor_firstName, donor.donor_lastName, donor_details.donor_number, 
donor_details.donor_email, donor_details.donor_age, donor_details.donor_gender, donor_details.donor_bloodtype, donor_details.donor_address
From donor INNER JOIN donor_details ON donor.donor_id = donor_details.donor_id


/* What are the donor id's of the people named Holly?*/ 
SELECT donor.donor_id 
FROM donor
WHERE donor.donor_firstName='Holly' AND donor.donor_lastName='Asher'; 

/* What are the first names and last names of the people who have donated? */
select r.recipient_firstName, r.recipient_lastName, r.recipient_bloodtype, b.dateOut
FROM recipient_details r, blood_transaction b
WHERE b.recipient_id = r.recipient_id

/*What are the medical personnel credentials?*/
select medpersonnel.empl_username, medpersonnel.empl_password
FROM medpersonnel
INNER JOIN  medpersonnel_credentials on medpersonnel.empl_id = medpersonnel_credentials.empl_id

/*Find the credentials of the medical personnel who are not null.*/
select medpersonnel_credentials.empl_username, medpersonnel_credentials.empl_password
FROM  medpersonnel_credentials
WHERE medpersonnel_credentials.empl_id is not NULL

/* What are the pre-exisitng conditions of the people in the donor list?*/
select donor.donor_firstName, donor.donor_lastName, preexisting_details.donor_preexistingconditions
FROM  donor, preexisting_details
WHERE donor.donor_email = preexisting_details.donor_email

/*What are the usernames of the donors who do not have "None" as their pre-exisiting condition?*/
select donor.donor_username
FROM  donor, preexisting_details 
WHERE donor.donor_email = preexisting_details.donor_email AND NOT preexisting_details.donor_preexistingconditions='None'

/*What are the dates in and out of the blood relative to the transaction_id and recipient_id?*/
select blood_transaction.transaction_id, blood_transaction.recipient_id, blood_donation.blood_dateDonated, blood_transaction.dateOut
FROM  blood_donation INNER JOIN blood_transaction 
ON blood_donation.blood_id = blood_transaction.blood_id

create table medpersonnel_audits(
  empl_id int NOT NULL,
  empl_lastName varchar(50) NOT NULL,
  changed_on TIMESTAMP(6) NOT NULL, 
  foreign key(empl_id) references medpersonnel_credentials(empl_id)
)

CREATE OR REPLACE FUNCTION log_name_changes()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	IF NEW.empl_lastName <> OLD.empl_lastName THEN
		 INSERT INTO medpersonnel_audits(empl_id,empl_lastName,changed_on)
		 VALUES(OLD.empl_id,OLD.empl_lastName,now());
	END IF;

	RETURN NEW;
END;
$$

CREATE TRIGGER empl_lastName_changes
  BEFORE UPDATE
  ON medpersonnel
  FOR EACH ROW
  EXECUTE PROCEDURE log_name_changes();

UPDATE medpersonnel
SET empl_lastName = 'Brown'
WHERE empl_id = 1003;

cur.execute("""
    INSERT INTO recipient_details(recipient_id, recipient_firstName, recipient_lastName, recipient_number, recipient_email, recipient_age, recipient_gender, recipient_bloodtype, recipient_address)
    values(%s, %s, %s, %s, %s, %s, %s, %s, %s);
    """, 
    (3004,"Betty","Tai","5743430293","bettytai@gmail.com",32,"Female","O+","13675 37 Ave Apt 1B"))