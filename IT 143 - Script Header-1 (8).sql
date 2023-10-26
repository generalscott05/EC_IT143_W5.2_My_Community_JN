/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_My_AventureWorks and MyFc, _JNapoleon
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JNapoleon      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: Can you provide the account number list of customers with high-value purchases in the last quarter, including their contact details?
What was the revenue,
profit margin, and the top ten product name for the past fiscal year?
-- A1: We will have to ask SQL server answer.

SELECT TOP (1000) [CustomerID]
      ,[CustomerName]
      ,[ContactName]
      ,[Address]
      ,[City]
      ,[PostalCode]
      ,[Country]
  FROM [EC_IT143_DA].[dbo].[Customers]

  SELECT TOP (1000) [ProductID]
      ,[ProductName]
      ,[CategoryID]
      ,[Price]
  FROM [EC_IT143_DA].[dbo].[Products]
  


SELECT[dbo].[Customers].CustomerName
,Product.ProductName
FROM customer
INNER JOIN Customer on Products;

--Q2:I would like to recognize one employee from each department during our summer picnic.
Can you create a list of the employees in each department who put in the most hours this last year? 
I want to know which department
they are in and how many hours they worked. 
--A2:Well Lets ask SQL for The answer..

SELECT TOP (1000) [BusinessEntityID]
      ,[DepartmentID]
      FROM [AdventureWorks2017].[HumanResources].[EmployeeDepartmentHistory]

--Q3:For store sales, what is the SalesPersonID for the person who made the most sales, And What is the
highest percentage discount for 
volume sales we have offered?
--A3:Let's ask SQL Server and find out

SELECT TOP (1000) [BusinessEntityID]
      
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
 FROM [AdventureWorks2017].[Sales].[SalesPerson]

 --Q4: We are looking at discontinuing our least profitable products. 
 Can you create a list of the 20 lowest revenue products of the last three years? Include the standard cost, list cost, and
 estimated revenue. Order by product category with the least
 profitable first.
 --A4 well I will like to find out from SQL Server ..

 --Q5:What is the Rate change  on salary? (Technically Pay freequency, can answer using the data sets I have)
 --A5:We have to ask SQL Server and find out...

 SELECT TOP (1000) [BusinessEntityID]
      ,[RateChangeDate]
      ,[PayFrequency]
     FROM [AdventureWorks2017].[HumanResources].[EmployeePayHistory]

--Q6:What is the relationship between Name and the Catalogue discription using the product mode and the rowguid? (Technically feasible, can answer 
using the data sets )
--A6:Well let use SQL Server to find out

SELECT TOP (1000) [ProductModelID]
      ,[Name]
      ,[CatalogDescription]
      ,[rowguid]
      FROM [AdventureWorks2017].[Production].[ProductModel]

--Q7:What IS the first NAME OF THE THIRD customers in the table. Please give details with thier name Location and city? 
--A7:

SELECT TOP (1000) [CustomerID]
      ,[CustomerName]
      ,[Address]
      ,[City]
      ,[Country]
  FROM [EC_IT143_DA].[dbo].[Customers]
  WHERE CustomerID ='3'

--Q8:hOW IS IT POSSIBLE TO identify A CUSTONER USING POSTALCODE HIS CITY AND ADDRESS? ESPECIALLY THOSE ONES WHO HAD DEFAULT IN THE COMPANY
--A8: We can also find this out using SQL server...

SELECT TOP (1000) [CustomerID]
     ,[Address]
      ,[City]
      ,[PostalCode]
      ,[Country]
  FROM [EC_IT143_DA].[dbo].[Customers]
