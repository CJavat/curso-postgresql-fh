  CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT gen_random_uuid(), uuid_generate_v4();


CREATE TABLE users5 (
	"user_id" UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
	"username" VARCHAR
);