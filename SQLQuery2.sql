Select FirstName, LastName, BirthDate from Employees where 1961 > Year(BirthDate) AND YEAR(BirthDate) >= 1950
Select FirstName, LastName, BirthDate from Employees where Year(BirthDate) between 1950 and 1960
Select * from Employees
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country from Employees where Country = 'UK' AND (TitleOfCourtesy = 'Ms.' OR TitleOfCourtesy = 'Mrs.')
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country from Employees where TitleOfCourtesy = 'Mr.' OR (2020 - YEAR(BirthDate))>=60
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country from Employees order by BirthDate 
--artan sırada sıralama yapar
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country, HireDate from Employees order by HireDate desc
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country, HireDate from Employees order by FirstName, LastName desc
Select FirstName, LastName, BirthDate, Title, TitleOfCourtesy, Country, BirthDate from Employees order by 5, 7 --5. ve 7. kolonlar
Select FirstName, LastName, YEAR(BirthDate) as BirthMonth from Employees
where Year(BirthDate) between 1952 and 1960 order by 3
Select * from Employees
Select FirstName, LastName, BirthDate from Employees where FirstName between 'Janet' and 'Robert' -- order By FirstName
Select FirstName, LastName,TitleOfCourtesy from Employees where TitleOfCourtesy = 'Mr.' or TitleOfCourtesy = 'Dr.' order by TitleOfCourtesy
Select FirstName, LastName, BirthDate from Employees where YEAR(BirthDate) in (1950,1955,1960)
--Top Kullanımı
select top 3 FirstName, LastName, Title from Employees
Select top 25 percent FirstName, LastName, BirthDate from Employees order by BirthDate
--LIKE KULLANIMI:
--Adı Michael olan personellerin listelenmesi
--1.Yol
Select FirstName, LastName from Employees where FirstName='Michael'
--2.Yol
Select FirstName, LastName from Employees where FirstName like 'Michael'
--Basharfi A olan isimler:
Select FirstName, LastName from Employees where FirstName like 'A%'
Select FirstName, LastName from Employees where LastName like '%N'
Select FirstName, LastName from Employees where FirstName like 'A%' Or FirstName like 'L%'
Select FirstName, LastName from Employees where FirstName like '[AL]%' 
Select FirstName, LastName from Employees where FirstName like '[J-R]%'
Select FirstName, LastName from Employees where FirstName like '%A_E%'
--Adının ilk harfi LA LN AA veya AN olanlar
Select FirstName, LastName from Employees where FirstName like ('LA%' 'LN%')
-- select charindex('@', 'ade@gmail.com') as indexno arama işlemi yapar
-- select left('Bilge Adam',5) as 'Soldan Sağa Karakter al'
select left('Bilge Adam',5) as 'Sağdan Sola Karakter al'
select len('bilge adam') as 'Toplam uzunluk teslim eder'
select lower('Bilge Adam') as 'LOWER', UPPER('bilge Adam') 'UPPER'

select LEN('    Bilge adam')
Select LTRIM('    bilge Adam')
Select LEN(LTRIM('          bilge adam'))
Select REPLACE('bilge adam', 'adam', 'hatun')
select lower(Replace('Merhaba, şemsiye, çanta', ('ş','ç'), ('s','c')))

select 'bilge' + Space(50)+ 'adam'