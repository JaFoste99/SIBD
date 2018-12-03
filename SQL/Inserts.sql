/*PESSOAS*/
INSERT INTO _person(VAT, name,address_street ,address_city, address_zip  ) VALUES
(023, 'Marco Passarinho', 'Rua dos Piupius', 'Seixal', '3837-339'),
(057, 'Ines Lopes', 'Rua Maria Adelaide', 'Portalegre','3289-292'),
(001, 'Zé Manel','Rua de Angola', 'Sintra', '2556-283'),
(002, 'Duarte Correia', 'Rua São Juliao', 'Lisboa', '4566-255'),
(003, 'Rafael Forte', 'Rua Fernandes', 'Lisboa', '2381-279'),
(004, 'Gertrudes da Silva', 'Rua São Juliao', 'Lisboa', '4566-281'),
(005, 'Marco Paulo', 'Rua Fernandes', 'Lisboa', '2381-233'),
(006, 'José Nobre', 'Avenida de Macau', 'Sintra', '2605-811'),
(008, 'John Smith', 'Rua do Brasil', 'Lisboa', '8666-783'),
(016, 'Poupas Amarelo', 'Rua Sésamo', 'Amadora','9342-551'),
(007, 'James Bond', 'Rua de Inglaterra', 'Porto','5678-923'),
(018, 'Dinis', 'Rua de Inglaterra', 'Lisboa', '4926-283'),
(043, 'Vlad Yuri', 'Avenida Duque de Ávila', 'Lisboa', '4786-233'),
(082, 'Feliciano', 'Avenida da Liberdade', 'Lisboa', '4506-253');

/*Clientes*/
INSERT INTO _client VALUES
(023),
(057),
(004),
(001),
(043),
(018),
(082),
(006),
(008),
(007);

/*VETS*/
INSERT INTO _veterinary (VAT) VALUES
(002),
(003),
(008),
(006);

/*ASSISTANT*/
INSERT INTO _assistant VALUES
(005),
(016),
(043);

/*PhoneNumber*/
INSERT INTO _phone_number VALUES
(965555555, 005),
(924444444, 004),
(933333333, 003),
(921111111, 008),
(922111121, 007),
(935681111, 018),
(925593111, 043);


/*SPECIES*/
INSERT INTO _species(name) VALUES
('bird Terrier'),
('Persa bird'),
('Yorkshire Terrier'),
('German Shepherd'),
('Basset Hound'),
('Dalmatian'),
('bird'),
('Parrot'),
('Poodle'),
('Persa'),
('cat'),
('dog'),
('Pug');

/*Generalization_SPECIES*/
INSERT INTO _generalization_species VALUES
('Persa bird', 'cat'),
('bird Terrier', 'dog'),
('German Shepherd', 'dog'),
('Yorkshire Terrier','dog'),
('Basset Hound','dog'),
('Dalmatian', 'dog'),
('Parrot', 'bird'),
('Persa', 'cat'),
('Pug', 'dog');

/*ANIMAL*/
INSERT INTO _animal (name, VAT, species_name, birth_year) VALUES 
('Maria',       023, 'bird Terrier',       2013),
('Antonito',    057, 'Persa bird',         2000),
('Diego',       008, 'German Shepherd' ,   2008),
('Totti' ,      004, 'Yorkshire Terrier',  2016),
('Chibanga' ,   006, 'Basset Hound',       2013),
('Gato',        006, 'Pug',                2012),
('Amílcar',     018, 'Parrot',             2015),
('Teco',        082, 'Poodle',             2008),
('Ze',          004, 'Basset Hound',       2001),
('Bubu',        018, 'Basset Hound',       2011),
('Michu',       007, 'Basset Hound',       2012),
('Cacu',        006, 'German Shepherd',    2010),
('Alfredo',     007, 'Persa',              2010),
('Diogo',       082, 'German Shepherd' ,   2005);

/*CONSULT*/
INSERT INTO _consult (name,VAT_owner, date_timestamp , o, VAT_client, VAT_vet, weight) VALUES 
('Diego',       008, '2017-08-23  12:55:08', 'obese',     004, 003, 20 ),
('Chibanga',    006, '2017-10-10  14:45:08', 'obese',     004, 006, 40 ),
('Gato',        006, '2017-09-09  15:45:08', 'obese',     004, 003, 35 ),
('Gato',        006, '2017-01-01  12:10:00', 'obese',     004, 002, 29 ),
('Totti',       004, '2017-11-03  22:34:56', 'obesity',   001, 002, 31 ),
('Amilcar',     018, '2017-10-05  12:24:46', 'faaaat',    018, 008, 0.5),
('Teco',        082, '2017-01-03  10:24:26', 'hair loss', 043, 008, 10 ),
('Ze',          004, '2017-06-15  10:10:10', 'nice',      004, 003, 73 ),
('Michu',       007, '2017-06-05  10:10:10', 'bald',      008, 003, 7  ),
('Cacu',        006, '2017-06-05  11:11:11', 'thin',      004, 003, 40 ),
('Bubu',        018, '2017-06-05  09:09:10', 'fat',       008, 006, 25 );

