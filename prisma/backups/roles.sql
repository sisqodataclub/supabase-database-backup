
\restrict kfgM9cT9MQWmhkqtRHXMOQr28aBiJg2bd8TRNOw8fgER7GXLZxCip1WV7RwWlVq

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict kfgM9cT9MQWmhkqtRHXMOQr28aBiJg2bd8TRNOw8fgER7GXLZxCip1WV7RwWlVq

RESET ALL;
