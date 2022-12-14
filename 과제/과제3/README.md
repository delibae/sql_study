# Select Join

## 연습문제

​

1. employees 테이블에서 성이 'King'인 사원의 메니저의 이름과 부서명을 출력하라.

​
<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as manager_name, d.department_name

from employees e join employees e2

on e2.manager_id = e.employee_id and e2.last_name = 'King'

join departments d

on e.department_id = d.department_id;
</code></pre>
​

​

2. employees 테이블에서 성이 'King'인 사원의 메니저의 이름과 직업을 출력하라.

​<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as manager_name, j.job_title 
from employees e join employees e2
on e2.manager_id = e.employee_id and e2.last_name = 'King'
join jobs j
on e.job_id = j.job_id;
</code></pre>
​

​

## 과제

​

1. 성이 'King'인 사원과 같은 job의 사원을 출력. 단, 'King'은 제외 한다.

​
<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as same_job_name
from employees e join employees e2
on e.job_id = e2.job_id and e2.last_name = 'King' and e.last_name <>'King';
</code></pre>
​

​

2. 성이 'King'인 사원중에서 급여가 작은 사원보다 더 많은 급여를 받는 사원들을 출력.

​<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as more_sal_name
from employees e
where e.salary > (select min(salary) from employees e2 where e2.last_name = 'King');
</code></pre>
​

3. 부서가 'Sales'인 부서에 근무하는 사람 출력.

​<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as sale_emp_name
from employees e
where e.department_id = (select department_id from departments d where d.department_name = 'Sales');
</code></pre>  
​

4. 최소 급여를 받는 사람의 이름과 급여는?  
<br/>   
<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as min_sal_name, d.department_name
from employees e, departments d
where e.salary = (select min(e.salary) from employees e) and e.department_id = d.department_id;
</code></pre>
​

5. 평균 급여보다 많은 급여를 받는 사람은?  
​


<pre><code>select concat(concat(e.first_name, ' '),e.last_name) as overavg_sal_name
from employees e
where e.salary > (select avg(e.salary) from employees e);
</code></pre>