
\restrict KUM0Ndnuu1cEDrF2KShM8XLxbgl6wEozSgkIHj0lbA9AMBIDGl7BuGgT52fPzH7

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict KUM0Ndnuu1cEDrF2KShM8XLxbgl6wEozSgkIHj0lbA9AMBIDGl7BuGgT52fPzH7

RESET ALL;
