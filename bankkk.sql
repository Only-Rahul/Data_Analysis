create database bank;
use bank;
show tables;
select * from banking;
select Nationality,
count(Name) as cust_count
from banking
group by Nationality
order by cust_count desc;
SELECT `Name`,`Age`,`Location ID`,`Estimated Income` 
FROM banking 
WHERE Age > 30;
SELECT `Loyalty Classification`, COUNT(*) 
FROM Banking 
GROUP BY `Loyalty Classification`;
SELECT Name, `Occupation`, `Estimated Income` 
FROM Banking 
WHERE `Fee Structure` = 'High';
SELECT `Occupation`, AVG(`Estimated Income`) AS `Average Income` 
FROM Banking 
GROUP BY `Occupation`;
SELECT Name, `Estimated Income`, `Superannuation Savings` 
FROM Banking 
WHERE `Superannuation Savings` > 50000;
SELECT `Name`, `Nationality`, `Estimated Income` 
FROM Banking 
WHERE `Nationality` = 'American';
SELECT `Banking Contact`, COUNT(*) AS Client_Count 
FROM Banking 
GROUP BY `Banking Contact`;
SELECT `Name`,`Age`, `Estimated Income` 
FROM Banking 
WHERE `Loyalty Classification` = 'Silver';
SELECT `Age`, COUNT(*) AS Total_Clients 
FROM Banking 
GROUP BY `Age` 
ORDER BY `Age`;
SELECT `Name`, `Occupation`, `Estimated Income` 
FROM Banking 
WHERE `Loyalty Classification` = 'Platinum' 
AND `Estimated Income` > 80000;
SELECT `Name`, `Estimated Income`, `Superannuation Savings` 
FROM Banking 
ORDER BY `Superannuation Savings` DESC
LIMIT 5;
SELECT `Amount of Credit Cards`, COUNT(*) AS Total_Clients 
FROM Banking 
GROUP BY `Amount of Credit Cards` 
ORDER BY Total_Clients DESC;
SELECT `Name`, `Age`, `Joined Bank` 
FROM Banking 
WHERE `Joined Bank` <= DATE_SUB(CURDATE(), INTERVAL 5 YEAR);
