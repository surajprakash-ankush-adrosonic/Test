CREATE TABLE comment (
    id BIGSERIAL PRIMARY KEY,
    name varchar NOT NULL,
    sov_details_id bigint,
    quote_id bigint,
    commenter_id bigint NOT NULL,
    commenter_name varchar NOT NULL,
    commenter_role varchar NOT NULL
);