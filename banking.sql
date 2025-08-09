create database banking;

USE banking;
show tables;

select * from customer;

SELECT 
  `Bank Deposits` + `Checking Accounts` + `Saving Accounts` + `Foreign Currency Account` + `Business Lending` AS TotalAssets
FROM customer
LIMIT 1000;

SELECT 
  `GenderId`,
  AVG(`Bank Deposits` + `Checking Accounts` + `Saving Accounts` + `Foreign Currency Account` + `Business Lending`) AS AvgBalance
FROM customer
GROUP BY `GenderId`;

SELECT 
  `Risk Weighting`,
  SUM(`Properties Owned`) AS TotalProperties
FROM customer
GROUP BY `Risk Weighting`;

SELECT `Client ID`, `Name`, `Bank Deposits`
FROM customer
ORDER BY `Bank Deposits` DESC
LIMIT 3;


SELECT 
  `BRId`,
  SUM(`Bank Deposits`) AS TotalDeposits,
  SUM(`Checking Accounts`) AS TotalChecking,
  SUM(`Saving Accounts`) AS TotalSaving
FROM customer
GROUP BY `BRId`;


SELECT `IAId`, COUNT(*) AS NumCustomers
FROM customer
GROUP BY `IAId`;


SELECT 
  `Risk Weighting`,
  AVG(`Business Lending`) AS AvgBusinessLending
FROM customer
GROUP BY `Risk Weighting`;

SELECT 
  AVG(`Bank Deposits`) AS AvgDeposits,
  AVG(`Checking Accounts`) AS AvgChecking,
  AVG(`Saving Accounts`) AS AvgSaving,
  AVG(`Foreign Currency Account`) AS AvgForeignCurrency,
  AVG(`Business Lending`) AS AvgBusinessLending
FROM customer;


SELECT 
  CASE 
    WHEN `Age` < 25 THEN 'Below 25'
    WHEN `Age` BETWEEN 25 AND 40 THEN '25-40'
    WHEN `Age` BETWEEN 41 AND 60 THEN '41-60'
    ELSE 'Above 60'
  END AS AgeGroup,
  AVG(`Amount of Credit Cards`) AS AvgCreditCards
FROM customer
GROUP BY AgeGroup;



SHOW COLUMNS FROM customer;
