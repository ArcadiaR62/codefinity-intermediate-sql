SELECT line_name, SUM(time_to_next_station) * 2 AS turnaround_time
FROM metro_travel_time
GROUP BY line_name
ORDER BY turnaround_time