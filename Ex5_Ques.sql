
-- Use any existing database (or create a new database) and create the below tables 
-- and insert the records

create table client_details
(C_ID varchar(20) primary key,
Location varchar(20),
Total_Budget int,
Project_Head varchar(50)
);

insert into client_details values
('C7_DQM_01','New York',279000,'Mathew Spencer'),
('C9_DWH_05','Seattle',310000,'Clement Suarez'),
('C1_DTJ_04','Austin',365000,'Michael Martinez'),
('C5_DZI_03','Arizona',590000,'Jessica Jason'),
('C3_DGU_08','Nashville',156000,'Sergio Gomez');

create table project_details(
P_ID varchar(10) primary key,
PStart_Date date,
PEnd_Date date,
Client_ID varchar(20),
Team_size int,
foreign key (Client_ID) references client_details(C_ID)
);

insert into project_details values
('RTB_1097','2019-01-15','2023-04-30','C7_DQM_01',15),
('RTB_1082','2017-01-01','2022-05-30','C9_DWH_05',10),
('RTB_1024','2019-09-20','2023-04-30','C5_DZI_03',8),
('RTB_1056','2020-10-07','2022-11-30','C5_DZI_03',12),
('RTB_1051','2018-12-25','2025-07-30','C1_DTJ_04',6),
('RTB_1073','2020-07-07','2022-12-10','C3_DGU_08',7);


create table emp_details(
E_ID int primary key,
EName varchar(30) not null,
Gender varchar(5),
Age int,
Working_City varchar(20),
Email varchar(50),
EProfile varchar(30),
Experience float,
Join_date date,
CP_ID varchar(10),
Mode_of_Join varchar(15),
Salary int,
Job_type varchar(15),
foreign key (CP_ID) references project_details(P_ID)
);

insert into emp_details values
(101,'Ankit','M',32,'Delhi','ankit123@outlook.com','SDE1',5,'2020-05-15','RTB_1097','Referral',85000,'Hybrid'),
(102,'Kartik','M',34,'Seattle','kartik385@gmail.com','Full_Stack_Dev_Lead',7,'2017-08-20','RTB_1082','Direct',120000,'WFH'),
(103,'Divya','F',24,'Gurugram','divya722@yahoo.com','Cloud_Architect',2.5,'2022-04-05','RTB_1097','Direct',43000,'WFO'),
(104,'Pallavli','F',23,'Mumbai','pallavi624@yahoo.com','Intern',0,'2022-08-10','RTB_1056','Direct',14000,'WFO'),
(105,'Vedika','F',23,'Mumbai','vedika132@rediff.com','Back_End_Dev',3,'2020-02-25','RTB_1082','Referral',53000,'WFH'),
(106,'Ujjwal','M',32,'Noida','ujjwal623@gmail.com','SDE2',3,'2021-06-01','RTB_1056','Direct',125000,'Hybrid'),
(107,'Harshit','M',22,'Pune','harshit738@outlook.com','Intern',0,'2022-09-01','RTB_1097','Direct',10000,'WFO'),
(108,'Sumit','M',28,'Arizona','harshit481@gmail.com','ML_Engineer',4,'2020-10-20','RTB_1024','Direct',95000,'WFH'),
(109,'Gaurav','M',25,'Mumbai','gaurav982@rediff.com','SDE1',2,'2021-01-15','RTB_1051','Referral',48000,'WFO'),
(110,'Abhishek','M',42,'Gurugram','abhi173@gmail.com','Manager',7.5,'2018-02-20','RTB_1082','Direct',190000,'WFO'),
(111,'Dhruv','M',33,'Noida','dhruv173@rediff.com','SDE2',4,'2022-03-25','RTB_1056','Direct',115000,'WFO'),
(112,'Mahima','F',28,'Gurugram','mahima892@yahoo.com','Back_End_Dev',4,'2022-11-05','RTB_1051','Direct',68000,'WFH'),
(113,'Jyoti','F',33,'New York','jyoti272@gmail.com','Data_Scientist',7,'2019-12-20','RTB_1024','Direct',185000,'WFH'),
(114,'Aditya','M',27,'Pune','aditya198@rediff.com','DBA',3.5,'2020-09-30','RTB_1097','Referral',65000,'WFH'),
(115,'Ayush','M',35,'Delhi','ayush823@yahoo.com','SDE2',3,'2020-09-30','RTB_1024','Referral',105000,'Hybrid'),
(116,'Akanksha','F',26,'Delhi','akanksha748@rediff.com','Manager',5.5,'2019-03-10','RTB_1051','Direct',165000,'Hybrid'),
(117,'Shashank','M',27,'Delhi','shash512@outlook.com','AI_Engineer',2,'2021-12-31','RTB_1082','Referral',95000,'WFH'),
(118,'Aparna','F',26,'Noida','aparna937@rediff.com','Manager',3.5,'2019-04-20','RTB_1097','Direct',125000,'WFO'),
(119,'Rishabh','M',28,'Delhi','rishabh632@outlook.com','SDE1',3,'2021-10-12','RTB_1073','Direct',72000,'Hybrid'),
(120,'Surbhi','F',24,'Arizona','surbhi982@rediff.com','Cloud_Architect',1.5,'2022-01-05','RTB_1073','Direct',38000,'WFH'),
(121,'Nikhil','M',30,'Mumbai','nikhil534@gmail.com','ML_Engineer',3.5,'2021-11-20','RTB_1073','Referral',75000,'WFH'),
(122,'Nikita','F',26,'Noida','nikita870@outlook.com','Data Analyst',2.5,'2022-06-25','RTB_1073','Direct',55000,'WFO');


