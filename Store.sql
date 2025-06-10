select*from high.german_store;

-- count total numbers of rows 
select count(*) num_row
from high.german_store;

-- count total sold quantity of JUMBO BAG OWLS
SELECT Description,sum(Quantity)
FROM high.german_store  -- Replace YourTableName with the actual name of your table
WHERE Description = 'JUMBO BAG WOODLAND ANIMALS';

-- print all column names  
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'german_store';  -- Replace 'YourTableName' with the actual table name;

--  4 highest sold product
select Description,sum(Quantity) as TotalQuantitySold
From high.german_store 
GROUP BY  Description
Order by TotalQuantitysold Desc
Limit 4;

-- 3 LOWEST SOLD PRODUCT
SELECT Description,sum(Quantity) as TotalQuantitySold
From high.german_store 
group by Description
order by TotalQuantitysold Asc
limit 3 ;

-- sold product with total amount
select Description,sum(UnitPrice) as total_amount
From  high.german_store
group by Description
order by  total_amount 
desc;