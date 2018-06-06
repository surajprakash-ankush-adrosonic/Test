CREATE TABLE s3_file (
	id BIGSERIAL PRIMARY KEY,
	uploader_id bigint NOT NULL,
	sov_details_id bigint NOT NULL,
	location VARCHAR NOT NULL,
	document_type VARCHAR NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE NOT NULL
);