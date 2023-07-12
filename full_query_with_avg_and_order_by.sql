SELECT p.mkt_carrier,
	   c.carrier_desc,
	   AVG(p.dep_delay_new)
FROM performance p
INNER JOIN codes_carrier c
ON p.mkt_carrier = c.carrier_code
GROUP BY p.mkt_carrier,
		 c.carrier_desc
ORDER BY AVG(p.dep_delay_new) DESC;