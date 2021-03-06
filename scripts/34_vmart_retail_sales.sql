insert into retail.sales(date,product_key,product_version,store_key,promotion_key,customer_key,employee_key,
pos_transaction_number,sales_quantity,sales_dollar_amount,cost_dollar_amount,gross_profit_dollar_amount,
transaction_type,transaction_time,tender_type)
select date,product_key,product_version,store_key,promotion_key,customer_key,employee_key,
pos_transaction_number,sales_quantity,sales_dollar_amount,cost_dollar_amount,gross_profit_dollar_amount,
transaction_type,transaction_time,tender_type
from store.store_sales_fact
inner join public.date_dimension using (date_key)
;
