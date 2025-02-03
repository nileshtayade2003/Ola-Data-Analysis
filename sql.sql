create database ola;
use ola;

select * from bookings;

--  1. Retrieve all successful bookings:
create view successful_bookings as
select * from bookings 
where booking_status='Success';

select * from successful_bookings;

--  2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select vehicle_type,avg(ride_distance) as avg_distance
from bookings 
group by vehicle_type;

select * from ride_distance_for_each_vehicle;

--  3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
select count(*) 
from bookings
where booking_status = 'canceled by customer';

select * from cancelled_rides_by_customers;

--  4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers as
select customer_id,count(booking_id) as total_bookings
from bookings
group by customer_id
order by total_bookings desc
limit 5;

select * from top_5_customers;

--  5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view cancelled_by_drivers_P_C_Issues as
select count(*)
from bookings
where canceled_rides_by_driver = 'Personal & Car related issue';

select * from cancelled_by_drivers_P_C_Issues;

--  6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view max_min_driver_rating as
select max(driver_ratings) as max_rating , min(driver_ratings) as min_rating
from bookings 
where vehicle_type = 'prime sedan';

select * from max_min_driver_rating;

--  7. Retrieve all rides where payment was made using UPI:
create view upi_payment as
select * 
from bookings 
where Payment_Method = 'upi';

select * from upi_payment;

--  8. Find the average customer rating per vehicle type:
create view avg_cust_rating as
select vehicle_type,avg(customer_rating) avg_customer_rating
from bookings
group by vehicle_type;

select * from avg_cust_rating;

--  9. Calculate the total booking value of rides completed successfully:e
create view total_successful_ride_value as
select sum(booking_value) total_successful_ride_value
from bookings 
where booking_status = 'success';

select * from total_successful_ride_value;

--  10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason as
select booking_id,Incomplete_Rides_Reason
from bookings
where incomplete_rides ='yes';

select * from Incomplete_Rides_Reason;

# all questions short queries using views for quick retrival of result and provides the top level view

 #1. Retrieve all successful bookings:
 Select * From Successful_Bookings;
 
 #2. Find the average ride distance for each vehicle type:
 Select * from ride_distance_for_each_vehicle;
 
 #3. Get the total number of cancelled rides by customers:
 Select * from cancelled_rides_by_customers;
 
 #4. List the top 5 customers who booked the highest number of rides:
 Select * from Top_5_Customers;
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 Select * from cancelled_by_drivers_P_C_Issues;
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Select * from Max_Min_Driver_Rating;
 
 #7. Retrieve all rides where payment was made using UPI:
 Select * from UPI_Payment;
 
 #8. Find the average customer rating per vehicle type:
 Select * from AVG_Cust_Rating;
 
 #9. Calculate the total booking value of rides completed successfully:
 Select * from total_successful_ride_value;
 
 #10. List all incomplete rides along with the reason:
 Select * from Incomplete_Rides_Reason;
 
 

