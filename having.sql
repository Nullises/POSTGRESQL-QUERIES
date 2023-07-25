SELECT p.mkt_carrier,
		c.carrier_desc,
		AVG(p.dep_delay_new) as departure_delay_average,
		AVG(p.arr_delay_new) as arrival_delay_average
	FROM performance p
	INNER JOIN codes_carrier c
	ON p.mkt_carrier = c.carrier_code
	GROUP BY p.mkt_carrier, c.carrier_desc
	HAVING AVG(p.dep_delay_new) < 15 AND AVG(p.arr_delay_new)< 15
	ORDER BY AVG(p.dep_delay_new) ASC;