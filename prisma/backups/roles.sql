
\restrict ZxarENd24OUVV2so9f7pgjnv0U71BM5JXkAl3X72aHThb78WnI4vMHf2UgfDYfA

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';
ALTER ROLE "authenticator" SET "pgrst.db_schemas" TO 'public, bronze, silver';

\unrestrict ZxarENd24OUVV2so9f7pgjnv0U71BM5JXkAl3X72aHThb78WnI4vMHf2UgfDYfA

RESET ALL;
