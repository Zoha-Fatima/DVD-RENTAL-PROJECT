--10. Display text message for customers who have
---rented DVD for more than 7 days (using CASE)
--10. Display text message for customers who have rented DVD 
--for more than 7 days (using CASE)

WITH duration_of_Rental AS(
select rental_id, customer_id, 
	AGE(return_date, rental_date) as NO_OF_DAYS_RENTED from rental)
Select customer_id, NO_OF_DAYS_RENTED,
CASE WHEN NO_OF_DAYS_RENTED>='7 DAYS'
THEN 'SEND CUSTOMER A REMINDER MAIL TO RETURN DVD'
ELSE 'NO NEED FOR REMINDER MAIL YET'
END
FROM duration_of_Rental