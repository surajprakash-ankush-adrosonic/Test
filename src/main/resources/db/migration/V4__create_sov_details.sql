CREATE TABLE sov_details (
	id BIGSERIAL PRIMARY KEY,
	uploader_id bigint NOT NULL,
	uploader_company_id bigint NOT NULL,
	retailer_id bigint NOT NULL,
	account_id bigint NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL
);