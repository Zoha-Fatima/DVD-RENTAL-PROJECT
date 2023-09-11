-- 5. Find Customer full name and email id who have rented DVDs 
--for more than 5 days. (using JOIN and AGE())
select r.rental_id, c.email, 
concat(c.first_name,' ',c.last_name) as CUST_FULLNAME from rental r
join customer c
on r.customer_id=c.customer_id
where AGE(r.return_date, r.rental_date) >'5 days'
