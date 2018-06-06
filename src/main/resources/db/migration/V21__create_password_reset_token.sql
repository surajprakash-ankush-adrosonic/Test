CREATE TABLE password_reset_token (
    id BIGSERIAL PRIMARY KEY,
    token varchar NOT NULL,
    user_id bigint NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL
);