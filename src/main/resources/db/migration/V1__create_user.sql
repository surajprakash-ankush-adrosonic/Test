CREATE TABLE user_identitys ( 
	id BIGSERIAL PRIMARY KEY,
	email VARCHAR UNIQUE NOT NULL,
	password_hash VARCHAR NOT NULL,
	role VARCHAR NOT NULL
);