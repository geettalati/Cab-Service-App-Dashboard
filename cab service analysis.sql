-- total drivers
select count(distinct driverid) from trips;

-- total earning
select sum(fare) as total_earning from trips;

-- total completed trips
select count(distinct tripid) as total_completed_trips from trips;

-- total searches which got estimates
select count(searches_got_estimate) as total_searches_which_got_estimates from trips_details
 where searches_got_estimate = 1;
 
-- total driver cancelled trips
select count(driver_not_cancelled) as total_searches_which_got_estimates from trips_details
 where driver_not_cancelled = 0;
 
 
-- most used payment method
select t.faremethod, p.method, count(t.faremethod) as times_used from trips as t
left join payment as p on p.faremethod = t.faremethod
group by t.faremethod, p.method
order by times_used desc;

-- highest payment was made using which method
select t.faremethod, p.method, t.fare from trips as t
left join payment as p on p.faremethod = t.faremethod
where t.fare = (select max(fare) from trips)
;
 
 -- which two location has the most trips
SELECT loc_from, loc_to, COUNT(*) AS total_trips
FROM trips
GROUP BY loc_from, loc_to
ORDER BY total_trips desc
limit 2;

-- top 5 earning driver
select driverid, sum(fare) as earning from trips
group by driverid
order by earning desc
limit 5
;

-- duration-customer paur had most trips
select driverid, custid, count(*) as pair from trips
group by driverid, custid
order by pair desc;

-- 