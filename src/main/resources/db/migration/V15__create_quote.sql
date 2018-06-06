CREATE TABLE quote (
    id BIGSERIAL PRIMARY KEY,
    amount NUMERIC(15,2) not null,
    percent int not null,
    sov_details_id bigint NOT NULL,
    underwriter_id bigint NOT NULL,
    uploader_id bigint NOT NULL,
    layer_id bigint NOT NULL
);