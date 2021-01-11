--Select   all   records   from   the   customers   table.

Select * from Customers

--Find   all   customers   living   in   London   or   Paris

Select * from customers where city = 'London' or city = 'paris'

--Make   a   list   of   cities   where   customers   are   coming   from.   The   list   should   not have   any   duplicates   or   nulls.

Select distinct City from customers where city is not null

--Show   a   sorted   list   of   employees’   first   names.

select FirstName from Employees order by FirstName

--Find   the   average   of   employees’   salaries 

Select AVG(salary) from Employees  --I cannot find a field that represents the employee's salaries :(


--Show   the   first   name   and   last   name   for   the   employee   with   the   highest salary.

Select FirstName, LastName from Employees where Salary = (SELECT max(Salary) FROM employees) --Similar to above, I cannot locate a field that corresponds to the salary


--Find   a   list   of   all   employees   who   have   a   BA 

select * from Employees where Notes like '%BA%'

--Find   total   for   each   order

Select OrderID, (UnitPrice * Quantity) - (Quantity * discount) as [Order Total] from [Order Details]

--Get   a   list   of   all   employees   who   got   hired   between   1/1/1994   and   today

Select * from Employees where HireDate > '01/01/1994'

--Find   how   long   employees   have   been   working   for   Northwind   (in   years!)

Select 
firstName, 
LastName,
CAST(DATEDIFF(DD, HireDate, GETDATE()) / 365.25 as INT)  as [Years Working For Company] 
from Employees

--Get   a   list   of   all   products   sorted   by   quantity   (ascending   and   descending order)

Select ProductName from Products order by QuantityPerUnit ASC

Select ProductName from Products order by QuantityPerUnit DESC

--Find   all   products   that   are   low   on   stock   (quantity   less   than   6)

Select * from Products where UnitsInStock > 6

--Find   a   list   of   all   discontinued   products.

Select * from Products where Discontinued = '1'

--Find   a   list   of   all   products   that   have   Tofu   in   them. 

Select * from Products where ProductName LIKE '%TOFU%'

--Find   the   product   that   has   the   highest   unit   price.

Select * from Products where UnitPrice = (select max(UnitPrice) from Products)

--Get   a   list   of   all   employees   who   got   hired   after   1/1/1993

Select * from Employees where HireDate > '01/01/1993'


--Get   all   employees   who   have   title   :   “Ms.”   And   “Mrs.” 

Select * from Employees where TitleOfCourtesy = 'Ms.' or TitleOfCourtesy = 'Mrs.'

--Get   all   employees   who   have   a   Home   phone   number   that   has   area   code 206

Select * from Employees where HomePhone LIKE '(206)%'