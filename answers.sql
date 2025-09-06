QUESTION 1

USE salesdb;
SELECT 
    e.firstName,       -- Employee's first name
    e.lastName,        -- Employee's last name
    e.email,           -- Employee's email
    o.officeCode       -- Office code from the offices table
FROM 
    employees e        -- alias 'e' for employees
INNER JOIN 
    offices o          -- alias 'o' for offices
    ON e.officeCode = o.officeCode;  -- correct join condition


QUESTION 2

USE salesdb;
-- Select specific columns we want to see from the products table
SELECT 
    p.productName,    -- Product name from the products table
    p.productVendor,  -- Vendor (supplier) of the product
    pl.productLine    -- Product line from the productlines table
FROM 
    products p        -- Alias 'p' for the products table
LEFT JOIN 
    productlines pl   -- Alias 'pl' for the productlines table
    ON p.productLine = pl.productLine;  -- Join condition using productLine

QUESTION 3

USE salesdb;
-- Select the columns we need from the orders table
SELECT 
    o.orderDate,        -- Date the order was placed
    o.shippedDate,      -- Date the order was shipped
    o.status,           -- Current status of the order
    o.customerNumber    -- Customer number (to link back to customers)
FROM 
    customers c         -- Alias 'c' for customers table
RIGHT JOIN 
    orders o            -- Alias 'o' for orders table
    ON c.customerNumber = o.customerNumber  -- Join condition between customers and orders
LIMIT 10;               -- Retrieve only the first 10 rows
