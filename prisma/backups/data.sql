SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: rightmove_data_brz; Type: TABLE DATA; Schema: bronze; Owner: postgres
--

COPY "bronze"."rightmove_data_brz" ("id", "Property Address", "Agent Address", "Agent Name", "Available Date", "Property Type", "Bedrooms", "Bathrooms", "Post Date", "Price", "Latitude", "Longitude", "URL") FROM stdin;
1	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
2	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2	1	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
3	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2	1	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
4	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2	1	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
5	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
6	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2	1	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
7	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
8	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3	2	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
9	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2	2	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
10	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
11	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3	3	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
12	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
13	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4	4	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
14	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
15	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1	1	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
16	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4	3	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
17	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3	2	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
18	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1	1	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
19	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3	1	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
20	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2	2	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
21	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2	2	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
22	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
23	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
24	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1	1	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
25	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
26	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
27	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2	1	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
28	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2	1	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
29	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2	1	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
30	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
31	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2	1	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
32	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
33	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3	2	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
34	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2	2	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
35	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
36	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3	3	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
37	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
38	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4	4	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
39	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
40	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1	1	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
41	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4	3	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
42	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3	2	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
43	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1	1	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
44	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3	1	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
45	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2	2	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
46	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2	2	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
47	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
48	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
49	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1	1	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
50	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
51	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
52	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2	1	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
53	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2	1	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
54	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2	1	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
55	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
56	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2	1	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
57	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
58	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3	2	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
59	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2	2	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
60	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
61	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3	3	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
62	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
63	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4	4	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
64	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
65	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1	1	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
66	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4	3	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
67	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3	2	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
68	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1	1	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
69	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3	1	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
70	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2	2	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
71	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2	2	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
72	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
73	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
74	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1	1	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
75	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
76	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
77	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2	1	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
78	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2	1	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
79	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2	1	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
80	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
81	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2	1	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
82	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
83	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3	2	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
84	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2	2	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
85	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
86	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3	3	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
87	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
88	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4	4	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
89	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
90	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1	1	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
91	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4	3	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
92	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3	2	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
93	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1	1	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
94	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3	1	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
95	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2	2	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
96	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2	2	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
97	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
98	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
99	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1	1	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
100	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
101	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
102	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2	1	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
103	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2	1	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
104	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2	1	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
105	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
106	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2	1	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
107	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
108	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3	2	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
109	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2	2	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
110	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
111	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3	3	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
112	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2	2	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
113	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4	4	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
114	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2	1	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
115	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1	1	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
116	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4	3	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
117	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3	2	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
118	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1	1	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
119	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3	1	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
120	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2	2	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
121	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2	2	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
122	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2	1	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
123	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
124	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1	1	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
125	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3	2	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
ffgg	ffgg	\N	2025-02-19 12:07:37.536074+00	2025-02-19 12:07:37.536074+00	f	f	\N	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
9d76987e-76de-4da5-9938-87c2dc1ea034	ffgg	seed.sql	\N	2025-02-19 12:08:34.381691+00	2025-02-19 12:08:34.381691+00	2025-02-19 12:08:34.381691+00	{"eTag": "\\"60c2357ea50937cd0186bf9308cec3f0-1\\"", "size": 4282, "mimetype": "application/x-sql", "cacheControl": "max-age=3600", "lastModified": "2025-02-19T12:08:35.000Z", "contentLength": 4282, "httpStatusCode": 200}	a62bfb40-2c04-4d9d-b4f9-41f2a4429338	\N	\N
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: rightmove_data_brz_id_seq; Type: SEQUENCE SET; Schema: bronze; Owner: postgres
--

SELECT pg_catalog.setval('"bronze"."rightmove_data_brz_id_seq"', 125, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
