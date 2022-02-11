SELECT *
FROM Sales.Customer;

SELECT *
FROM Sales.Store
ORDER BY [Name];

SELECT TOP 10 *
FROM HumanResources.Employee
WHERE BirthDate > '1989-09-28';

SELECT NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE RIGHT(LoginID, 1) = '0'
ORDER BY JobTitle;

SELECT *
FROM Person.Person
WHERE YEAR(ModifiedDate) = '2008' AND MiddleName IS NOT NULL AND Title IS NULL;

SELECT DISTINCT [Name]
FROM HumanResources.Department
WHERE DepartmentID IN  (SELECT DISTINCT DepartmentID
					   FROM HumanResources.EmployeeDepartmentHistory
					   WHERE EndDate IS NULL OR EndDate > GETDATE());

SELECT *
FROM (SELECT TerritoryID, SUM(CommissionPct) as CommissionPctSum
	 FROM Sales.SalesPerson
	 GROUP BY TerritoryID) AS CommissionPctSumTable
WHERE CommissionPctSum > 0;

SELECT *
FROM HumanResources.Employee
WHERE VacationHours = (SELECT Max(VacationHours)
					  FROM HumanResources.Employee);

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Sales Representative' OR JobTitle = 'Network Administrator' OR JobTitle = 'Network Manager';