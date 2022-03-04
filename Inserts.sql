INSERT INTO Room VALUES ('Kopernika 1','Warsaw',470),
						('Kopernika 10','Warsaw',470),
						('Kowalskiego 5','Warsaw',470),
						('Landowskiego 8','Warsaw',470),
						('Dreszera 67','Warsaw',450),
						('Malanowskiego 45','Poznan',470),
						('Szoperinka 123','Warsaw',470),
						('Misika 76','Warsaw',470),
						('Narawskiego 16','Warsaw',440),
						('Pod≥udzkiego 1','Warsaw',470);

INSERT INTO Politician VALUES ('P1','S≥awomir','Malanowski'),
							  ('P2','Maciej','Lok'),
							  ('P3','Aleksander','Silikowski'),
							  ('P4','Jan','Lewandowski'),
							  ('P5','Jacek','Homerski'),
                              ('P6','Janusz','Banananowicz'),
							  ('P7','Marian','Szmuder'),
							  ('P8','Robert','Piernikowski'),
							  ('P9','Ryszard','Lepowicz'),
                              ('P10','Konrad','Masor'),
                              ('P11','Krzysztof','Morsowski'),
                              ('P12','Jerzy','Kanapowski');

INSERT INTO Party VALUES ('PiwoiWÛda',324,'Maciej Winnik'),
						 ('Polska2025',7656,'Mariusz Plenikowski'),
                         ('Nitroijazda',67,'Jerzy Kanapowski'),
                         ('Gospodarkaikasa',7856,'Adam Piechacki'),
                         ('MasaiKasa',9756,'Robert Piernikowski'),
                         ('PolicjaiPa≥a',278,'Janusz MasoÒski'),
                         ('PolskaPrawo',4975,'Jacek Homerski'),
                         ('PolskaLewo',965,'Martyna Maj'),
                         ('Polskaårodek',1376,'Albert Nosilski'),
                         ('Nasiiwasi',4697,'Grzegorz MaryÒski');

INSERT INTO Guard VALUES ('G1','Jacek Placek','2012-07-12','2015-07-09'),
						 ('G2','Mariusz MaroÒski','2018-10-26',CURRENT_TIMESTAMP),
                         ('G3','Tymoteusz Sugalski','2019-07-12',CURRENT_TIMESTAMP),
                         ('G4','Piotr Samowski','2003-07-30','2019-07-05'),
                         ('G5','Pawe≥ Maliniewicz','2017-07-17',CURRENT_TIMESTAMP),
                         ('G6','S≥awomir Polanowski','2019-07-05',CURRENT_TIMESTAMP),
                         ('G7','Andrzej Tamowicz','2020-07-01',CURRENT_TIMESTAMP),
                         ('G8','Sylwester Ulich','2015-07-09','2019-07-05'),
                         ('G9','Wojciech Oberacz','2016-07-14','2020-07-01'),
                         ('G10','£uksz Simowski','2013-07-28','2019-07-12');



INSERT INTO Politician_cadency VALUES ('C1','2016-05-31',CURRENT_TIMESTAMP,'P1','Polska2025'),
									  ('C2','2016-05-31',CURRENT_TIMESTAMP,'P11','Nasiiwasi'),
                                      ('C3','2012-05-31','2020-05-31','P12','Nitroijazda'),
                                      ('C4','2012-05-31','2020-05-31','P6','Polskaårodek'),
                                      ('C5','2012-05-31',CURRENT_TIMESTAMP,'P10','Nitroijazda'),
                                      ('C6','2016-05-31',CURRENT_TIMESTAMP,'P4','PolskaPrawo'),
                                      ('C7','2008-05-31','2020-05-31','P9','MasaiKasa'),
                                      ('C8','2008-05-31',CURRENT_TIMESTAMP,'P3','PolskaPrawo'),
                                      ('C9','2008-05-31',CURRENT_TIMESTAMP,'P8','MasaiKasa'),
                                      ('C10','2008-05-31','2020-05-31','P7','Polskaårodek');



