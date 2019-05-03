Drop table Students;
Drop table Classes;
Drop table Scores;
Drop table StudentClass;
Drop table StudentScores;

CREATE TABLE Students
(
StudentID int not null IDENTITY primary key clustered,
FName varchar(50)not null,
LName varchar(50)not null,
SSN int null,
adress varchar(100)not null,
City varchar (15)not null,
States varchar(15)not null,
zip int not null,
phone bigint null
); 

Create Table Classes
(
ClassID int not null IDENTITY primary key clustered,
ClassName varchar(25)not null,
ClassNumber int not null,
ClassDept varchar (25)not null
);

Create Table Scores
(
ScoreID int not null IDENTITY primary key clustered,
ScoreType varchar(50) not null,
ScoreDescription varchar(250) null,
ScoreDateAssigned date not null,
ScoreDueDate date not null,
ScoreDateSubmitted date null,
ScorePointsEarned int not null,
ScorePointsPossible int not null
);

Create table StudentClass(
StudentClassID int not NULL IDENTITY primary key clustered,
ClassID int FOREIGN KEY REFERENCES Classes (ClassID),
StudentID int FOREIGN KEY REFERENCES Students (StudentID)
);

Create table StudentScores
(
StudentScoresID int not NULL IDENTITY primary key clustered,
ScoreID int FOREIGN KEY REFERENCES Scores (ScoreID),
StudentID int FOREIGN KEY REFERENCES Students (StudentID),
ClassID int FOREIGN KEY REFERENCES Classes (ClassID)
);

insert Students
        values('Orcun', 'Cakiroglu', 1234567890, '757 Esther','Cleveland', 'OH',44143,2489069760),
		      ('Tien', 'Baldwin',2132123211, '123 Main St','Lakewood','OH',44113,2162323223),
			  ('James','Hoster', 2123445543, '6464 Lakeshore Blvd' ,'Euclid','OH', 44123,4402342333)
insert Classes
        values('Music', 1,'Art'),('Algebra', 2,'Math'),('Biolgy',3, 'Science'), ('Chemistry',4 ,'Science')
Go
insert Scores
        values( 'Homework','Homework1','4-1-2019', '4-10-2019', '4-7-2019', 85, 100),
		       ('Test', 'Test1',' 4-4-2019','4-4-2019','4-4-2010', 90,100),
			   ('Quiz','Quiz1','4-9-2019',' 4-9-2019','4-9-2019',95 , 100)
insert StudentClass
        values(1, 1),(2, 1),(3,1),(4,1),
		      (1, 2),(2, 2),
			  (1, 3),(2, 3),(3,3)

Go
insert StudentScores
      values ( 1,1,1),(2,2,2),(3,3,3)


/*Students: FName, LName, SSN(int), address, city, state, zip(int), phone# (bigint)
  Classes: Title(i.e Algebra I), number(i.e 101), department (i.e. Math)
      Scores: Type(HW, quiz, exam, lab), Description, date assigned, date due, date submitted, 
points earned(int), points possible(int).
*/
