# Write your MySQL query statement below
select V.customer_id , count(V.visit_id)as count_no_trans 
from visits V
left join transactions t
on t.visit_id = V.visit_id
where t.transaction_id is null
group by customer_id