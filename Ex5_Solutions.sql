

-- 1) 
select e.E_ID,e.Ename, e.age,e.working_city,e.eprofile,e.salary,e.experience,
e.mode_of_join,p.pstart_date,p.pend_date,c.project_head
from emp_details e
inner join project_details p
on e.CP_ID = p.p_id
inner join client_details c
on p.Client_ID = c.c_id
where e.experience>=3.5 and e.Mode_of_Join = 'Direct'
order by e.salary desc;

-- 2)
select e.E_ID,e.Ename,e.age,e.gender,e.experience,e.salary,e.eprofile,
e.join_Date,datediff(now(),e.join_date)/365 as Cur_Proj_Exp
from emp_details e
having Cur_Proj_Exp>=2
order by e.join_Date desc, age;

-- 3)
select * from emp_details where salary >
(select avg(salary) from emp_details);

-- 4)
select E_ID,Ename, working_city,email,eprofile,experience,salary,job_type,
case
when salary>150000 and experience>=3.5 then 0.10*salary
when salary<=150000 and experience>=3.5 then 0.15*salary
else 0
end as Emp_Bonus
from emp_details
where email not like '%rediff%' and
Working_City not in ('Delhi','Pune');


-- 5)
select e.CP_ID, count(e.E_ID) as Emp_Count
from emp_details e
inner join project_details p
on e.CP_ID = p.p_id
where datediff(pend_Date,pstart_date)/365<=5
group by e.CP_ID
order by Emp_Count desc;

-- 6)
select * from emp_details
order by Salary desc
limit 4,2;

-- 8)
select e.E_ID,e.Ename, e.age,e.working_city,e.eprofile,e.salary,
e.experience,e.Mode_of_Join,e.join_date,p.p_id,c.c_id,c.location
from emp_details e
inner join project_details p
on e.CP_ID = p.p_id
inner join client_details c
on p.Client_ID = c.c_id
where e.working_city in
(select working_city from emp_details where working_city=c.location);


-- 9)
select e.job_type, e.mode_of_join, e.gender, avg(salary) Avg_Salary 
from emp_details e
group by e.job_type, e.mode_of_join, e.gender
having Avg_Salary <
(select avg(salary) from emp_details where CP_ID in
(select P_ID from project_details where year(pend_date) <= '2023'))
order by e.job_type, e.mode_of_join, e.gender,Avg_Salary desc;

-- 10)
select e.E_ID,e.Ename,e.age,e.gender,e.experience,e.salary,e.eprofile,
e.join_Date,p.pstart_date,e.mode_of_join,e.working_city,
datediff(e.join_date,p.pstart_date)/365 as Project_Exp,
c.location as New_working_City,
c.total_budget*0.00005*81.42 as Onsite_incentive
from emp_details e
inner join project_details p
on e.CP_ID = p.p_id
inner join client_details c
on p.client_ID = c.c_id
having Project_Exp<=1.5 and e.mode_of_join<>'Referral'
and e.working_city<>c.location;