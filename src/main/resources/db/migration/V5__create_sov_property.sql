CREATE TABLE sov_property (
	id BIGSERIAL PRIMARY KEY,
	city varchar,
	location varchar,
	occupancy varchar,
	state varchar,
	street_name varchar,
	zip varchar NOT NULL,
	business_interruption NUMERIC(15,2),
	contents NUMERIC(15,2), 
	property_values NUMERIC(15,2), 
	total_insurable_values NUMERIC(15,2), 
	sov_details_id bigint NOT NULL
);
