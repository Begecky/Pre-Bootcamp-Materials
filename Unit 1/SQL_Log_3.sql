select
	MinTemperatureF,
	Events,
	ZIP
from
	weather
where
	Events = 'Rain' and
	ZIP = 94301
	