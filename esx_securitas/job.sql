USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_securitas', 'securitas', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_securitas', 'securitas', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_securitas', 'securitas', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('securitas', 'securitas')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('securitas',0,'recruit','recruit',50,'{}','{}'),
	('securitas',1,'officer','Guard',60,'{}','{}'),
	('securitas',2,'sergeant','Sergeant',70,'{}','{}'),
	('securitas',3,'lieutenant','lieutenant',80,'{}','{}'),
	('securitas',4,'boss','boss',90,'{}','{}')
;