SELECT line_name, max(time_to_next_station) AS max_time
FROM metro_travel_time
GROUP BY line_name