ALTER TABLE user_identitys ADD first_name varchar(60) NOT NULL DEFAULT 'foo';
ALTER TABLE user_identitys ADD last_name varchar(60) NOT NULL DEFAULT 'foo';
ALTER TABLE user_identitys ADD company_id bigint NOT NULL DEFAULT 1;