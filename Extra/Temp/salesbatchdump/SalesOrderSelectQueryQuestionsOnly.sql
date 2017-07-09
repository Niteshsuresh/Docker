-- 1. To get the list of all customers

-- 2. To get the list of all orders in the database


-- 3. List of all regions that exist in the database


-- 4. List of all customers belonging to the region Bangalore


-- 5. List of all customers belonging to the region bangalore, calcutta and chennai


-- 6. List of all the orders in the range 1st Jan 2005 and 31st Dec 2005


-- 7. List of all customers whose name begins with B


-- 8. List of all invoices where PODate is not null


-- 9. List of all invoices for the year 2006, for the customer 1631


-- 10.Total number of customers in the database


-- 11. Total number of orders in the database for the customer 961


-- 12. Total order value of the database - column 'total' in orderitems table


-- 13. Total sales value in the database for the year 2005


-- 14. Total number of customers for each region in the database

-- 15. Total order count for each customer in the database


-- 16. Total order value for each itemno in the database


-- 17. Total sales value for each customer in the database for the year 2006


-- 18. Total outstanding amount for the database


-- Joins and subqueries and functions

-- 19. List of all orders with their customer information
-- (OrderId, OrderDate, CustomerId, ShortName, RegionCode)

    
-- or



-- 20. List of all invoices with their order information 
-- (InvoiceId, InvoiceDate, InvoiceTotal, OrderId, OrderDate)

-- 21. List of all invoices with their payment information
-- (InvoiceId, InvoiceDate, InvoiceTotal, PaidAmount, OutstandingAmount)


-- 22. List of all the orders of the type 'STANDARDS' and for the year 2006 
-- with their customer information
-- (OrderId, OrderDate, customerid, ShortName, RegionCode)


-- 23. Item with or without order information
-- (ItemNo, LstPrice, MarketingFactor, Rate, Qty, Total)


-- 24. Customer information with their order and invoice and 
-- payment information
-- (CustomerId, ShortName, RegionCode, OrderId, OrderDate, 
-- InvoiceId, InvoiceTotal, PaidAmount, OutstandingAmount)

       
-- or
       
-- 25. Total number of orders for each region
-- (RegionCode, OrderCount)


-- 26. List of invoices with or without payment information
-- (InvoiceId, InvoiceTotal, PaidAmount, OutstandingAmount)



-- 27. The total invoice value for each region in the database
    
-- 28. List of all orders for the customer 'PRS' using a subquery

    
-- 29. RegionCode and TotalNoOfOrders using a subquery

    
-- or


    
-- 30. Total number of orders for each customer using subquery

    

-- 31. The Itemnos for which an order exists using a subquery

-- or

-- 32. To find out the list of customers with ordervalue, salesvalue and collections value, using subquery

-- 33. Total sales value for each month in 2005
    
-- 34. List of invoices where the invoicetotal is greater than every other invoice generated for the customer 961 in march 2005)

























