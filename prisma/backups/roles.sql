
\restrict QYYeIym5m2nlZeNMEKmelqdeP0u8d6yfZ32fJsqRxSoqToQM0eyHAEhwMclglpB

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict QYYeIym5m2nlZeNMEKmelqdeP0u8d6yfZ32fJsqRxSoqToQM0eyHAEhwMclglpB

RESET ALL;