INSERT INTO Marshal_cadency VALUES ('M1','S≥awomir Malanowski','2016-05-31',CURRENT_TIMESTAMP,'Polska2025','C1'),
								   ('M2','Krzysztof Morsowski','2020-05-31',CURRENT_TIMESTAMP,'Nasiiwasi','C2'),
                                   ('M3','Jerzy Kanapowski','2016-05-31','2020-05-31','Nitroijazda','C3'),
                                   ('M4','Janusz Banananowicz','2016-05-31','2020-05-31','Polskaårodek','C4'),
                                   ('M5','Konrad Masor','2020-05-31',CURRENT_TIMESTAMP,'Nitroijazda','C5'),
                                   ('M6','Jan Lewandowski','2020-05-31',CURRENT_TIMESTAMP,'PolskaPrawo','C6'),
                                   ('M7','Ryszard Lepowicz','2012-05-31','2020-05-31','MasaiKasa','C7'),
                                   ('M8','Aleksander Silikowski','2012-05-31','2016-05-31','PolskaPrawo','C8'),
                                   ('M9','Robert Piernikowski','2012-05-31','2016-05-31','MasaiKasa','C9'),
                                   ('M10','Marian Szmuder','2008-05-31','2016-05-31','Polskaårodek','C10');

INSERT INTO Session_ VALUES ('S1','2020-12-12',159,'Kopernika 1','M1'),
							('S2','2020-12-10',386,'Kopernika 10','M1'),
							('S3','2020-12-03',265,'Kowalskiego 5','M1'),
							('S4','2020-11-30',445,'Landowskiego 8','M2'),
							('S5','2020-11-15',426,'Dreszera 67','M2'),
							('S6','2020-11-01',98,'Malanowskiego 45','M5'),
							('S7','2020-10-29',56,'Szoperinka 123','M5'),
							('S8','2020-10-12',276,'Misika 76','M5'),
							('S9','2020-09-18',459,'Narawskiego 16','M5'),
							('S10','2020-09-04',176,'Pod≥udzkiego 1','M6');

INSERT INTO Act VALUES ('ACT1','Architecture','2020-12-12','S1'),
					   ('ACT2','Buisness','2020-12-10','S2'),
                       ('ACT3','Taxes','2020-12-03','S3'),
                       ('ACT4','Constructions','2020-11-30','S4'),
                       ('ACT5','Banking','2020-11-15','S5'),
                       ('ACT6','Taxes','2020-11-01','S6'),
                       ('ACT7','Taxes','2020-10-29','S7'),
                       ('ACT8','Lifeguarding','2020-10-12','S8'),
                       ('ACT9','Taxes','2020-09-18','S9'),
                       ('ACT10','Army','2020-09-04','S10');

INSERT INTO Attendance VALUES ('ATT1','2020-12-12','C1','S1','Kopernika 1'),
							  ('ATT2','2020-12-12','C2','S1','Kopernika 1'),
                              ('ATT3','2020-12-12','C3','S1','Kopernika 1'),
                              ('ATT4','2020-12-12','C4','S1','Kopernika 1'),
                              ('ATT5','2020-12-12','C5','S1','Kopernika 1'),
                              ('ATT6','2020-12-12','C6','S1','Kopernika 1'),
                              ('ATT7','2020-12-12','C7','S1','Kopernika 1'),
                             ('ATT8','2020-12-10','C1','S2','Kopernika 10'),
                             ('ATT9','2020-12-10','C2','S2','Kopernika 10'),
                             ('ATT10','2020-12-10','C3','S2','Kopernika 10');

INSERT INTO Vote VALUES ('V1','approve','ATT1','ACT1'),
						('V2','disapprove','ATT2','ACT1'),
						('V3','disapprove','ATT3','ACT1'),
						('V4','disapprove','ATT4','ACT1'),
						('V5','disapprove','ATT5','ACT1'),
						('V6','approve','ATT6','ACT1'),
						('V7','disapprove','ATT7','ACT1'),
						('V8','approve','ATT8','ACT2'),
						('V9','approve','ATT9','ACT2'),
						('V10','abstain','ATT10','ACT2');

INSERT INTO Protection VALUES ('S1','G2','Mariusz MaroÒski'),
						      ('S1','G3','Tymoteusz Sugalski'),
						      ('S1','G7','Andrzej Tamowicz'),
						      ('S2','G5','Pawe≥ Maliniewicz'),
						      ('S2','G6','S≥awomir Polanowski'),
						      ('S2','G7','Andrzej Tamowicz'),
						      ('S4','G2','Mariusz MaroÒski'),
						      ('S4','G3','Tymoteusz Sugalski'),
						      ('S4','G6','S≥awomir Polanowski'),
						      ('S4','G7','Andrzej Tamowicz');


INSERT INTO Inside VALUES ('P1','Polska2025'),
						  ('P2','Polska2025'),
						  ('P3','PolskaPrawo'),
						  ('P4','PolskaPrawo'),
						  ('P5','PolskaLewo'),
						  ('P6','Polskaårodek'),
						  ('P7','Polskaårodek'),
						  ('P8','MasaiKasa'),
						  ('P9','MasaiKasa'),
						  ('P10','Nitroijazda');

