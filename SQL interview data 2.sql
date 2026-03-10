CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(1,'IT'),
(2,'Sales'),
(3,'HR'),
(4,'Finance'),
(5,'Marketing');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    hire_date DATE
);

INSERT INTO Employees VALUES
(1,'Rahul',1,60000,'2021-01-10'),
(2,'Amit',2,45000,'2020-03-15'),
(3,'Neha',1,75000,'2019-07-23'),
(4,'Priya',3,50000,'2022-05-11'),
(5,'Karan',2,40000,'2021-11-01'),
(6,'Anjali',3,65000,'2018-09-17'),
(7,'Vikas',1,55000,'2023-01-20'),
(8,'Rohit',2,48000,'2022-02-05'),
(9,'Sneha',4,72000,'2019-12-12'),
(10,'Arjun',5,53000,'2021-06-19'),
(11,'Pooja',1,68000,'2020-08-25'),
(12,'Manish',2,46000,'2022-04-14'),
(13,'Simran',3,51000,'2023-03-10'),
(14,'Deepak',4,80000,'2018-07-30'),
(15,'Riya',5,47000,'2021-09-21'),
(16,'Varun',1,62000,'2022-01-18'),
(17,'Nisha',2,44000,'2020-10-11'),
(18,'Aditya',4,75000,'2019-04-07'),
(19,'Kavita',3,58000,'2021-02-16'),
(20,'Sahil',5,49000,'2023-01-02'),
(21,'Tanya',1,67000,'2019-05-23'),
(22,'Gaurav',2,42000,'2022-07-19'),
(23,'Meena',3,61000,'2020-11-13'),
(24,'Rakesh',4,71000,'2018-12-01'),
(25,'Komal',5,52000,'2021-04-17'),
(26,'Yash',1,59000,'2022-09-29'),
(27,'Divya',2,47000,'2020-06-06'),
(28,'Harsh',3,54000,'2019-10-09'),
(29,'Isha',4,69000,'2021-12-03'),
(30,'Kunal',5,50000,'2023-02-14');



CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    employee_id INT,
    project_name VARCHAR(100),
    budget INT
);

INSERT INTO Projects VALUES
(101,1,'Website Development',50000),
(102,2,'Sales Campaign Q1',30000),
(103,3,'Data Migration',45000),
(104,1,'Power BI Dashboard',20000),
(105,4,'Recruitment System',25000),
(106,6,'HR Automation',35000),
(107,7,'Security Upgrade',15000),
(108,8,'Customer Analytics',22000),
(109,9,'Financial Forecasting',40000),
(110,10,'Brand Promotion',27000),
(111,11,'Data Warehouse',55000),
(112,12,'Regional Sales Report',20000),
(113,13,'Employee Training Portal',18000),
(114,14,'Investment Analysis',60000),
(115,15,'Digital Marketing Campaign',32000),
(116,16,'API Development',26000),
(117,17,'Sales Target Analysis',15000),
(118,18,'Budget Planning',48000),
(119,19,'HR Policy Dashboard',21000),
(120,20,'Market Research',30000),
(121,21,'ML Prediction Model',65000),
(122,22,'Client Data Cleanup',12000),
(123,23,'Employee Performance Analysis',23000),
(124,24,'Tax Optimization',42000),
(125,25,'Social Media Strategy',26000),
(126,26,'ETL Pipeline',37000),
(127,27,'Quarterly Sales Dashboard',24000),
(128,28,'Recruitment Analytics',20000),
(129,29,'Risk Analysis',45000),
(130,30,'Marketing Insights',28000),
(131,3,'Cloud Migration',52000),
(132,7,'Network Optimization',31000),
(133,16,'Backend Refactoring',33000),
(134,21,'AI Chatbot',70000),
(135,11,'Data Governance',29000),
(136,9,'Financial Dashboard',36000),
(137,24,'Audit System',41000),
(138,18,'Cost Reduction Analysis',39000),
(139,5,'Customer Retention Analysis',25000),
(140,10,'SEO Optimization',21000);