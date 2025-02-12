 ///// Find the names of all Passengers

 select distinct passenger_name
 from Passenger

 // An asterisk in the select clause denotes �all attributes�

 select *
 from TicketBooking

 //To find all Flight_Date from "Bangladesh" to "Morocco" 
		
select flight_date	
from Flight	
where flight_from ='Bangladesh' and flight_where ='Morocco'


//Find the names of all Pilot whois under 30 years

select pilot_name
from Pilot
where age<30

//Find the names of all Passenger whose name includes the substring �Ma�.

select passenger_name
from Passenger
where passenger_name like '%Ma%'

//List in alphabetic assending order the names of all plane 

select distinct plane_name	
from Plane		
order by plane_name asc

// Find the names of all plane with fare between $5000- and $7000

select plane_name
from Flight
where flight_fare between 5000 and 7000

// Find the flight_name of all flight that are less than the most expensive fare

select distinct T.flight_name
from Flight as T, Flight as S
where T.flight_fare<S.flight_fare

// Find all the fare of all flight

select flight_fare
from Flight

// Find the most expesive flight fare

(select flight_fare
from Flight)
except
(select T.flight_fare
from Flight as T, Flight as S
where T.flight_fare<S.flight_fare)

// Find the average fare of all flight

select avg (flight_fare)
from Flight

// Find the number of tuples in the TicketBooking relation
select count (*)
from TicketBooking;

// find average age of pilots

select avg(age)
from Pilot

//Book a new ticket_for Morshed (insertion)

 insert into[dbo].[Passenger]
values('Morshed','AD987654557',23,'male');
 insert into[dbo].[TicketBooking]
 values ('AD987654557','01/03/2020','Bangladesh','Morocco','11D',1040,'8:45 AM','10:45 PM');
 select*from[dbo].[TicketBooking]
  select*from[dbo].[Passenger]


// update a flight_date (Update)

 update Flight
 set flight_date='1/2/2020'
 where plane_name='Air US'
 select*from[dbo].[Flight]

// flight destination of US Bangla

select flight_from,flight_where
 from Flight
 where plane_name='US Bangla'



 

