
\restrict UVIEvaNlBfmt1WN0fiTStEQCBJX3xgRvU8UDWubcOsi5Ttef3jFfgzMD1c5lTE9

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict UVIEvaNlBfmt1WN0fiTStEQCBJX3xgRvU8UDWubcOsi5Ttef3jFfgzMD1c5lTE9

RESET ALL;