/*participation*/
INSERT INTO _participation VALUES 
('Chibanga',    006, '2017-10-10  14:45:08',  005),
('Gato',        006, '2017-01-01  12:10:00',  005),
('Totti',       004, '2017-11-03  22:34:56',  005),
('Amilcar',     018, '2017-10-05  12:24:46',  043),
('Diego',       008, '2017-08-23  12:55:08',  005);

/*Diagnosis_code*/
INSERT INTO _diagnosis_code VALUES 
('code1','ferida'),
('code2','corte'),
('code3','pneumonia'),
('code5','kidney failure'),
('code6','tosse'),
('code7','obstipação'),
('code8','gripe');

/*Consult_diagnosis*/
INSERT INTO _consult_diagnosis VALUES 
('code1', 'Diego', 008, '2017-08-23  12:55:08'),
('code2', 'Diego', 008, '2017-08-23  12:55:08'),
('code1', 'Totti', 004, '2017-11-03  22:34:56'),
('code3', 'Totti', 004, '2017-11-03  22:34:56'),
('code7', 'Teco',  082, '2017-01-03  10:24:26'),
('code3', 'Ze',    004, '2017-06-15  10:10:10'),
('code3', 'Michu', 007, '2017-06-05  10:10:10'),
('code2', 'Cacu',  006, '2017-06-05  11:11:11'),
('code3', 'Bubu',  018, '2017-06-05  09:09:10'),
('code5','Amilcar',018, '2017-10-05  12:24:46');
/*Medication*/
INSERT INTO _medication VALUES
('Bruffen', 'Lab1', '500mg'),
('Paracetamol', 'LabCORP', '100mg'),
('Penicilina', 'LabIndustries', '10mg'),
('AntiEstupidez', 'LabEducaçao', '75mg');

/*Prescription*/
INSERT INTO _prescription (code, name, VAT_owner, date_timestamp, name_med, lab, dosage) VALUES 
('code3', 'Totti', 004, '2017-11-03  22:34:56', 'AntiEstupidez',    'LabEducaçao',  '75mg'),
('code1', 'Totti', 004, '2017-11-03  22:34:56', 'Bruffen',          'Lab1',         '500mg'),
('code1', 'Diego', 008, '2017-08-23  12:55:08', 'Paracetamol',      'LabCORP',      '100mg'),
('code2', 'Diego', 008, '2017-08-23  12:55:08', 'Paracetamol',      'LabCORP',      '100mg'),
('code2', 'Diego', 008, '2017-08-23  12:55:08', 'Penicilina',       'LabIndustries','10mg'),
('code1', 'Totti', 004, '2017-11-03  22:34:56', 'Paracetamol',      'LabCORP',      '100mg'),
('code1', 'Totti', 004, '2017-11-03  22:34:56', 'Penicilina',       'LabIndustries','10mg'),
('code7', 'Teco',  082, '2017-01-03  10:24:26', 'Penicilina',       'LabIndustries','10mg');

INSERT INTO _procedure (name,VAT_owner,date_timestamp,num) VALUES
('Teco',        082, '2017-01-03  10:24:26','teste sangue'),
('Amilcar',     018, '2017-10-05  12:24:46','teste sangue'),
('Amilcar',     018, '2017-10-05  12:24:46','teste urina'),
('Michu',       007, '2017-06-05  10:10:10','teste sangue');

INSERT INTO _test_procedure (name,VAT_owner,date_timestamp,num,type) VALUES
('Teco',        082, '2017-01-03  10:24:26','teste sangue','blood'),
('Michu',       007, '2017-06-05  10:10:10','teste sangue','blood'),
('Amilcar',     018, '2017-10-05  12:24:46','teste urina' , 'urine'),
('Amilcar',     018, '2017-10-05  12:24:46','teste sangue', 'blood');


INSERT INTO _performed (name,VAT_owner,date_timestamp,num,VAT_assistant) VALUES
('Teco',        082, '2017-01-03  10:24:26','teste sangue',043),
('Michu',       007, '2017-06-05  10:10:10','teste sangue',005);
/*indicator*/
INSERT INTO _indicator(name, reference_value, units) VALUES 
('White Blood Cells','90' , 'milligrams'),
('Neutrophils',      '120', 'milliliters'),
('Lymphocytes',      '101', 'milligrams'),
('Monocytes',        '130', 'milligrams'),
('indicadorE',       '125', 'milligrams'),
('creatine level',   '0.8', 'milligrams');

INSERT INTO _produced_indicator(name,VAT_owner,date_timestamp,num,indicator_name,value) VALUES
('Teco',        082, '2017-01-03  10:24:26','teste sangue', 'White Blood Cells', 87),
('Teco',        082, '2017-01-03  10:24:26','teste sangue', 'Neutrophils',       130),
('Teco',        082, '2017-01-03  10:24:26','teste sangue', 'creatine level',    0.8),
('Amilcar',     018, '2017-10-05  12:24:46','teste urina' , 'Monocytes',         110),
('Amilcar',     018, '2017-10-05  12:24:46','teste sangue', 'indicadorE',        187),
('Amilcar',     018, '2017-10-05  12:24:46','teste sangue', 'creatine level',    1.3),
('Michu',       007, '2017-06-05  10:10:10','teste sangue', 'creatine level',    1.2);
