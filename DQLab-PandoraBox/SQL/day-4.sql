use employees;
select
d2.emp_no,
d2.dept_no as d2,
d1.dept_no as d1,
d2.from_date as d2_from_date,
d2.to_date as d2_to_date, d1.from_date as usia_bergabung_divisi,
d1.to_date as d1_to_date
from 
dept_emp as d1,
dept_emp as d2
where d1.emp_no = d2.emp_no 
and d1.dept_no != d2.dept_no and d1.dept_no ='d003'
and d2.dept_no ='d001'and d2.to_date>curdate()
order by usia_bergabung_divisi asc;