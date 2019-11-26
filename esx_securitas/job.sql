USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_Securitas', 'Securitas', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_Securitas', 'Securitas', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_Securitas', 'Securitas', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('Securitas', 'Securitas')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('Securitas',0,'recruit','recruit',50,'{}','{}'),
	('Securitas',1,'officer','Guard',60,'{}','{}'),
	('Securitas',2,'sergeant','Sergeant',70,'{}','{}'),
	('Securitas',3,'lieutenant','lieutenant',80,'{}','{}'),
	('Securitas',4,'boss','boss',90,'{}','{}')
;