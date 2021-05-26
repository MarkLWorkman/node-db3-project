-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select Productname, categoryname from Category as c
join Product as p
on categoryid = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, CompanyName, orderdate from [order] as o
join Shipper as s
on shipvia = s.id
where o.orderdate < "2012-8-9 00:00:00:000"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select orderid, productname from orderdetail as o
join product as p
on o.productid = p.id
where o.orderid = "10251"
order by productname

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id, CompanyName, LastName  from [order] as o
join customer as c
on o.customerid = c.id
join employee as e
on o.employeeid = e.id