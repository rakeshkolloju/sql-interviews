/* --------------------
   Case Study Questions
   --------------------*/

-- 1. _id,min(order_date)order_date from sales group by 1)
-- select customer_id,product_id from sales s join tmp on what is a total amount
--  each customer spent at the restaurant?
-- 2. How many days has each customer visited the restaurant?
-- 3. What was the first item from the menu purchased by each customer?
-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
-- 5. Which item was the most popular for each customer?
-- 6. Which item was purchased first by the customer after they became a member?
-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their jo
-- in date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?

-- Example Query:
-- 1.select customer_id,sum(m.price) from sales s join menu m on s.product_id=m.product_id group by s.customer_id
-- 2.select customer_id,count(distinct order_date) from sales group by 1 order by customer_id;
--3.with tmp as(select customer_id, rank() over (partition by customer_id order by order_date)rn,product_id from sales )
--select * from tmp where rn=1
-- select s.product_id,s.customer_id,s.order_date from tmp t join sales s on t.order_date=s.order_date and t.customer_id=s.customer_id

--4 with tmp as(select product_id from ( select product_id,count(1)ct from sales group by 1 order by count(1) desc)r limit 1)
--select customer_id,count(s.product_id) from sales s where product_id in (select product_id from tmp) group by customer_id
