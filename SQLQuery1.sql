﻿﻿--------------------------ДОМАШКА----------------------------

----------------------ЗАДАНИЕ №1-----------------------------
--Вывести всю информацию из таблицы Sales.Customer 
-------------------------------------------------------------

SELECT * FROM Sales.Customer

GO

----------------------ЗАДАНИЕ №2-----------------------------
--Вывести всю информацию из таблицы Sales.Store отсортированную 
--по Name в алфавитном порядке
-------------------------------------------------------------

SELECT * FROM Sales.Store order by Name

GO

----------------------ЗАДАНИЕ №3-----------------------------
--Вывести из таблицы HumanResources.Employee всю информацию
--о десяти сотрудниках, которые родились позже 1989-09-28
-------------------------------------------------------------

SELECT TOP 10 * FROM HumanResources.Employee where BirthDate > '1989-09-28' 

GO

----------------------ЗАДАНИЕ №4-----------------------------
--Вывести из таблицы HumanResources.Employee сотрудников
--у которых последний символ LoginID является 0.
--Вывести только NationalIDNumber, LoginID, JobTitle.
--Данные должны быть отсортированы по JobTitle по убиванию
-------------------------------------------------------------

SELECT NationalIDNumber, LoginID, JobTitle FROM HumanResources.Employee where LoginID like '%0' order by JobTitle desc

GO

----------------------ЗАДАНИЕ №5-----------------------------
--Вывести из таблицы Person.Person всю информацию о записях, которые были 
--обновлены в 2008 году (ModifiedDate) и MiddleName содержит
--значение и Title не содержит значение 
-------------------------------------------------------------

SELECT * FROM Person.Person where ModifiedDate > '2008' and MiddleName is not null and Title is null

GO

----------------------ЗАДАНИЕ №6-----------------------------
--Вывести название отдела (HumanResources.Department.Name) БЕЗ повторений
--в которых есть сотрудники
--Использовать таблицы HumanResources.EmployeeDepartmentHistory и HumanResources.Department
-------------------------------------------------------------

--I don't understand this task

GO

----------------------ЗАДАНИЕ №7-----------------------------
--Сгрупировать данные из таблицы Sales.SalesPerson по TerritoryID
--и вывести сумму CommissionPct, если она больше 0
-------------------------------------------------------------

SELECT TerritoryID, SUM(CommissionPct) as sumCP FROM Sales.SalesPerson group by TerritoryID having SUM(CommissionPct) > 0

GO

----------------------ЗАДАНИЕ №8-----------------------------
--Вывести всю информацию о сотрудниках (HumanResources.Employee) 
--которые имеют самое большое кол-во 
--отпуска (HumanResources.Employee.VacationHours)
-------------------------------------------------------------

SELECT * FROM HumanResources.Employee where VacationHours = (select MAX(VacationHours) FROM HumanResources.Employee)

GO

----------------------ЗАДАНИЕ №9-----------------------------
--Вывести всю информацию о сотрудниках (HumanResources.Employee) 
--которые имеют позицию (HumanResources.Employee.JobTitle)
--'Sales Representative' или 'Network Administrator' или 'Network Manager'
-------------------------------------------------------------

SELECT * FROM HumanResources.Employee where JobTitle = 'Sales Representative' or JobTitle = 'Network Administrator' or JobTitle = 'Network Manager'

GO

----------------------ЗАДАНИЕ №10-----------------------------
--Вывести всю информацию о сотрудниках (HumanResources.Employee) и 
--их заказах (Purchasing.PurchaseOrderHeader). ЕСЛИ У СОТРУДНИКА НЕТ
--ЗАКАЗОВ ОН ДОЛЖЕН БЫТЬ ВЫВЕДЕН ТОЖЕ!!!
-------------------------------------------------------------

SELECT * FROM HumanResources.Employee as e full join Purchasing.PurchaseOrderHeader as p on e.BusinessEntityID = p.EmployeeID

GO