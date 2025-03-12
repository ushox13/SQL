--PUZZLE 1
Create table Input
(
	col1 varchar(10),
	col2 varchar (20)
)
insert Into Input values
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm')

Create table Output
(
	col1 varchar(10),
	col2 varchar (20)
)
insert Into Output values
('a', 'b'),
('c', 'd'),
('m', 'n')

select * from Input
select * from Output

select Distinct col1, col2 from Input 
select Distinct col1, col2 from Input where col1>col2

select min(col1) as col1, Max(col2) as col2 from Input group by
case when col1 < col2 then col1 else col2 end,
case when col1 < col2 then col2 else col1 end

--PUZZLE 2

create table GroupbyMultipleColumns
(
ID int,
Typ Varchar(1),
Value1 Varchar(1),
Value2 Varchar(1),
Value3 Varchar(1)
)
Insert into GroupbyMultipleColumns (ID, Typ, Value1, Value2, Value3) Values 
(1, 'I', 'a', 'b', ''),
(2,'O','a','d','f'),
(3,'I','d','b',''),
(4,'O','g','I',''),
(5, 'I', 'z','g','a'),
(6, 'I', 'z', 'g', 'a')

select Typ, sum (case when Value1 = 'a' then 1 else 0 end) + sum (case when Value2 = 'a' then 1 else 0 end) + sum (case when Value3 = 'a' then 1 else 0 end) as 'Counts'
from GroupbyMultipleColumns
group by Typ

--PUZZLE 3 
select * from [dbo].[TestMultipleZero] where A!= '0' OR B!= '0' OR C!= '0' OR D!= '0'

--PUZZLE 4
select EmpName, COUNT(*) AS Occurrences from  TESTDuplicateCount
group by EmpName
having COUNT(*) > 1;

--PUZZLE 5
select Name, 
	count (case Fruit when 'Mango' then 1 else null end) as MangoCount,
	count (case Fruit when 'Apple' then 1 else NULL end) as APPLECount,
	count (case Fruit when 'Lichi' then 1 else null end) as LICHICount,
	count (case Fruit when 'Orange' then 1 else null end) as ORANGECount
from FruitCount
group by Name