select * from client_details;  
select * from project_details; 
select * from emp_details;   

-- client_details(C_ID,Location,Total_Budget,Project_Head)
-- project_details(P_ID,PStart_date,PEnd_Date,Client_ID,Team_Size)
-- emp_details(E_ID,Ename,gender,age,working_city,email,eprofile,
-- experience,join_date,CP_ID,Mode_of_Join,Salary,Job_Type)


##### Feature Description
-- Emp_details
-- 1) E_ID: Unique ID for each Employee
-- 2) EName: Name of the Employee
-- 3) Gender: Gender of the Employee
-- 4) Age: Age of the Employee
-- 5) Working_City: City in which the Employee currently lives and works.
-- 6) Email: Email of the Employee
-- 7) EProfile: Current Employee Profile
-- 8) Experience: Total professional working Experience in the corresponding EProfile (till
-- the current date)
-- 9) Join_Date: Joining date in the current organization in the current project
-- 10) CP_ID: ID of the Project currently the Employee is working in
-- 11) Mode_of_Join: Direct or Referral
-- 12) Salary: Monthly Salary of the Employee (In INR)
-- 13) Job_Type: WFH (Work from Home), WFO (Work from Office) or Hybrid

-- Project_details
-- 1) P_ID: Unique project ID for each Project
-- 2) PStart_Date: Date when the project was started
-- 3) PEnd_Date: Date when the project will end
-- 4) Client_ID: Client ID whose project has been assigned to the organization
-- 5) Team_Size: Maximum number of employees who will work at a time for a given P_ID

-- Client_details
-- 1) C_ID: Unique Client ID
-- 2) Location: Client Location (on-site)
-- 3) Total_Budget: Total Budget of the Project for the entire span of the Project (in USD)
-- 4) Project Head: On-site Project Head (Lead)





-- Q1) Write a SQL query to extract the Employee ID, Employee name, Age,
-- Working city, Profile, Salary, Employee Experience, Project start date,
-- Project End Date along with Project Head Name for employees with at least
-- 3.5 years of experience and who are Direct recruits. Arrange the result in
-- descending order of Salary.

-- Q2) Write a SQL query to Extract all the Employee details (ID, Name, Age,
-- Gender, Experience, Salary, Profile, Join Date) and Experience in Current
-- Project (in years). Fetch the records only if the employees have worked at
-- least 2 years in their current project allotted from their joining date. Arrange
-- result in decreasing order of Join Date and in ascending order of their Age.
-- (Note - Experience in emp_details table is different from Experience in the
-- current project)

-- Q3) Create a view for retaining all the employee details for the employees
-- where they earn more than the average salary earned by all the employees
-- (Use Sub-query). Filter the view such that only employees having the same
-- experience are returned.

-- Q4) Write a SQL query to display all the E_ID, Employee name, Working City,
-- Email, Employee Profile, Experience, Salary, Job-Type and Emp_bonus where
-- the employees don’t use rediff as their email and they don’t work in Delhi or
-- Pune. Employees having 3.5 yrs or more total experience will receive bonus
-- of 15% of their salary but if the Salary is already greater than 150000 with
-- 3.5 yrs or more experience than bonus will be 10% of their salary
-- respectively, otherwise bonus amount is 0.

-- Q5) Write a SQL query to find Project-ID wise number of employees in that
-- project where the entire project duration is at most 5 years. Use appropriate
-- alias name for the employee count. Arrange the result in descending order
-- of employee count.

-- Q6) Write a SQL query to find all the employee details who earn the 3rd
-- and 4th highest Salary.

-- Q7) Rank top 2 salaries based on Employee profile. Use appropriate window
-- function for the same.

-- Q8) Write a SQL query to find the Employee ID, Employee Name, Age,
-- Working City,date, Project ID, Client ID working in a project for a particular client whose
-- Working city is same as the Client location (Use Sub-query and/or join).

-- Q9) Write a SQL query to find Job-type, mode of joining and gender wise
-- Average Salary of employees where average salary is less than average
-- salary of those employees whose Project End date is on or before 2023. Use
-- appropriate alias name for Average salary. Use appropriate alias name for
-- the average salary. Arrange the result in ascending order of Job-type,
-- ascending order of mode of joining, ascending order of gender and
-- descending order of average salary (Use Sub-query).

-- Q10) Employees who joined within 1.5yrs of their project start date are
-- found to perform better as they have better domain knowledge.
-- Acknowledging this, their client wants to give them onsite opportunities.
-- However, Employees whose joining mode is Referral are not eligible for the
-- same. Employees already working at their respective client location are also
-- excluded (as they are already working onsite). Find E_ID, EName, Age,
-- Gender, Experience, Salary, Profile, Joining date, Project Start date, Mode of
-- Joining, Salary, Project_Experience ((in yrs), should be less than or equal to
-- 1.5 yrs of Project start date), New Working City (which will be same as the
-- Client Location) and Onsite_Incentive (in INR) which is equivalent to 0.5%
-- of total_budget (given in USD) for each employee who gets onsite
-- opportunity. Consider 1USD = 85.58 INR (approx). Use appropriate alias
-- names.





