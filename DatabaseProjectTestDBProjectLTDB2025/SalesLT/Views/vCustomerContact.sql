create   view [SalesLT].[vCustomerContact] as
		select c.FullName
		,c.CompanyName
		,c.EmailAddress
		,c.Phone
		,c.ModifiedDate
		,a.AddressLine1
		,a.AddressLine2
		,a.City
		,a.StateProvince
		,a.CountryRegion
		,a.PostalCode
		,ca.AddressType
		from [SalesLT].[Customer] c
		    left join [SalesLT].[CustomerAddress] ca
		        on c.CustomerID = ca.CustomerID
		    left join [SalesLT].[Address] a
		        on ca.AddressID = a.AddressID
		;
GO

