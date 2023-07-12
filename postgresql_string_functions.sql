SELECT carrier_code, carrier_desc,
		UPPER(
			REPLACE(
				SUBSTRING(
				carrier_desc, 1, 8),
			' ', '')) 
		AS carrier_display
		FROM codes_carrier;