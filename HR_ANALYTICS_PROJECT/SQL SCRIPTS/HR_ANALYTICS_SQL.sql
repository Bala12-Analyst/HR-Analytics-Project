create database hr_analytics;
use hr_analytics;

CREATE TABLE employees (
    Age INT,
    Attrition VARCHAR(5),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
    AgeGroup VARCHAR(20),
    SalaryBand VARCHAR(20),
    AttritionNum INT
);
desc employees;
select * from employees;

SELECT COUNT(*) AS TotalEmployees
FROM employees;

SELECT COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition = 'Yes';

SELECT 
ROUND(
    (COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0)
/ COUNT(*),
2) AS AttritionRate
FROM employees;

SELECT 
ROUND(AVG(Age),2) AS AverageAge
FROM employees;

SELECT 
ROUND(AVG(MonthlyIncome),2) AS AverageSalary
FROM employees;

SELECT 
Department,
COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;

SELECT 
Gender,
COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition='Yes'
GROUP BY Gender;

SELECT 
JobRole,
COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY AttritionCount DESC;

SELECT 
AgeGroup,
COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition='Yes'
GROUP BY AgeGroup;

SELECT 
SalaryBand,
COUNT(*) AS AttritionCount
FROM employees
WHERE Attrition='Yes'
GROUP BY SalaryBand;

SELECT 
OverTime,
COUNT(*) AS EmployeeCount
FROM employees
GROUP BY OverTime;

SELECT 
YearsSinceLastPromotion,
COUNT(*) AS EmployeeCount
FROM employees
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

SELECT 
Department,
ROUND(AVG(MonthlyIncome),2) AS AverageSalary
FROM employees
GROUP BY Department
ORDER BY AverageSalary DESC;

SELECT 
JobRole,
ROUND(AVG(MonthlyIncome),2) AS AverageSalary
FROM employees
GROUP BY JobRole
ORDER BY AverageSalary DESC;

SELECT 
MaritalStatus,
COUNT(*) AS EmployeeCount
FROM employees
GROUP BY MaritalStatus;

SELECT 
PerformanceRating,
COUNT(*) AS EmployeeCount
FROM employees
GROUP BY PerformanceRating;





