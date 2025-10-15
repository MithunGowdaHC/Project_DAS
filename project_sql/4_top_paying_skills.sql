select 
skills,
round(avg(salary_year_avg),0) as avg_salary

 from job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id 
where job_title_short = 'Data Analyst' and salary_year_avg is NOT NULL
group by skills
order by avg_salary DESC
limit 25 

