use Northwind
--Tek satırlık yorum satırıdır
/*
Çoklu yorum satırı...
*/
--Bilgilendirme ekranı için ctrl+r açar ve kapatır
-- Sorgu çalıştırmak için F5 veya execute butonu kullan

insert into Categories (Description) values ('Tatlı')
select * from Products
insert into Customers (CustomerID, CompanyName) values ('BLG','Bilge Adam')
select * into Urunler from Products
select * from Urunler
update Urunler set UnitPrice = UnitPrice * 1.05
select * into Calısanlar from Employees
select * from Calısanlar
delete from Calısanlar where TitleOfCourtesy = 'Ms.' OR TitleOfCourtesy = 'Mrs.' 
Select EmployeeID, FirstName, LastName, BirthDate from Employees where YEAR(BirthDate) = 1960

