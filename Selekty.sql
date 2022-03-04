/*All politicians in the seym*/
SELECT NAME_ AS PoliticianName,Surname AS PoliticianSurname
	FROM Politician
	WHERE EXISTS
		(SELECT *
			FROM Politician_cadency
			WHERE Politician.ID_Politician=Politician_cadency.ID_Politician)
	ORDER BY Name_;

/*How many times given marshall was proceeding session 
when the number of politicians were more then 200.*/
SELECT  Name_, COUNT(Name_) AS "Namenumb"
	FROM Session_ JOIN Marshal_cadency
		ON Marshal_cadency.Marshal_ID=Session_.Marshal_ID
	WHERE Numb_of_politicians>200
	GROUP BY Name_
	ORDER BY Name_ DESC;

/*Number of disapproves*/
SELECT Type_of_vote, COUNT(Type_of_vote) AS "Numb"
	FROM Vote JOIN Act
		ON Act.Act_ID=Vote.Act_ID
	WHERE Type_of_vote = 'disapprove'
	GROUP BY Type_of_vote

/*Guards who worked when there was more than 400 politicians */	
SELECT G.Name_,S.Date_
	FROM Guard G,Session_ S
	WHERE EXISTS
		(SELECT *
			FROM Protection
			WHERE Protection.Session_= S.Session_ID AND Protection.Gid=G.Guard_ID AND S.Numb_of_politicians>400)
			
			
				
/*Politycy co byli jak by³o ma³o miejsc*/
SELECT P.Cadency_ID,R.Adress
	FROM Politician_cadency P, Room R
	WHERE EXISTS
		(SELECT *
			FROM Attendance A
			WHERE P.Since='2012-05-31' AND A.Adress=R.Adress AND A.Cadency_ID=P.Cadency_ID)
	

/*Politycy co g³osowali za Architukturow¹ ustaw¹*/
CREATE VIEW	 Politicianjoining
	AS SELECT Politician.Surname,Attendance.Date_,Attendance.Attendance_ID
	FROM Politician,Attendance
	WHERE EXISTS
		(SELECT *
			FROM Politician_cadency
			WHERE Politician_cadency.ID_Politician=Politician.ID_Politician AND Politician_cadency.Cadency_ID=Attendance.Cadency_ID);

DROP VIEW Politicianjoining
SELECT *
	FROM Politicianjoining

SELECT Politicianjoining.Surname, Act.Domain
	FROM Politicianjoining, Act
	WHERE EXISTS
		(SELECT * 
			FROM Vote
			WHERE Politicianjoining.Attendance_ID=Vote.Attendace_ID AND Vote.Act_ID=Act.Act_ID AND Act.Domain='Architecture' AND Vote.Type_of_vote='approve')

/*Marsha³kowie których partia jest du¿a i obradowali przy du¿ej iloœci polityków*/
CREATE VIEW Marshpartjoin
	AS SELECT Marshal_cadency.Name_,Marshal_cadency.Marshal_ID
	FROM Party,Marshal_cadency
	WHERE Party.Name_party=Marshal_cadency.Name_party AND Party.Numb_of_members<5000;

DROP VIEW Marshpartjoin

SELECT *
	FROM Marshpartjoin

SELECT Marshpartjoin.Name_,Act.Domain
	FROM Marshpartjoin,Act
	WHERE EXISTS
		(SELECT *
			FROM Session_
			WHERE Marshpartjoin.Marshal_ID=Session_.Marshal_ID AND Session_.Session_ID=Act.Session_ID AND Session_.Numb_of_politicians>300)

/*Liczba marsha³ków z partii którzy zaczeli prace '2012-05-31'*/
SELECT Party.Name_party, COUNT(Party.Name_party)
	FROM Party JOIN Marshal_cadency ON Marshal_cadency.Name_party = Party.Name_party
	WHERE Marshal_cadency.Since='2012-05-31'
	GROUP BY Party.Name_party
