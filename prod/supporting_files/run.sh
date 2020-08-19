#!/bin/bash

su -c "psql -c \"CREATE ROLE root;\"" root
su -c "psql -c \"CREATE ROLE factor;\"" root
su -c "psql -c \"CREATE ROLE postgres;\"" root
su -c "psql -c \"CREATE ROLE ro_user;\"" root
su -c "psql -c \"CREATE ROLE t2connect;\"" root
su -c "psql -c \"CREATE ROLE tieredli_tieredlist;\"" root
su -c "psql -c \"CREATE ROLE tieredli_user;\"" root
su -c "psql -c \"CREATE ROLE tieredlist;\"" root

su -c "psql -c \"ALTER ROLE root WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE factor WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE postgres WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE ro_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE t2connect WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE tieredli_tieredlist WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE tieredli_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
su -c "psql -c \"ALTER ROLE tieredlist WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD '${GLOBAL_PGSQL_PWD}';\"" root
