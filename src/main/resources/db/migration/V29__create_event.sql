CREATE TABLE event (
  id BIGSERIAL PRIMARY KEY,
  text varchar,
  user_id bigint,
  user_name varchar,
  sov_details_id bigint,
  event_type varchar,
  multi_id bigint,
  created_at TIMESTAMP WITH TIME ZONE
);