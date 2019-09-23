CREATE USER "RGAdmin" WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'xxxxxx';
COMMENT ON ROLE "RGAdmin" IS 'This is the administrator of our system, he has all privileges.';

