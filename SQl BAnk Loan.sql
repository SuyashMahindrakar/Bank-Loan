create database bank_loan;
select  * from finance1;
select * from finance2;

#1. Year wise loan amount?
select year(issue_D) as Year_of_issue_d, sum(loan_amnt) as Total_loan_amnt
from finance1
group by Year_of_issue_d
order by Year_of_issue_d;

#2. Grade subgrade wise revolution balance?
select grade, sub_grade, sum(revol_bal) as total_revol_bal
from finance1 inner join finance2
on(finance1.id = finance2.id)
group by grade, sub_grade
order by grade, sub_grade;

#3. Total payment for verified & non-verified status?
select verification_status, sum(total_pymnt) as total_payment
from finance1 inner join finance2
on(finance1.id = finance2.id)
group by verification_status;

#4. Calculate State wise & last_credit_pull_d wise loan status?
select addr_State, last_Credit_pull_D, loan_Status
from finance1 inner join finance2
on(finance1.id = finance2.id)
group by addr_State, last_Credit_pull_D, loan_Status
order by last_Credit_pull_D;

#5. Home ownership vs last payment date stats?
select home_ownership, last_pymnt_d
from finance1 inner join finance2
on(finance1.id = finance2.id)
group by home_ownership, last_pymnt_d
order by home_ownership, last_pymnt_d;

select  * from finance2;