
\restrict rid5mD1xcLjQGC08d7KdhTdbjHh7k1sBSYACdi3fn6ExREpqcCr5e2nVvRUqcVM

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict rid5mD1xcLjQGC08d7KdhTdbjHh7k1sBSYACdi3fn6ExREpqcCr5e2nVvRUqcVM

RESET ALL;
