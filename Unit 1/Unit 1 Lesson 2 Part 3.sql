select
	MaxTemperatureF,
	max(MaxTemperatureF),
	ZIP
from
	weather
	

select
	MaxTemperatureF,
	max(MaxTemperatureF),
	ZIP
from
	weather
	
	
select
	trip_id,
	duration,
	min(duration)
from 
	trips	
		
select
	end_terminal,
	avg(duration)
from
	trips
group by end_terminal	
