INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lawyer',0,'intern','Intern',12,'{}','{}'),
	('lawyer',1,'lawyer','Lawyer',24,'{}','{}'),
	('lawyer',2,'experienced','Experienced Lawyer',36,'{}','{}'),
	('lawyer',3,'da',"District Attorney",48,'{}','{}'),
	('lawyer',4,'boss','Chief',60,'{}','{}'),
    ('offlawyer',0,'intern','Intern',0,'{}','{}'),
    ('offlawyer',1,'lawyer','Lawyer',0,'{}','{}'),
    ('offlawyer',2,'experienced','Experienced Lawyer',0,'{}','{}'),
    ('offlawyer',3,'da','District Attorney',0,'{}','{}'),
    ('offlawyer',4,'boss','Chief',0,'{}','{}')
;

INSERT INTO `jobs` (`name`, `label`) VALUES
    ('lawyer', 'Lawyer'),
    ('offlawyer', 'OffDutyLawyer')
;

INSERT INTO `addon_account` (name, label, shared) VALUES 
    ('society_lawyer','Lawyer',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_lawyer','Lawyer',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
    ('society_lawyer', 'Lawyer', 1)
;