select * from loan_data_set;
select count(*) as total_rows from loan_data_set;
select * from loan_data_set where person_income is null;
select * from loan_data_set where person_gender is null;
select * from loan_data_set where credit_score is null;
select * from loan_data_set;
select person_age,person_gender,loan_amnt,count(*) as duplicate_count from loan_data_set group by person_age,
person_gender,loan_amnt having count(*)>1;
select * , count(*) as countloan from loan_data_set group by person_age,person_gender,person_education,
person_income,person_emp_exp,person_home_ownership,loan_amnt,loan_intent,loan_int_rate,loan_percent_income,
cb_person_cred_hist_length,credit_score,previous_loan_defaults_on_file,loan_status having count(*)>1;
select distinct person_gender from loan_data_set;
select distinct person_education from loan_data_set;
select distinct person_home_ownership from loan_data_set;
select distinct loan_intent from loan_data_set;
select distinct person_gender from loan_data_set;
select * from loan_data_set where person_income < 0;
select * from loan_data_set where loan_amnt < 0;
select * from loan_data_set where person_age<18 or person_age > 100;
select * from loan_data_set where credit_score < 300 or credit_score >900;
set sql_safe_updates =1;
delete from loan_data_set where person_age>100;
create table loan_dataset_backup as select * from loan_data_set;
select * from loan_data_set where person_income < 0;
select max(person_income) as highest_income, min(person_income) as lowest_income from loan_data_set;
select max(loan_amnt) as highest_loan, min(loan_amnt) as lowest_loan from loan_data_set;
select max(loan_int_rate) as max_interest, min(loan_int_rate) as min_interest from loan_data_set;
select count(*) as total_applications from loan_data_set;
select loan_status, count(*) as total_people from loan_data_set group by loan_status;
select loan_status,avg(person_income) as avg_income from loan_data_set group by loan_status;
select loan_status,avg(credit_score) as avg_credit_score from loan_data_set group by loan_status;
select loan_intent, count(*) as total_loans from loan_data_set group by loan_intent order by total_loans desc;
select person_home_ownership,count(*) as total_default from loan_data_set where loan_status =1 group by person_home_ownership
order by total_default desc;
select loan_status,avg(loan_int_rate) as avg_interest from loan_data_set group by loan_status;
select person_education,count(*) as total_default from loan_data_set where loan_status =1 group by person_education 
order by total_default desc; 
select person_age,loan_amnt,loan_intent from loan_data_set order by loan_amnt desc limit 5;
select loan_intent,avg(loan_amnt) as avg_loan from loan_data_set group by loan_intent order by avg_loan desc;
