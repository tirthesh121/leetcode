# Write your MySQL query statement below
select prices.product_id, ifnull (round(sum(prices.price*unitssold.units)/sum(unitssold.units),2),0) as average_price
from prices left join unitssold
on prices.product_id = unitssold.product_id
and purchase_date between start_date and end_date
group by product_id;