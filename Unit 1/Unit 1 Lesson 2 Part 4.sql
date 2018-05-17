--What are the three longest trips on rainy days?

select
	weather.Date,
	weather.Events,
	weather.ZIP,
	trips.trip_id,
	trips.duration,
	trips.start_date,
	trips.zip_code
from 
	trips
join	
	weather
on
	trips.zip_code = weather.ZIP
	
where
	weather.Events = 'Rain'
order by trips.duration desc
	
--Which station is full most often?

select
	station_id,
	docks_available,
	count(station_id) ct
from
	status
where
	docks_available = 0
group by station_id
order by ct desc

--Return a list of stations with a count of number of trips starting at that station but ordered by dock count.

with 
	station_counts
as (select
	stations.name,
	stations.dockcount,
	trips.start_station
from
	trips
join
	stations
on
	trips.start_station = stations.name)
	
select
	start_station,
	dockcount,
	count(start_station)
from station_counts
group by dockcount
order by dockcount

--(Challenge) What's the length of the longest trip for each day it rains anywhere?

with
	rain
as (select
weather.Date,
weather.Events
	where
	 weather.Events = 'Rain')


select
	trips.duration,
	trips.start_date
	(case when date in rain.Date in trips.start_date then trips.start_date
	end)