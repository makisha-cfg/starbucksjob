INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_starbucks', 'starbucks', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_starbucks', 'starbucks', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_starbucks', 'starbucks', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('starbucks', 'starbucks')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('paradise',0,'interimaire','Interimaire',20,'{}','{}'),
	('paradise',1,'Serveur','Serveur',40,'{}','{}'),
	('paradise',2,'garde','Garde du corp',60,'{}','{}'),
	('paradise',3,'cadre','Cadre',85,'{}','{}'),
	('paradise',4,'boss','Commandant',100,'{}','{}')
;
