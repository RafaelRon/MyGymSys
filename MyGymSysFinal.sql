create database MyGymDB
go
use MyGymDB
go

create table Workers
(
WorkerID int primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
Phone varchar(11) unique not null,
Email varchar (40) unique check (Email like '%@%.%'),
Address varchar(50),
City varchar(50),
BirthDate date not null,
HireDate date not null,
Job varchar(90) not null,
);
go



create table TrainingActivities
(
TrainCode int primary key ,
TrainType varchar(20) ,
MorningStart datetime not null,
MorningEnd datetime not null,
EveningStart datetime not null,
EveningEnd datetime not null,
);
go



create table Trainers
(
TrainerNum int primary key Identity(101,4),
FirstName varchar(20) not null,
LastName varchar(20) not null,
Phone varchar(11) unique not null,
Email varchar (40) unique check (Email like '%@%.%'),
Address varchar(50),
City varchar(50),
BirthDate date not null,
HireDate date not null,
TrainCode int foreign key references TrainingActivities(TrainCode),
);
go


create table PriceList
(
SubID int primary key identity(1000,100),
SubType varchar (50) not null,
Cost money not null,
ExitFee varchar (1) check(ExitFee in('Y','N')),
SumExitFee money default 0,

);
go


create table Subscribers
(
CustID int primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
Phone varchar(11) unique not null,
Gender varchar(1) check(gender in('F','M')),
Email varchar(50) constraint chk_mail_@ check(email like '%@%.%' ),
Address varchar(50),
City varchar(50),
BirthDate Date,
JoinDate Date,
SubID int  references PriceList(SubID),
);
go


INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('47448813','Cameran','Laith','0552541243','Carmen@gmail.com','208-719 Lacus. Ave','Peresvet','1960-10-11','2018-11-12','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('27804113','Casey','Raja','0512163193','Casey@gmail.com','Ap #101-3011 Rhoncus Rd.','Muno','1979-05-06','2019-09-21','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('44181147','Dean','Maris','0537716244','Dean@gmail.com','Ap #556-4108 Non Avenue','Putaendo','1958-04-29','2018-09-05','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('15383038','Ralph','Inga','0561987352','Ralph@gmail.com','805-9921 Nibh. Avenue','Baddeck','1992-08-14','2018-07-24','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('25207033','Halee','Kyra','0595937839','Halee@gmail.com','P.O. Box 599, 7009 Integer St.','Kamyzyak','1967-08-17','2019-12-29','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('24866922','Signe','Jack','0553334649','Signe@gmail.com','Ap #612-7687 Massa. Road','Whitehaven','1997-07-22','2016-03-13','Secretary');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('23162576','Mohammad','Hoyt','0596955377','ut.erat@gmail.com','423-5081 Ornare, St.','Neumünster','1994-08-09','2016-05-30','IT');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('12480461','Eaton','Isabelle','0523672324','porttitor@gmail.com','Ap #523-2059 Lacus. Road','Tropea','2002-12-05','2020-03-20','Maintenance service');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('45961941','Rogan','Dustin','0562743751','Rogan@gmail.com','1133 Fringilla St.','Bridge of Allan','1971-07-09','2020-12-28','Guard');
INSERT INTO Workers([WorkerID],[FirstName],[LastName],[Phone],[Email],[Address],[City],[BirthDate],[HireDate],[Job]) VALUES('18677665','Moses','Victor','0573299598','Moses@gmail.com','P.O. Box 353, 9832 Vehicula Avenue','San Felipe','1984-02-19','2019-10-21','Marketing');



insert into TrainingActivities values('200','Spinning','2021-05-02 10:00:00','2021-05-02 11:30:00','2021-05-04 17:00:00','2021-05-04 18:30:00')
insert into TrainingActivities values('201','Body Shape','2021-05-03 10:00:00','2021-05-03 11:30:00','2021-05-05 18:00:00','2021-05-05 19:30:00')
insert into TrainingActivities values('202','Yoga','2021-05-04 08:00:00','2021-05-04 09:00:00','2021-05-06 20:00:00','2021-05-06 21:00:00')
insert into TrainingActivities values('203','Zoomba','2021-05-05 13:00:00','2021-05-05 14:30:00','2021-05-03 19:00:00','2021-05-03 20:30:00')
insert into TrainingActivities values('204','Kickboxing','2021-05-02 12:00:00','2021-05-02 13:30:00','2021-05-04 20:00:00','2021-05-04 21:30:00')
insert into TrainingActivities values('205','Pilates','2021-05-05 09:00:00','2021-05-05 10:30:00','2021-05-02 18:00:00','2021-05-02 19:30:00')
insert into TrainingActivities values('206','Personal Train','2021-05-05 07:00:00','2021-05-05 08:30:00','2021-05-05 21:00:00','2021-05-05 22:30:00')
insert into TrainingActivities values('207','Swim','2021-05-07 12:00:00','2021-05-07 13:00:00','2021-05-10 20:30:00','2021-05-10 21:30:00')
insert into TrainingActivities values('208','Trx','2021-05-07 09:00:00','2021-05-07 10:30:00','2021-05-03 17:00:00','2021-05-03 18:30:00')
insert into TrainingActivities values('209','Nutrition','2021-05-11 08:00:00','2021-05-11 09:00:00','2021-05-12 16:00:00','2021-05-12 17:00:00')



insert into Trainers values('Ronny','Shmuel','0549477717','ronny@gmail.com','hashalom 5','lod','1980-01-10','2018-11-12','200')
insert into Trainers values('Aliza','Ronen','0549477718','aliza@gmail.com','histadrut 30','ramla','1997-12-01','2020-05-12','201')
insert into Trainers values('Haim','Ron','0549477719','haim@gmail.com','shemesh 4','yehud','1990-06-19','2019-10-12','202')
insert into Trainers values('Slava','Shimi','0549477700','slava@gmail.com','zait 70','rehovot','1977-03-04','2019-04-01','203')
insert into Trainers values('Yarden','Danni','0549477203','yarden@gmail.com','sharonim 29','tzfat','1993-05-05','2020-07-07','204')
insert into Trainers values('Ilana','Matok','0549477303','ilana@gmail.com','hof 40','tel aviv','1965-05-03','2017-11-12','205')
insert into Trainers values('Mika','Eyal','0549477403','mika@gmail.com','yam 50','tel aviv','1977-04-14','2016-10-12','206')
insert into Trainers values('Shimon','Elli','0549477503','shimon@gmail.com','tapuah 53','shoham','1978-09-16','2016-03-12','207')
insert into Trainers values('Shlomo','Efrat','0549477603','shlomo@gmail.com','limon 506','bat yam','1980-07-17','2015-02-12','208')
insert into Trainers values('Etti','Naim','0549477703','etti@gmail.com','vered 15','holon','1983-06-19','2016-11-12','209')




insert into PriceList values('QuartSub','300','N','')
insert into PriceList values('QuartSub+TrainingActivities','450','Y','150')
insert into PriceList values('HalfYearSub','400','N','')
insert into PriceList values('HalfYearSub+TrainingActivities','550','Y','200')
insert into PriceList values('YearSub','650','N','')
insert into PriceList values('YearSub+TrainingActivities','750','Y','250')
insert into PriceList values('QuartSub_OnlyPersinalTrain','800','N','')
insert into PriceList values('HalfYearSub_OnlyPersinalTrain','900','Y','300')
insert into PriceList values('Year_OnlyPersonalTrain','950','N','')
insert into PriceList values('UnlimitedSub','1000','Y','350')



INSERT INTO Subscribers VALUES('47448890','Nir','Lavi','0552541550','M','nir@gmail.com','einshtein 28','tel aviv','1960-08-11','2018-10-12','1000');
INSERT INTO Subscribers VALUES('27804191','Rafael','Yotam','0512163551','M','rafael@gmail.com','harishonim 20','yavne','1979-07-06','2019-08-21','1100');
INSERT INTO Subscribers VALUES('44181192','Ilana','Ezra','0537716552','F','ilana@gmail.com','dugit 15','ramla','1958-05-29','2018-07-05','1200');
INSERT INTO Subscribers VALUES('15383093','Rona','Rozen','0561987553','F','rona@gmail.com','yohanan 2','eilat','1992-04-14','2018-06-24','1300');
INSERT INTO Subscribers VALUES('25207077','Yoni','Menachem','0595937553','M','yoni@gmail.com','hahashmonaim 100','rishon lezion','1967-05-17','2019-12-29','1000');
INSERT INTO Subscribers VALUES('24866850','Shlomo','Shalom','0553334554','M','shlomo@gmail.com','rosh 78','raanana','1997-02-22','2016-04-13','1400');
INSERT INTO Subscribers VALUES('23162851','Yakov','Sabag','0596955555','M','yakov@gmail.com','ben tzvi 44','tzfat','1994-10-09','2016-03-30','1500');
INSERT INTO Subscribers VALUES('12480852','May','Hayut','0523672556','F','may@gmail.com','hapardes 3','beer yaakov','2002-10-05','2020-02-20','1900');
INSERT INTO Subscribers VALUES('45961333','Niv','Hayun','0562743557','M','niv@gmail.com','shenkin 1','jerusalem','1971-10-09','2020-01-28','1900');
INSERT INTO Subscribers VALUES('18677212','Sasha','Levi','0573299558','F','sasha@gmail.com','shehet hayamim 30','tel aviv','1984-03-19','2019-12-21','1700');


