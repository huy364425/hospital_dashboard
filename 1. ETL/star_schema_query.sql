-- Create new 'hcahps' schema
CREATE SCHEMA IF NOT EXISTS hcahps;

-- Create snapshots data table in 'hcaphps' schema
CREATE TABLE hcahps.snapshots (
	facID VARCHAR(6),
	fac_name VARCHAR(100),
	fac_address VARCHAR(80),
	fac_city VARCHAR(30),
	fac_state VARCHAR(2),
	fac_zip VARCHAR(8),
	fac_county VARCHAR(25),
	fac_phone VARCHAR(14),
	measureID VARCHAR(25),
	question VARCHAR(138),
	answer_description VARCHAR(118),
	star_rating VARCHAR(14),
	rating_footnote VARCHAR(7),
	answer_percent VARCHAR(14),
	answer_footnote VARCHAR(8),
	linear_mean_score VARCHAR(14),
	completed_surveys VARCHAR(13),
	completed_footnote VARCHAR(8),
	survey_response_rate VARCHAR(13),
	survey_response_footnote VARCHAR(8),
	start_date DATE,
	end_date DATE
);