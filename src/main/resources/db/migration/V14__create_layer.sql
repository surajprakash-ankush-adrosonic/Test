CREATE TABLE layer (
    id BIGSERIAL PRIMARY KEY,
    name varchar(200) UNIQUE NOT NULL,
    amount NUMERIC(15,2),
    excess NUMERIC(15,2),
    sov_details_id bigint NOT NULL
);