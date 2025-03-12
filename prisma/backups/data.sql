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
00000000-0000-0000-0000-000000000000	48ebba6a-fb04-47a6-8ea6-ea7c72809a78	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"francis@dataclubcenter.com","user_id":"fa3b9e65-2c7e-4d88-afd2-5fe58aa7b928","user_phone":""}}	2025-02-27 09:59:42.543512+00	
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
00000000-0000-0000-0000-000000000000	fa3b9e65-2c7e-4d88-afd2-5fe58aa7b928	authenticated	authenticated	francis@dataclubcenter.com	$2a$10$Jof40VHRv5OZUZsfG9pM5uCNegG/mTOF1QTBqpIwpzEnax8rADsQ6	2025-02-27 09:59:42.551128+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-02-27 09:59:42.515912+00	2025-02-27 09:59:42.556309+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
fa3b9e65-2c7e-4d88-afd2-5fe58aa7b928	fa3b9e65-2c7e-4d88-afd2-5fe58aa7b928	{"sub": "fa3b9e65-2c7e-4d88-afd2-5fe58aa7b928", "email": "francis@dataclubcenter.com", "email_verified": false, "phone_verified": false}	email	2025-02-27 09:59:42.535433+00	2025-02-27 09:59:42.53666+00	2025-02-27 09:59:42.53666+00	4316f56a-9f1f-44ff-b711-06e9571e9db4
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
126	Kampus, Apt 1209 South, 59 Chorlton Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	\N	1.0	1.0	Added on 13/02/2025	£1,525 pcm\n£352 pw	53.47688	-2.23455	https://www.rightmove.co.uk/properties/158195420#/?channel=RES_LET
127	High Street, Manchester, M4	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	1.0	1.0	Reduced today	£975 pcm\n£225 pw	53.485134	-2.236448	https://www.rightmove.co.uk/properties/158001974#/?channel=RES_LET
128	Watson Street, Manchester, M3	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 22/02/2025	Flat	1.0	1.0	Reduced today	£1,100 pcm\n£254 pw	53.47732	-2.248315	https://www.rightmove.co.uk/properties/157381079#/?channel=RES_LET
129	Ancoats Gardens, 14 Rochdale Rd, M4	One St Peter's Square Manchester M2 3DE	Vesper Homes, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced today	£1,300 pcm\n£300 pw	53.487509	-2.233231	https://www.rightmove.co.uk/properties/154848287#/?channel=RES_LET
130	Chevington Drive, Heaton Mersey, Stockport, SK4	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	Julian Wadden, Heaton Moor	Let available date: 17/03/2025	Semi-Detached	3.0	1.0	Reduced today	£1,450 pcm\n£335 pw	53.416725	-2.209836	https://www.rightmove.co.uk/properties/157463765#/?channel=RES_LET
131	Halo House, 27 Simpson Street, Manchester, M4	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,250 pcm\n£288 pw	53.487999	-2.235177	https://www.rightmove.co.uk/properties/157631504#/?channel=RES_LET
132	Halo House, 27 Simpson Street, Manchester, M4	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,200 pcm\n£277 pw	53.487964	-2.235241	https://www.rightmove.co.uk/properties/156543662#/?channel=RES_LET
133	Cambridge Street, Manchester, Greater Manchester, M1	B2 Chorlton Mill, Cambridge Street, Manchester, M1 5BY	The Estate Agent Manchester, Manchester	Let available date: 21/02/2025	Flat	2.0	2.0	Reduced today	£1,875 pcm\n£433 pw	53.47255	-2.24357	https://www.rightmove.co.uk/properties/157655816#/?channel=RES_LET
134	Alto, Sillvan Way, Salford, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,250 pcm\n£288 pw	53.484592	-2.255373	https://www.rightmove.co.uk/properties/156348833#/?channel=RES_LET
135	Bury Street, Stockport, SK5 7RE	Web based Estate Agent	Visum, Nationwide	Let available date: 24/02/2025	Terraced	2.0	1.0	Added today	£950 pcm\n£219 pw	53.419574	-2.158583	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET
136	Legh Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 17/03/2025	Terraced	2.0	1.0	Added today	£995 pcm\n£230 pw	53.482136	-2.360061	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET
137	Sandycroft Wythenshawe	Kings House Stamford Street Altrincham WA14 1EX	Kirn Estates, Altrincham	Let available date: 28/02/2025	Apartment	2.0	1.0	Added today	£1,150 pcm\n£265 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET
138	Heald Avenue, Manchester, M14	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2.0	1.0	Added today	£1,200 pcm\n£277 pw	53.4544	-2.23076	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET
139	Plymouth Grove, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Flat	2.0	1.0	Added today	£995 pcm\n£230 pw	53.461444	-2.21535	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET
140	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2.0	2.0	Added today	£1,930 pcm\n£445 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET
141	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	Web based Estate Agent	Visum, Nationwide	Let available date: 28/02/2025	House Share	3.0	2.0	Reduced today	£997 pcm\n£230 pw	53.488348	-2.33187	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET
142	NV Buidling, The Quays, Salford, M50 3BE	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2.0	2.0	Added today	£1,750 pcm\n£404 pw	53.473285	-2.292569	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET
143	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2.0	2.0	Added today	£2,220 pcm\n£512 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET
144	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 23/03/2025	Apartment	3.0	3.0	Added today	£2,405 pcm\n£555 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET
145	Owen Street, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 03/03/2025	Apartment	2.0	2.0	Added today	£2,790 pcm\n£644 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET
146	Deansgate, Manchester, Greater Manchester, M15	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	The Residences - Deansgate Square, The Residences - Deansgate Square	Let available date: 01/03/2025	Penthouse	4.0	4.0	Added today	£12,530 pcm\n£2,892 pw	53.47298	-2.25261	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET
147	Portway, Wythenshawe, Manchester, M22	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Terraced	2.0	1.0	Added today	£1,200 pcm\n£277 pw	53.3742	-2.272	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET
148	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Flat	1.0	1.0	Reduced today	£850 pcm\n£196 pw	53.502946	-2.359941	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET
149	Bold Street, Hulme, Manchester,M15 5QH	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: 19/08/2025	Semi-Detached	4.0	3.0	Added today	£2,380 pcm\n£549 pw	53.462263	-2.25558	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET
150	Hulton Square, Salford, M5 3LX	175 Ashley Road Hale WA15 9SD	Hibbert Homes, Hale	Let available date: Now	Town House	3.0	2.0	Reduced today	£1,550 pcm\n£358 pw	53.472839	-2.277698	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET
151	Pomona Strand, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: 03/05/2025	Apartment	1.0	1.0	Added on 11/02/2025	£1,000 pcm\n£231 pw	53.466765	-2.275605	https://www.rightmove.co.uk/properties/158119919#/?channel=RES_LET
152	Old Lansdowne Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Ask agent	Flat	1.0	1.0	Reduced today	£975 pcm\n£225 pw	53.425089	-2.239505	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET
153	Shireoak Road, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Semi-Detached	3.0	1.0	Reduced today	£1,600 pcm\n£369 pw	53.434583	-2.217039	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET
154	Regent Plaza, 84 Oldfield Road, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2.0	2.0	Added today	£1,300 pcm\n£300 pw	53.477588	-2.26909	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET
155	Youth Close, Manchester, Greater Manchester, M11	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 21/03/2025	Semi-Detached	2.0	2.0	Added today	£1,200 pcm\n£277 pw	53.471677	-2.167455	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET
156	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added today	£2,000 pcm\n£462 pw	53.486884	-2.249354	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET
157	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added today	£2,775 pcm\n£640 pw	53.486934	-2.24952	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET
158	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,405 pcm\n£324 pw	53.48691	-2.249343	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET
159	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added today	£3,000 pcm\n£692 pw	53.48691	-2.249333	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET
160	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,610 pcm\n£372 pw	53.486871	-2.249333	https://www.rightmove.co.uk/properties/158310404#/?channel=RES_LET
161	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added today	£1,504 pcm\n£347 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158309528#/?channel=RES_LET
162	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Studio	\N	1.0	Added today	£1,079 pcm\n£249 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158309519#/?channel=RES_LET
163	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,484 pcm\n£342 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158309399#/?channel=RES_LET
164	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added today	£1,689 pcm\n£390 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158309366#/?channel=RES_LET
165	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added today	£1,475 pcm\n£340 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158309345#/?channel=RES_LET
166	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,139 pcm\n£263 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158309138#/?channel=RES_LET
167	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,250 pcm\n£288 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158308970#/?channel=RES_LET
168	Lauderdale Crescent, Grove Village, Manchester, M13	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 24/03/2025	Semi-Detached	2.0	\N	Added today	£1,400 pcm\n£323 pw	53.466208	-2.221932	https://www.rightmove.co.uk/properties/158308538#/?channel=RES_LET
169	Blantyre Street, Manchester, M15	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: Now	Apartment	1.0	1.0	Reduced today	£1,100 pcm\n£254 pw	53.471332	-2.26164	https://www.rightmove.co.uk/properties/156763559#/?channel=RES_LET
170	High Lane, Chorlton, Manchester	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	Jordan Fishwick, Chorlton	Let available date: 14/03/2025	Ground Flat	1.0	1.0	Added today	£1,050 pcm\n£242 pw	53.438838	-2.275238	https://www.rightmove.co.uk/properties/158308289#/?channel=RES_LET
171	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	7a Howick Place London SW1P 1DZ	UNCLE, London	Let available date: Now	Apartment	\N	1.0	Added today	£1,150 pcm\n£265 pw	53.475138	-2.236252	https://www.rightmove.co.uk/properties/158307581#/?channel=RES_LET
172	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	7a Howick Place London SW1P 1DZ	UNCLE, London	Let available date: Now	Apartment	1.0	1.0	Added today	£1,250 pcm\n£288 pw	53.475138	-2.236252	https://www.rightmove.co.uk/properties/158307503#/?channel=RES_LET
173	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	7a Howick Place London SW1P 1DZ	UNCLE, London	Let available date: Now	Apartment	1.0	1.0	Added today	£1,225 pcm\n£283 pw	53.475138	-2.236252	https://www.rightmove.co.uk/properties/158307461#/?channel=RES_LET
174	Apartment 84A Loom Building, 1 Harrison Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,275 pcm\n£294 pw	53.48022	-2.21906	https://www.rightmove.co.uk/properties/158307557#/?channel=RES_LET
175	Apartment 84 Loom Building, 1 Harrison Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,275 pcm\n£294 pw	53.48022	-2.21906	https://www.rightmove.co.uk/properties/156565448#/?channel=RES_LET
176	Ellesmere Street, Manchester, Greater Manchester, M15	27 Ellesmere Street, Hulme, Manchester, M15 4RU	Allsop, The Trilogy	Let available date: Ask agent	Apartment	1.0	1.0	Added on 12/02/2025	£1,230 pcm\n£284 pw	53.47053	-2.26435	https://www.rightmove.co.uk/properties/158178989#/?channel=RES_LET
177	Rooms @ Seedley Park Road, Salford, M6	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 01/07/2025	House Share	1.0	1.0	Added today	£650 pcm\n£150 pw	53.4868	-2.29881	https://www.rightmove.co.uk/properties/158307095#/?channel=RES_LET
178	Onslow Avenue, Manchester	582 Broadway, Chadderton, Oldham OL9 9NF	Clarke & Co, Chadderton	Let available date: Now	Semi-Detached	4.0	1.0	Added today	£1,400 pcm\n£323 pw	53.51484	-2.16615	https://www.rightmove.co.uk/properties/158306813#/?channel=RES_LET
179	St Margarets Road, Manchester	582 Broadway, Chadderton, Oldham OL9 9NF	Clarke & Co, Chadderton	Let available date: Now	Semi-Detached	3.0	1.0	Added today	£1,350 pcm\n£312 pw	53.52597	-2.17283	https://www.rightmove.co.uk/properties/158306603#/?channel=RES_LET
180	PASHA, 30 Wellington Road North, Stockport	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: Now	Apartment	2.0	1.0	Added today	£1,240 pcm\n£286 pw	53.41174	-2.16559	https://www.rightmove.co.uk/properties/158305355#/?channel=RES_LET
181	Duke, Ridgefield Street, Failsworth	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: 17/02/2025	Apartment	1.0	1.0	Added today	£1,165 pcm\n£269 pw	53.5062	-2.16822	https://www.rightmove.co.uk/properties/158305322#/?channel=RES_LET
182	PASHA, 30 Wellington Road North, Stockport	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: 06/03/2025	Apartment	1.0	1.0	Added today	£1,135 pcm\n£262 pw	53.41174	-2.16559	https://www.rightmove.co.uk/properties/158305292#/?channel=RES_LET
183	DUKE, 160 Oldham Road, Failsworth	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: 28/02/2025	Apartment	1.0	1.0	Added today	£1,060 pcm\n£245 pw	53.5062	-2.16822	https://www.rightmove.co.uk/properties/158305172#/?channel=RES_LET
184	Garden Lane, Manchester, M3	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 09/03/2025	Terraced	3.0	3.0	Added today	£2,700 pcm\n£623 pw	53.48608	-2.253231	https://www.rightmove.co.uk/properties/158305124#/?channel=RES_LET
185	Milliners Wharf, Manchester, M4	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 11/03/2025	Flat	2.0	2.0	Reduced today	£1,450 pcm\n£335 pw	53.48199	-2.218832	https://www.rightmove.co.uk/properties/157406669#/?channel=RES_LET
186	DUKE, 160 Oldham Road, Failsworth	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: 01/04/2025	Ground Flat	1.0	1.0	Added today	£1,035 pcm\n£239 pw	53.5062	-2.16822	https://www.rightmove.co.uk/properties/158305055#/?channel=RES_LET
187	PASHA, 30 Wellington Road North, Stockport	Jactin house 24 Hood Street Manchester M46WX	Livingway Team Ltd, Livingway	Let available date: 21/02/2025	Apartment	1.0	1.0	Added today	£1,015 pcm\n£234 pw	53.41174	-2.16559	https://www.rightmove.co.uk/properties/158304878#/?channel=RES_LET
188	Princess Street, Manchester	Suite 97, 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	South Manchester Homes, Didsbury	Let available date: 21/03/2025	Apartment	2.0	1.0	Added today	£1,250 pcm\n£288 pw	53.47678	-2.23998	https://www.rightmove.co.uk/properties/158304671#/?channel=RES_LET
189	Britton House	Suite 97, 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	South Manchester Homes, Didsbury	Let available date: Now	Apartment	2.0	2.0	Reduced today	£1,100 pcm\n£254 pw	53.49116	-2.23976	https://www.rightmove.co.uk/properties/155659016#/?channel=RES_LET
190	Craston Road, Longsight, Manchester, M13	967 Stockport Road, Levenshulme, Manchester, M19 3NP	Lancashire Properties, Manchester	Let available date: 17/02/2025	Semi-Detached	3.0	1.0	Added today	£1,500 pcm\n£346 pw	53.448918	-2.206406	https://www.rightmove.co.uk/properties/158300357#/?channel=RES_LET
191	Cromwell Street, Heaton Norris, Stockport, Greater Manchester, SK4	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 28/03/2025	Terraced	2.0	1.0	Added today	£950 pcm\n£219 pw	53.416951	-2.168878	https://www.rightmove.co.uk/properties/158300015#/?channel=RES_LET
192	St Kilda, 40 Palatine Road, West Didsbury, Greater Manchester, M20	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 31/03/2025	Apartment	2.0	2.0	Added today	£1,200 pcm\n£277 pw	53.429721	-2.232819	https://www.rightmove.co.uk/properties/158300012#/?channel=RES_LET
193	Spectrum, Blackfriars Lodge, Blackfriars Road, Salford, Greater Manchester, M3	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 18/02/2025	Apartment	2.0	1.0	Reduced today	£1,050 pcm\n£242 pw	53.486046	-2.25032	https://www.rightmove.co.uk/properties/156992240#/?channel=RES_LET
194	Ropework, 33 Little Peter Street, Manchester, M15	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 25/02/2025	Apartment	1.0	1.0	Reduced yesterday	£1,150 pcm\n£265 pw	53.473733	-2.250173	https://www.rightmove.co.uk/properties/156195479#/?channel=RES_LET
195	Blade Tower, 15 Silvercroft Street, Manchester, M15	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£2,250 pcm\n£519 pw	53.471803	-2.254944	https://www.rightmove.co.uk/properties/146165039#/?channel=RES_LET
196	Drayton Manor, Manchester, M20	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	2.0	2.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.404655	-2.228033	https://www.rightmove.co.uk/properties/157429919#/?channel=RES_LET
197	Stockport Road, Manchester, M12	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Semi-Detached	5.0	3.0	Added yesterday	£2,500 pcm\n£577 pw	53.4531	-2.19583	https://www.rightmove.co.uk/properties/158298329#/?channel=RES_LET
198	The Boatmans, 42 City Road East, Southern Gateway, Manchester, M15	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 04/03/2025	Flat	2.0	2.0	Added yesterday	£1,250 pcm\n£288 pw	53.47195	-2.250164	https://www.rightmove.co.uk/properties/158297354#/?channel=RES_LET
199	136 Montana House Princess Street M1 7AF	197-201 Manchester Road, Altrincham, WA14 5NU	Admove, Altrincham	Let available date: Ask agent	Apartment	2.0	1.0	Added yesterday	£1,075 pcm\n£248 pw	53.47345	-2.237036	https://www.rightmove.co.uk/properties/158296610#/?channel=RES_LET
200	KAMPUS, Apt 408 North, 28 Minshull Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£1,925 pcm\n£444 pw	53.47769	-2.23456	https://www.rightmove.co.uk/properties/158296607#/?channel=RES_LET
201	Sky Gardens, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 19/02/2025	Apartment	2.0	2.0	Reduced on 10/01/2025	£1,300 pcm\n£300 pw	53.47098	-2.26179	https://www.rightmove.co.uk/properties/156167261#/?channel=RES_LET
202	Kampus, Apt 201 Minto and Turner, 3 Little David Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£2,100 pcm\n£485 pw	53.47752	-2.2353	https://www.rightmove.co.uk/properties/158296595#/?channel=RES_LET
203	Kampus, Apt 111 Minshul House, 4 Little David Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£2,150 pcm\n£496 pw	53.47752	-2.2353	https://www.rightmove.co.uk/properties/158296568#/?channel=RES_LET
204	\N	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,495 pcm\n£345 pw	53.47733	-2.23425	https://www.rightmove.co.uk/properties/158296529#/?channel=RES_LET
205	Kampus, Apt 408, 44 Aytoun Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,490 pcm\n£344 pw	53.47733	-2.23425	https://www.rightmove.co.uk/properties/158296457#/?channel=RES_LET
206	Kampus 310 Minshull House, 4 Little David Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,550 pcm\n£358 pw	53.47752	-2.2353	https://www.rightmove.co.uk/properties/158296424#/?channel=RES_LET
207	Kampus Apt 404 South Block, 59 Chorlton Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£1,925 pcm\n£444 pw	53.47688	-2.23455	https://www.rightmove.co.uk/properties/158296382#/?channel=RES_LET
208	Clay	15 Middlewood Street, Salford, M5 4YW	Get Living, New Maker Yards	Let available date: 07/05/2025	Apartment	1.0	1.0	Added yesterday	£1,320 pcm\n£305 pw	53.479627	-2.262282	https://www.rightmove.co.uk/properties/158296091#/?channel=RES_LET
209	Maristone Avenue, Salford, M3	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	2.0	2.0	Reduced yesterday	£1,850 pcm\n£427 pw	53.489082	-2.251784	https://www.rightmove.co.uk/properties/157926821#/?channel=RES_LET
210	Monica Grove, Manchester, Greater Manchester, M19	605 Smithdown Road, Allerton, Liverpool, L15 5AG	BRIC Living, Liverpool	Let available date: 01/07/2025	Terraced	6.0	6.0	Reduced yesterday	£780 pcm\n£180 pw	53.44188	-2.20305	https://www.rightmove.co.uk/properties/144682514#/?channel=RES_LET
211	The Peninsula Building, Kersal Way, Salford, M7 3FT	197-201 Manchester Road, Altrincham, WA14 5NU	Admove, Altrincham	Let available date: Ask agent	Apartment	1.0	1.0	Reduced yesterday	£850 pcm\n£196 pw	53.508633	-2.276481	https://www.rightmove.co.uk/properties/157213397#/?channel=RES_LET
212	Crescent, Salford	Suite 11, 8th Floor, St James House, Pendleton Way, Salford, M6 5FW	Thorpe & Co, Salford	Let available date: 11/07/2025	House	8.0	7.0	Reduced yesterday	£1,600 pcm\n£369 pw	53.483161	-2.267686	https://www.rightmove.co.uk/properties/157773698#/?channel=RES_LET
213	Nevile Court, Salford, M7	503-505 Bury New Road, Prestwich, Manchester M25 1AD	Normie Sales & Lettings, North Manchester	Let available date: 08/03/2025	Apartment	1.0	1.0	Added yesterday	£725 pcm\n£167 pw	53.512768	-2.275691	https://www.rightmove.co.uk/properties/158294474#/?channel=RES_LET
214	Renolds House, Lamba Court, Salford, M5 4UB	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£1,350 pcm\n£312 pw	53.473557	-2.267996	https://www.rightmove.co.uk/properties/158294417#/?channel=RES_LET
215	Sky Gardens, 7 Spinners Way, Manchester	CityZEN Property Group, 11 Burford Road, London, E15 2ST	CityZEN, London	Let available date: Now	Flat	1.0	1.0	Reduced yesterday	£975 pcm\n£225 pw	53.471069	-2.261822	https://www.rightmove.co.uk/properties/155350376#/?channel=RES_LET
216	Dene Road, Manchester, M20 2TB	424 Barlow Moor Road, Chorlton Cum Hardy, Manchester, M21 8AD	Property Genius, Manchester	Let available date: 01/05/2025	Semi-Detached	4.0	3.0	Added yesterday	£2,500 pcm\n£577 pw	53.415519	-2.238364	https://www.rightmove.co.uk/properties/158293460#/?channel=RES_LET
217	City Gate, 3 Blantyre Street, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	Hunters, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced yesterday	£1,150 pcm\n£265 pw	53.473007	-2.258897	https://www.rightmove.co.uk/properties/156896657#/?channel=RES_LET
218	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,267 pcm\n£292 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158291408#/?channel=RES_LET
219	Dickenson Road *STUDENT ONLY - AVAILABLE 01/07/2025*	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	Homes2share, Manchester	Let available date: 01/07/2025	Studio	\N	\N	Reduced yesterday	£795 pcm\n£183 pw	53.45536	-2.20326	https://www.rightmove.co.uk/properties/42944848#/?channel=RES_LET
220	Brighton Grove *STUDENT ONLY - AVAILABLE 01/07/2025*	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	Homes2share, Manchester	Let available date: 01/07/2025	Flat	1.0	1.0	Reduced yesterday	£855 pcm\n£197 pw	53.44968	-2.21664	https://www.rightmove.co.uk/properties/42883612#/?channel=RES_LET
221	Brighton Grove *STUDENT ONLY - AVAILABLE 01/07/2025*	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	Homes2share, Manchester	Let available date: 01/07/2025	Flat	1.0	\N	Reduced yesterday	£825 pcm\n£190 pw	53.44968	-2.21664	https://www.rightmove.co.uk/properties/56971487#/?channel=RES_LET
222	Flat 2803, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	3.0	2.0	Added yesterday	£2,600 pcm\n£600 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158290445#/?channel=RES_LET
223	Flat 2801, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,800 pcm\n£415 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158290364#/?channel=RES_LET
224	Flat 3102, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	1.0	1.0	Added yesterday	£1,500 pcm\n£346 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158290199#/?channel=RES_LET
225	Flat 403, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	3.0	2.0	Added yesterday	£2,300 pcm\n£531 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158290139#/?channel=RES_LET
226	\N	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,991 pcm\n£459 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271701#/?channel=RES_LET
227	Flat 409, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	3.0	2.0	Added yesterday	£2,300 pcm\n£531 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158290061#/?channel=RES_LET
228	Flat 204, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,600 pcm\n£369 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289947#/?channel=RES_LET
229	Flat 101, Swan Street House, Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,500 pcm\n£346 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289860#/?channel=RES_LET
230	Flat 414, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	2.0	1.0	Added yesterday	£1,600 pcm\n£369 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289782#/?channel=RES_LET
231	Flat 219, Swan Street House, Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,500 pcm\n£346 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289668#/?channel=RES_LET
232	Fog Lane, Didsbury, M20 6ED	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	Bridgfords Lettings, Didsbury	Let available date: Now	Apartment	2.0	1.0	Reduced yesterday	£1,000 pcm\n£231 pw	53.4219	-2.22011	https://www.rightmove.co.uk/properties/157456400#/?channel=RES_LET
233	Flat 410, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	1.0	1.0	Added yesterday	£1,300 pcm\n£300 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289575#/?channel=RES_LET
234	Flat 108, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	1.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289491#/?channel=RES_LET
235	Flat 1217, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	1.0	1.0	Added yesterday	£1,300 pcm\n£300 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289398#/?channel=RES_LET
236	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added yesterday	£4,290 pcm\n£990 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158288924#/?channel=RES_LET
237	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added yesterday	£3,000 pcm\n£692 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158288423#/?channel=RES_LET
238	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£2,850 pcm\n£658 pw	53.487218	-2.249247	https://www.rightmove.co.uk/properties/158288036#/?channel=RES_LET
239	Whitworth Street, Calico Building, M1	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 23/09/2025	Flat	1.0	1.0	Added yesterday	£1,700 pcm\n£392 pw	53.475974	-2.237783	https://www.rightmove.co.uk/properties/158287994#/?channel=RES_LET
240	Block 3 Spectrum, M3	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£1,100 pcm\n£254 pw	53.48602	-2.25043	https://www.rightmove.co.uk/properties/141910406#/?channel=RES_LET
241	Whittles Croft, Ducie Street	111 Piccadilly, Manchester, M1 2HY	Accommodation.co.uk, covering National	Let available date: 19/03/2025	Flat	2.0	1.0	Added yesterday	£1,300 pcm\n£300 pw	53.479941	-2.228827	https://www.rightmove.co.uk/properties/144952919#/?channel=RES_LET
242	Parsonage Road, Manchester M20 4NG	314 Wilmslow Road Fallowfield Manchester M14 6XQ	Buraq Estates, Manchester	Let available date: 01/07/2025	Detached	9.0	4.0	Reduced yesterday	£5,070 pcm\n£1,170 pw	53.433838	-2.222229	https://www.rightmove.co.uk/properties/155965412#/?channel=RES_LET
243	Sandycroft Avenue, Manchester, Greater Manchester, M22	218 Finney Lane, Heald Green, SK8 3QA	Roger Dean, Heald Green	Let available date: Ask agent	Apartment	2.0	\N	Added yesterday	£1,100 pcm\n£254 pw	53.38371	-2.25719	https://www.rightmove.co.uk/properties/158287175#/?channel=RES_LET
244	Sewerby Street, Hulme, Manchester, Greater Manchester, M16	2 Edward Street, Stockport, SK1 3NQ	Three Sixty Living, Stockport	Let available date: Ask agent	Semi-Detached	2.0	\N	Reduced yesterday	£1,200 pcm\n£277 pw	53.45932	-2.24937	https://www.rightmove.co.uk/properties/157578236#/?channel=RES_LET
245	Wright Street, Manchester, M35	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 28/03/2025	Terraced	2.0	1.0	Added yesterday	£945 pcm\n£218 pw	53.51051	-2.154767	https://www.rightmove.co.uk/properties/158287163#/?channel=RES_LET
246	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£2,035 pcm\n£470 pw	53.487218	-2.249247	https://www.rightmove.co.uk/properties/158286842#/?channel=RES_LET
247	Parsonage Road, Manchester M20 4NG	314 Wilmslow Road Fallowfield Manchester M14 6XQ	Buraq Estates, Manchester	Let available date: 01/07/2025	Detached	10.0	4.0	Reduced yesterday	£5,633 pcm\n£1,300 pw	53.433838	-2.222229	https://www.rightmove.co.uk/properties/155387444#/?channel=RES_LET
248	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: 05/03/2025	Apartment	1.0	1.0	Added yesterday	£1,685 pcm\n£389 pw	53.487146	-2.249484	https://www.rightmove.co.uk/properties/158286374#/?channel=RES_LET
249	Village Gate, M14 6EZ,	183 - 185 Rose Lane, Mossley Hill, Liverpool, L18 5EA	Address Properties, Liverpool	Let available date: 01/08/2025	Flat	2.0	1.0	Added yesterday	£1,000 pcm\n£231 pw	53.442516	-2.221116	https://www.rightmove.co.uk/properties/158286383#/?channel=RES_LET
250	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	2.0	2.0	Added yesterday	£1,840 pcm\n£425 pw	53.487218	-2.249247	https://www.rightmove.co.uk/properties/158286386#/?channel=RES_LET
251	Local Cresent, 4 Hulme Street, M5	3, 28 spaces, Peter House, Oxford Street, Manchester, M1 5AN	Ustay Global, Manchester	Let available date: 01/03/2025	Flat	1.0	1.0	Added on 09/12/2024	£1,200 pcm\n£277 pw	53.482544	-2.265052	https://www.rightmove.co.uk/properties/155798354#/?channel=RES_LET
252	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,660 pcm\n£383 pw	53.487146	-2.249484	https://www.rightmove.co.uk/properties/158286365#/?channel=RES_LET
253	Perrygate Avenue, Manchester, Greater Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Terraced	3.0	2.0	Added yesterday	£2,100 pcm\n£485 pw	53.429471	-2.241574	https://www.rightmove.co.uk/properties/158285987#/?channel=RES_LET
254	Silvercroft Street, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 24/09/2025	Flat	2.0	2.0	Added yesterday	£2,200 pcm\n£508 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158285924#/?channel=RES_LET
255	Victoria Residence, 16 Silvercroft Street, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 11/09/2025	Flat	2.0	2.0	Added yesterday	£2,250 pcm\n£519 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158285582#/?channel=RES_LET
256	Deansgate, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	Hunters, Manchester	Let available date: 17/02/2025	Apartment	\N	1.0	Reduced yesterday	£925 pcm\n£213 pw	53.478759	-2.24914	https://www.rightmove.co.uk/properties/157526585#/?channel=RES_LET
257	Silvercroft Street, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 29/08/2025	Flat	1.0	1.0	Added yesterday	£1,700 pcm\n£392 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158284877#/?channel=RES_LET
258	Three60, Silvercroft Street, Manchester, Greater Manchester, M15	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 01/04/2025	Apartment	2.0	2.0	Added yesterday	£2,205 pcm\n£509 pw	53.47207	-2.25471	https://www.rightmove.co.uk/properties/158283800#/?channel=RES_LET
259	Downtown, 9 Woden Street, Salford, M5	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 10/03/2025	Flat	2.0	2.0	Added yesterday	£1,300 pcm\n£300 pw	53.47371	-2.26645	https://www.rightmove.co.uk/properties/158284034#/?channel=RES_LET
260	11 Silvercroft Street, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 30/09/2025	Flat	2.0	2.0	Added yesterday	£2,300 pcm\n£531 pw	53.47207	-2.25471	https://www.rightmove.co.uk/properties/158284007#/?channel=RES_LET
261	Exchange Point, New Kings Yard, Salford	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 24/02/2025	Apartment	2.0	1.0	Added yesterday	£1,200 pcm\n£277 pw	53.48505	-2.246358	https://www.rightmove.co.uk/properties/158283899#/?channel=RES_LET
262	Derby Avenue, Salford	Suite 4, The Granary, Worsley, Manchester, M28 2EB	Hunters Worsley, Worsley	Let available date: 17/03/2025	Terraced	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.483436	-2.302838	https://www.rightmove.co.uk/properties/158283767#/?channel=RES_LET
263	Harrop Street, Gorton	416 Wilmslow Road, Withington, Manchester M20 3BW	Bridgfords Lettings, Withington	Let available date: Now	House	2.0	1.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.46649	-2.15782	https://www.rightmove.co.uk/properties/157586192#/?channel=RES_LET
264	Silvercroft Street, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 19/09/2025	Flat	1.0	1.0	Added yesterday	£1,750 pcm\n£404 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158283446#/?channel=RES_LET
265	The Riley Building, Derwent Street	249 Deansgate, Manchester, M3 4EN	Reside, Manchester	Let available date: Now	Apartment	3.0	2.0	Reduced yesterday	£1,595 pcm\n£368 pw	53.474773	-2.265226	https://www.rightmove.co.uk/properties/155165555#/?channel=RES_LET
266	Vallea Court, 1 Red Bank, Green Quarter, Manchester, M4	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 17/03/2025	Flat	1.0	1.0	Added yesterday	£895 pcm\n£207 pw	53.489909	-2.239509	https://www.rightmove.co.uk/properties/158283005#/?channel=RES_LET
267	Excelsior Works, Castlefield, M15 4LY	249 Deansgate, Manchester, M3 4EN	Reside, Manchester	Let available date: 25/02/2025	Apartment	1.0	1.0	Added yesterday	£1,180 pcm\n£272 pw	53.471603	-2.263978	https://www.rightmove.co.uk/properties/158282960#/?channel=RES_LET
268	11 Silvercroft Street, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 23/09/2025	Flat	3.0	2.0	Added yesterday	£2,300 pcm\n£531 pw	53.47207	-2.25471	https://www.rightmove.co.uk/properties/158283011#/?channel=RES_LET
269	Meadow Mill, Stockport	St John's Court 19B Quay Street, Manchester, M3 3HN	Orlando Reid, Manchester	Let available date: Now	Apartment	3.0	2.0	Added yesterday	£1,350 pcm\n£312 pw	53.417762	-2.152586	https://www.rightmove.co.uk/properties/158282651#/?channel=RES_LET
270	St Wilfrids Street, Hulme, Manchester, M15	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 21/03/2025	Flat	2.0	2.0	Added yesterday	£1,100 pcm\n£254 pw	53.469028	-2.254606	https://www.rightmove.co.uk/properties/158282405#/?channel=RES_LET
271	The Burton Building, 90-94 Oldham Street, Northern Quarter, Manchester, M4 1LJ	52 Port Street, Northern Quarter, Manchester, M1 2EQ	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	Let available date: 21/02/2025	Apartment	2.0	1.0	Added yesterday	£1,450 pcm\n£335 pw	53.484313	-2.232877	https://www.rightmove.co.uk/properties/158282063#/?channel=RES_LET
272	Hudson Court, Ardwick Green North	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced yesterday	£1,300 pcm\n£300 pw	53.471645	-2.223699	https://www.rightmove.co.uk/properties/157263494#/?channel=RES_LET
273	Bankside, Collier Street, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 28/04/2025	Apartment	2.0	2.0	Added yesterday	£1,850 pcm\n£427 pw	53.474887	-2.249966	https://www.rightmove.co.uk/properties/158281466#/?channel=RES_LET
274	The Blade, 15 Silvercroft St, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 28/09/2025	Flat	2.0	2.0	Added yesterday	£2,350 pcm\n£542 pw	53.47162	-2.25501	https://www.rightmove.co.uk/properties/158284127#/?channel=RES_LET
275	No.1 Old Trafford, M17	249 Deansgate, Manchester, M3 4EN	Reside, Manchester	Let available date: 17/02/2025	Apartment	2.0	2.0	Reduced yesterday	£1,350 pcm\n£312 pw	53.465255	-2.285514	https://www.rightmove.co.uk/properties/157705121#/?channel=RES_LET
276	Manchester Waters, Old Trafford, M16	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 15/04/2025	Apartment	1.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.46673	-2.27562	https://www.rightmove.co.uk/properties/158279801#/?channel=RES_LET
277	Hamilton Road, Manchester	896 Stockport Road, Levenshulme, Manchester, M19 3AD	Solomon Estates, Manchester	Let available date: Now	House Share	1.0	2.0	Added yesterday	£700 pcm\n£162 pw	53.452	-2.19896	https://www.rightmove.co.uk/properties/158281001#/?channel=RES_LET
278	Media City Salford Quays M50	257 Deansgate, Manchester, M3 4EN	Kingsdene Ltd, Manchester	Let available date: 03/03/2025	Apartment	1.0	1.0	Added yesterday	£1,150 pcm\n£265 pw	53.47404	-2.29947	https://www.rightmove.co.uk/properties/158280959#/?channel=RES_LET
279	Bankside, Collier Street, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 28/04/2025	Apartment	2.0	2.0	Reduced yesterday	£1,750 pcm\n£404 pw	53.486826	-2.253024	https://www.rightmove.co.uk/properties/158280617#/?channel=RES_LET
280	Allanson Road, Northenden, M22 4NU	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	Bridgfords Lettings, Didsbury	Let available date: Now	House	2.0	1.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.40762	-2.25628	https://www.rightmove.co.uk/properties/157314830#/?channel=RES_LET
281	Victoria Residence, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 16/09/2025	Flat	2.0	2.0	Added yesterday	£2,400 pcm\n£554 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158283245#/?channel=RES_LET
282	Dawn Court, Wilbraham Road, Manchester	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	Jordan Fishwick, Didsbury	Let available date: 06/03/2025	Apartment	2.0	2.0	Added yesterday	£1,225 pcm\n£283 pw	53.443267	-2.223026	https://www.rightmove.co.uk/properties/158280080#/?channel=RES_LET
283	Victoria Residence, 16 Silvercroft Street, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 05/09/2025	Flat	1.0	1.0	Added yesterday	£1,700 pcm\n£392 pw	53.472099	-2.255593	https://www.rightmove.co.uk/properties/158279861#/?channel=RES_LET
284	Oak Road, ,	202 Ashby Square, Loughborough, LE11 5AA	loc8me, Covering Manchester	Let available date: 09/09/2025	House	5.0	\N	Added yesterday	£589 pcm\n£136 pw	53.500728	-2.268379	https://www.rightmove.co.uk/properties/158279843#/?channel=RES_LET
285	Urban Green, MN16	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 01/04/2025	Apartment	1.0	1.0	Added yesterday	£1,125 pcm\n£260 pw	53.45971	-2.27527	https://www.rightmove.co.uk/properties/158279828#/?channel=RES_LET
286	The Blade, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 21/04/2025	Apartment	2.0	2.0	Added yesterday	£1,800 pcm\n£415 pw	53.47216	-2.25472	https://www.rightmove.co.uk/properties/158279825#/?channel=RES_LET
287	The Blade, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 15/04/2025	Apartment	2.0	2.0	Added yesterday	£2,200 pcm\n£508 pw	53.47224	-2.25578	https://www.rightmove.co.uk/properties/158279822#/?channel=RES_LET
288	New Cross Central, M2	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 07/04/2025	Apartment	2.0	2.0	Added yesterday	£1,600 pcm\n£369 pw	53.48596	-2.2331	https://www.rightmove.co.uk/properties/158279816#/?channel=RES_LET
289	New Cross Central, M2	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 08/04/2025	Apartment	1.0	1.0	Added yesterday	£1,350 pcm\n£312 pw	53.48596	-2.2331	https://www.rightmove.co.uk/properties/158279813#/?channel=RES_LET
290	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Studio	\N	1.0	Added yesterday	£1,755 pcm\n£405 pw	53.47215	-2.24363	https://www.rightmove.co.uk/properties/87084207#/?channel=RES_LET
291	Trafford Wharf, M17	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 22/04/2025	Apartment	1.0	1.0	Added yesterday	£1,050 pcm\n£242 pw	53.46508	-2.28615	https://www.rightmove.co.uk/properties/158279807#/?channel=RES_LET
292	Atelier, M3	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 23/04/2025	Apartment	1.0	1.0	Added yesterday	£1,150 pcm\n£265 pw	53.48312	-2.26006	https://www.rightmove.co.uk/properties/158279786#/?channel=RES_LET
293	Elizabeth Tower, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 07/03/2025	Apartment	2.0	2.0	Added yesterday	£1,850 pcm\n£427 pw	53.47224	-2.25578	https://www.rightmove.co.uk/properties/158279789#/?channel=RES_LET
294	Manchester Waters, Old Trafford, M16	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 15/04/2025	Apartment	1.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.46673	-2.27562	https://www.rightmove.co.uk/properties/158279801#/?channel=RES_LET
295	Seymour Grove, Manchester, M16	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 20/03/2025	Flat	1.0	1.0	Reduced yesterday	£1,100 pcm\n£254 pw	53.46015	-2.276427	https://www.rightmove.co.uk/properties/157885685#/?channel=RES_LET
296	Collier Street, Manchester, M3 4NA	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: 07/03/2025	Apartment	2.0	2.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.475758	-2.253017	https://www.rightmove.co.uk/properties/157643099#/?channel=RES_LET
297	Tempus Tower, Mirabel Street, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 26/02/2025	Apartment	1.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.488029	-2.246875	https://www.rightmove.co.uk/properties/158278553#/?channel=RES_LET
298	East Tower, 9 Owen Street, Manchester, M15	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 10/04/2025	Apartment	3.0	2.0	Reduced yesterday	£2,850 pcm\n£658 pw	53.47212	-2.250897	https://www.rightmove.co.uk/properties/152968910#/?channel=RES_LET
299	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,685 pcm\n£389 pw	53.486897	-2.249354	https://www.rightmove.co.uk/properties/158278022#/?channel=RES_LET
300	Britton House, 21 Lord Street, Manchester, M4	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 24/02/2025	Apartment	1.0	1.0	Reduced yesterday	£1,000 pcm\n£231 pw	53.491305	-2.239761	https://www.rightmove.co.uk/properties/143585015#/?channel=RES_LET
301	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Studio	\N	1.0	Added on 13/02/2025	£1,211 pcm\n£279 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158225144#/?channel=RES_LET
302	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£2,535 pcm\n£585 pw	53.487218	-2.249247	https://www.rightmove.co.uk/properties/158176907#/?channel=RES_LET
303	Finlay's Warehouse, 56 Dales St, Northern Quarter	332-334 Deansgate, Manchester, M3 4LY	Julie Twist Properties, Manchester	Let available date: 21/03/2025	Apartment	2.0	\N	Added yesterday	£1,450 pcm\n£335 pw	53.48075	-2.23337	https://www.rightmove.co.uk/properties/158277278#/?channel=RES_LET
304	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,405 pcm\n£324 pw	53.48691	-2.249322	https://www.rightmove.co.uk/properties/158277263#/?channel=RES_LET
305	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added yesterday	£3,250 pcm\n£750 pw	53.486916	-2.249376	https://www.rightmove.co.uk/properties/158277236#/?channel=RES_LET
306	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added yesterday	£1,690 pcm\n£390 pw	53.486877	-2.249354	https://www.rightmove.co.uk/properties/158277227#/?channel=RES_LET
307	The Boulevard, Manchester, Greater Manchester, M20	764b Wilmslow Road, Didsbury, Manchester, M20 2DR	Julian Wadden, Didsbury	Let available date: 19/02/2025	Flat	2.0	1.0	Added yesterday	£1,050 pcm\n£242 pw	53.43037	-2.247663	https://www.rightmove.co.uk/properties/158277053#/?channel=RES_LET
308	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added yesterday	£2,775 pcm\n£640 pw	53.48689	-2.249279	https://www.rightmove.co.uk/properties/158276894#/?channel=RES_LET
309	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,610 pcm\n£372 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158276648#/?channel=RES_LET
310	Mitford Street, Stretford, Manchester, M32 8AQ	372 Palatine Road, Manchester, M22 4FZ	Hunters, South Manchester	Let available date: 24/03/2025	Flat	1.0	1.0	Added yesterday	£575 pcm\n£133 pw	53.446548	-2.310095	https://www.rightmove.co.uk/properties/158276459#/?channel=RES_LET
311	Potato Wharf, Wilson Building, M3	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 17/02/2025	Apartment	1.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.47483	-2.25991	https://www.rightmove.co.uk/properties/158276135#/?channel=RES_LET
312	Davenport Avenue, Withington, M20	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	Montrose Properties Ltd, West Didsbury	Let available date: 01/07/2025	Terraced	3.0	1.0	Added yesterday	£1,950 pcm\n£450 pw	53.43563	-2.22861	https://www.rightmove.co.uk/properties/158276084#/?channel=RES_LET
313	St Davids Court, Cheetham Hill	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 20/03/2025	Apartment	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.497528	-2.243506	https://www.rightmove.co.uk/properties/158275970#/?channel=RES_LET
314	Castlegate, 2 Chester Road	332-334 Deansgate, Manchester, M3 4LY	Julie Twist Properties, Manchester	Let available date: 03/03/2025	Apartment	2.0	2.0	Added yesterday	£1,450 pcm\n£335 pw	53.47333	-2.25487	https://www.rightmove.co.uk/properties/158275703#/?channel=RES_LET
315	Bishops Corner, 321 Stretford Rd, Hulme, Manchester, M15	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 17/03/2025	Flat	2.0	1.0	Added yesterday	£1,200 pcm\n£277 pw	53.467048	-2.249789	https://www.rightmove.co.uk/properties/158275487#/?channel=RES_LET
316	Bromshill Drive, Salford	Jactin House 24 Hood Street Ancoats Urban Village Manchester M4 6WX	Northern Group, Manchester	Let available date: 24/02/2025	Semi-Detached	3.0	2.0	Reduced yesterday	£1,350 pcm\n£312 pw	53.5012	-2.25112	https://www.rightmove.co.uk/properties/156122393#/?channel=RES_LET
317	Ladybarn Lane, Manchester, Greater Manchester, M14	Manchester	Welcome To Manchester Lettings, Covering Manchester	Let available date: Now	Semi-Detached	7.0	\N	Reduced yesterday	£2,500 pcm\n£577 pw	53.4406	-2.21493	https://www.rightmove.co.uk/properties/158201399#/?channel=RES_LET
318	Owen Street, Manchester, Greater Manchester, M15	Suite 142 51 Pinfold Street Birmingham B2 4AY	Complete RPI, Birmingham	Let available date: Now	Apartment	2.0	\N	Added yesterday	£1,900 pcm\n£438 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158275064#/?channel=RES_LET
319	Ellesmere Road, Eccles, Manchester, M30	25-27 Monton Green, Monton, Eccles, Manchester, M30 9LL	Thornley Groves, Monton	Let available date: 21/03/2025	Flat	2.0	2.0	Added yesterday	£1,150 pcm\n£265 pw	53.49137	-2.342264	https://www.rightmove.co.uk/properties/158274281#/?channel=RES_LET
320	Spath Road, Ravenswood, M20	503-505 Bury New Road, Prestwich, Manchester M25 1AD	Normie Sales & Lettings, North Manchester	Let available date: Now	Flat	2.0	1.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.4208	-2.245318	https://www.rightmove.co.uk/properties/157157366#/?channel=RES_LET
321	Dalton Street, Manchester, Greater Manchester, M40	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: Now	Semi-Detached	3.0	1.0	Added yesterday	£1,500 pcm\n£346 pw	53.492097	-2.228637	https://www.rightmove.co.uk/properties/158273477#/?channel=RES_LET
322	The Chambers, Booths Street, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.480193	-2.243537	https://www.rightmove.co.uk/properties/157294841#/?channel=RES_LET
323	New Bailey Street, Manchester, Greater Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 21/03/2025	Apartment	1.0	1.0	Added yesterday	£1,350 pcm\n£312 pw	53.48215	-2.25312	https://www.rightmove.co.uk/properties/158272955#/?channel=RES_LET
324	Tib Street, Manchester, Greater Manchester, M4	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Ask agent	Apartment	2.0	\N	Reduced yesterday	£1,350 pcm\n£312 pw	53.48263	-2.23715	https://www.rightmove.co.uk/properties/132736481#/?channel=RES_LET
325	1 River Street, Southern Gateway, Manchester, M1	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 13/03/2025	Flat	2.0	2.0	Added yesterday	£1,300 pcm\n£300 pw	53.473395	-2.242444	https://www.rightmove.co.uk/properties/158272796#/?channel=RES_LET
326	The Blade, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 15/04/2025	Apartment	2.0	2.0	Added yesterday	£2,200 pcm\n£508 pw	53.47224	-2.25578	https://www.rightmove.co.uk/properties/158279822#/?channel=RES_LET
327	Berwick Avenue, Heaton Moor, Stockport, SK4 3AT	Wren House 108 Palatine Road, Didsbury, Manchester, M20 3ZA	Wren Properties Ltd, Didsbury	Let available date: 01/03/2025	Semi-Detached	3.0	1.0	Reduced yesterday	£1,275 pcm\n£294 pw	53.414476	-2.21245	https://www.rightmove.co.uk/properties/157100198#/?channel=RES_LET
328	Apartment 1413, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£2,162 pcm\n£499 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158272484#/?channel=RES_LET
329	Apartment 1214, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£2,129 pcm\n£491 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158272460#/?channel=RES_LET
330	Apartment 2703, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£2,316 pcm\n£534 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158272424#/?channel=RES_LET
331	The Gate, Meadowside, M4	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 19/03/2025	Apartment	2.0	2.0	Reduced yesterday	£1,500 pcm\n£346 pw	53.48874	-2.23733	https://www.rightmove.co.uk/properties/157040021#/?channel=RES_LET
332	Apartment 1206, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£2,050 pcm\n£473 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158272223#/?channel=RES_LET
333	Apartment 508, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£2,075 pcm\n£479 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158272094#/?channel=RES_LET
334	Apartment 2604, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	3.0	3.0	Reduced yesterday	£2,983 pcm\n£688 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271899#/?channel=RES_LET
335	Apartment 1214, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£1,908 pcm\n£440 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271809#/?channel=RES_LET
336	Apartment 707, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,991 pcm\n£459 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271701#/?channel=RES_LET
337	Apartment 721, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	1.0	1.0	Added yesterday	£1,600 pcm\n£369 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271590#/?channel=RES_LET
338	Apartment 1006, 7 Symphony Park, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Studio	\N	1.0	Added yesterday	£1,498 pcm\n£346 pw	53.47328	-2.2392	https://www.rightmove.co.uk/properties/158271461#/?channel=RES_LET
339	Apartment 904, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£1,975 pcm\n£456 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158271338#/?channel=RES_LET
340	Apartment 208, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£2,050 pcm\n£473 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158271215#/?channel=RES_LET
341	Apartment 110, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£2,058 pcm\n£475 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158271152#/?channel=RES_LET
342	River Street, Manchester M1 5BB	Karsons Lettings Innospace, 2nd Floor, Turing House, 5 Archway, Manchester M15 5RL	Karsons Lettings, Manchester	Let available date: 01/03/2025	Apartment	2.0	\N	Reduced yesterday	£1,175 pcm\n£271 pw	53.47351	-2.24251	https://www.rightmove.co.uk/properties/31399351#/?channel=RES_LET
343	Boston Street, Manchester, Greater Manchester, M15	104-106 Market Street, Hyde, SK14 1ES	Taylor & Wood Estate Agents, Hyde	Let available date: Now	Apartment	2.0	\N	Reduced yesterday	£1,000 pcm\n£231 pw	53.46247	-2.24863	https://www.rightmove.co.uk/properties/157818002#/?channel=RES_LET
344	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Studio	\N	\N	Added yesterday	£1,316 pcm\n£304 pw	53.47837	-2.25708	https://www.rightmove.co.uk/properties/158270537#/?channel=RES_LET
345	Union, East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Studio	\N	\N	Added yesterday	£1,170 pcm\n£270 pw	53.47834	-2.25723	https://www.rightmove.co.uk/properties/158270483#/?channel=RES_LET
346	Union, East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Studio	\N	\N	Added yesterday	£1,120 pcm\n£258 pw	53.47834	-2.25723	https://www.rightmove.co.uk/properties/158270402#/?channel=RES_LET
347	Cambridge Street, Manchester, M1	50 Bridge Street, Manchester, M3 3BW	Savills Lettings, Manchester	Let available date: 26/03/2025	Apartment	2.0	2.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.473418	-2.243791	https://www.rightmove.co.uk/properties/157729610#/?channel=RES_LET
348	Express Networks, Ancoats	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.485052	-2.231871	https://www.rightmove.co.uk/properties/158270375#/?channel=RES_LET
349	Lancaster House, Whitworth Street, Manchester, M1 6LQ	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: 15/03/2025	Apartment	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.475679	-2.237864	https://www.rightmove.co.uk/properties/158269553#/?channel=RES_LET
350	Anvil	15 Middlewood Street, Salford, M5 4YW	Get Living, New Maker Yards	Let available date: Now	Apartment	1.0	1.0	Added on 10/02/2025	£1,150 pcm\n£265 pw	53.479627	-2.262282	https://www.rightmove.co.uk/properties/158038433#/?channel=RES_LET
351	Red Building, Ludgate Hill, Manchester, Manchester, M4 4BW	52 Port Street, Northern Quarter, Manchester, M1 2EQ	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	Let available date: 21/03/2025	Apartment	2.0	1.0	Added yesterday	£1,130 pcm\n£261 pw	53.488088	-2.232822	https://www.rightmove.co.uk/properties/158269310#/?channel=RES_LET
352	Urban Green, 75 Seymour Grove, Manchester, M16	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.460099	-2.274122	https://www.rightmove.co.uk/properties/146750435#/?channel=RES_LET
353	Viadux, 42 Great Bridgewater Street, Manchester, M1	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,900 pcm\n£438 pw	53.474887	-2.249966	https://www.rightmove.co.uk/properties/152724128#/?channel=RES_LET
354	Leegate Road, Heaton Moor, Stockport, SK4	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	Julian Wadden, Heaton Moor	Let available date: Now	Flat	1.0	1.0	Added yesterday	£850 pcm\n£196 pw	53.423139	-2.194875	https://www.rightmove.co.uk/properties/158268506#/?channel=RES_LET
355	Burton Road, West Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: Now	Apartment	3.0	2.0	Reduced yesterday	£1,750 pcm\n£404 pw	53.427404	-2.24052	https://www.rightmove.co.uk/properties/156598532#/?channel=RES_LET
356	Rissington Avenue, Manchester	46 Church Road Gatley SK8 4NQ	Callaghans, Gatley	Let available date: Ask agent	Terraced	2.0	1.0	Added yesterday	£1,200 pcm\n£277 pw	53.394268	-2.276926	https://www.rightmove.co.uk/properties/158268254#/?channel=RES_LET
357	Westway, Droylsden, Manchester, Tameside, M43	Suite 2, The Old Court House, Chapel Street, Dukinfield, SK16 4DT	@ThePlace, Dukinfield	Let available date: Ask agent	Terraced	3.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.474319	-2.145694	https://www.rightmove.co.uk/properties/158268101#/?channel=RES_LET
358	Botanica, Chester Road, Manchester, M15	Chester Road Manchester, M15 4YH	Cortland, Botanica	Let available date: 19/02/2025	Apartment	2.0	2.0	Added yesterday	£1,530 pcm\n£353 pw	53.46889	-2.266064	https://www.rightmove.co.uk/properties/158267954#/?channel=RES_LET
359	Ruskin Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	6.0	2.0	Added yesterday	£4,345 pcm\n£1,003 pw	53.456805	-2.234442	https://www.rightmove.co.uk/properties/158267945#/?channel=RES_LET
360	Ruskin Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/08/2025	House	6.0	2.0	Added yesterday	£4,525 pcm\n£1,044 pw	53.456777	-2.232907	https://www.rightmove.co.uk/properties/158267807#/?channel=RES_LET
361	Deramore Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	6.0	2.0	Reduced yesterday	£4,782 pcm\n£1,104 pw	53.455261	-2.231394	https://www.rightmove.co.uk/properties/158267816#/?channel=RES_LET
362	Claremont Road, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 15/07/2025	House	1.0	1.0	Added yesterday	£981 pcm\n£226 pw	53.45262	-2.234525	https://www.rightmove.co.uk/properties/158267798#/?channel=RES_LET
363	Ossory Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	6.0	2.0	Added yesterday	£4,217 pcm\n£973 pw	53.455296	-2.230606	https://www.rightmove.co.uk/properties/158267564#/?channel=RES_LET
364	Crofton Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	5.0	2.0	Reduced yesterday	£3,621 pcm\n£836 pw	53.455311	-2.232286	https://www.rightmove.co.uk/properties/158267561#/?channel=RES_LET
365	Carlton Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 12/09/2025	House	3.0	1.0	Added yesterday	£2,494 pcm\n£576 pw	53.452397	-2.233204	https://www.rightmove.co.uk/properties/158267555#/?channel=RES_LET
366	Driffield Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	5.0	2.0	Reduced yesterday	£3,621 pcm\n£836 pw	53.452034	-2.238598	https://www.rightmove.co.uk/properties/158267552#/?channel=RES_LET
367	Palatine Road, West Didsbury, M20	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	Montrose Properties Ltd, West Didsbury	Let available date: 14/03/2025	Flat	4.0	2.0	Added yesterday	£1,950 pcm\n£450 pw	53.42213	-2.24132	https://www.rightmove.co.uk/properties/158267537#/?channel=RES_LET
368	Haddon Street, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	3.0	1.0	Added yesterday	£2,172 pcm\n£501 pw	53.497029	-2.273948	https://www.rightmove.co.uk/properties/158267501#/?channel=RES_LET
369	Mildred Street, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	4.0	2.0	Added yesterday	£3,068 pcm\n£708 pw	53.499943	-2.268486	https://www.rightmove.co.uk/properties/158267492#/?channel=RES_LET
370	Gerald Road, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2029	House	3.0	1.0	Added yesterday	£2,301 pcm\n£531 pw	53.497452	-2.278321	https://www.rightmove.co.uk/properties/158267498#/?channel=RES_LET
371	Claremont Road, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	5.0	2.0	Reduced yesterday	£3,557 pcm\n£821 pw	53.452588	-2.23122	https://www.rightmove.co.uk/properties/158267489#/?channel=RES_LET
372	Botanica, Chester Road, Manchester, M15	Chester Road Manchester, M15 4YH	Cortland, Botanica	Let available date: 19/02/2025	Apartment	2.0	2.0	Added yesterday	£1,730 pcm\n£399 pw	53.46889	-2.266064	https://www.rightmove.co.uk/properties/158267393#/?channel=RES_LET
373	Botanica, Chester Road, Manchester, M15	Chester Road Manchester, M15 4YH	Cortland, Botanica	Let available date: 19/02/2025	Apartment	1.0	1.0	Added yesterday	£1,225 pcm\n£283 pw	53.46889	-2.266064	https://www.rightmove.co.uk/properties/158267384#/?channel=RES_LET
374	Grove House, Skerton Road, Manchester	CityZEN Property Group, 11 Burford Road, London, E15 2ST	CityZEN, London	Let available date: Now	Flat	2.0	1.0	Added on 13/02/2025	£1,343 pcm\n£310 pw	53.459918	-2.277049	https://www.rightmove.co.uk/properties/158215868#/?channel=RES_LET
375	Mildred Street, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	4.0	2.0	Added yesterday	£2,982 pcm\n£688 pw	53.500087	-2.268871	https://www.rightmove.co.uk/properties/158267363#/?channel=RES_LET
376	Botanica, Chester Road, Manchester, M15	Chester Road Manchester, M15 4YH	Cortland, Botanica	Let available date: 19/02/2025	Apartment	1.0	1.0	Added yesterday	£1,275 pcm\n£294 pw	53.46889	-2.266064	https://www.rightmove.co.uk/properties/158267375#/?channel=RES_LET
377	Romney Street, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 08/09/2025	House	3.0	1.0	Added yesterday	£2,108 pcm\n£486 pw	53.497946	-2.280074	https://www.rightmove.co.uk/properties/158267294#/?channel=RES_LET
378	Romney Street, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	3.0	1.0	Added yesterday	£2,301 pcm\n£531 pw	53.498122	-2.279764	https://www.rightmove.co.uk/properties/158267150#/?channel=RES_LET
379	Wallace Avenue, Rusholme, £120pppw	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	Drake & Co, Rusholme	Let available date: 02/08/2025	House	4.0	\N	Added yesterday	£520 pcm\n£120 pw	53.45206	-2.218628	https://www.rightmove.co.uk/properties/158267078#/?channel=RES_LET
380	Hall Grove, Rusholme, £130pppw	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	Drake & Co, Rusholme	Let available date: 02/08/2025	House	4.0	\N	Added yesterday	£563 pcm\n£130 pw	53.452022	-2.217813	https://www.rightmove.co.uk/properties/158267057#/?channel=RES_LET
381	Seaford Road, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 08/09/2025	House	3.0	1.0	Added yesterday	£2,301 pcm\n£531 pw	53.496929	-2.273601	https://www.rightmove.co.uk/properties/158267054#/?channel=RES_LET
382	Gerald Road, Salford	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	3.0	1.0	Added yesterday	£2,172 pcm\n£501 pw	53.497846	-2.280583	https://www.rightmove.co.uk/properties/158267051#/?channel=RES_LET
383	Dickenson Road, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 08/09/2025	House	3.0	1.0	Added yesterday	£2,430 pcm\n£561 pw	53.455817	-2.203312	https://www.rightmove.co.uk/properties/158267048#/?channel=RES_LET
384	Hall Road, Rusholme, £120pppw	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	Drake & Co, Rusholme	Let available date: 02/08/2025	House	4.0	\N	Added yesterday	£520 pcm\n£120 pw	53.452354	-2.217227	https://www.rightmove.co.uk/properties/158267027#/?channel=RES_LET
385	Angel Meadows, Naples Street	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: 19/03/2025	Apartment	2.0	2.0	Added yesterday	£1,250 pcm\n£288 pw	53.48846	-2.235748	https://www.rightmove.co.uk/properties/158267006#/?channel=RES_LET
386	Kippax Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 06/09/2025	House	7.0	2.0	Added yesterday	£4,920 pcm\n£1,135 pw	53.455579	-2.234216	https://www.rightmove.co.uk/properties/158266991#/?channel=RES_LET
387	Hitchen Street, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	George Adams (Estate Agents) Ltd, Manchester	Let available date: 07/07/2025	House	3.0	2.0	Added yesterday	£1,600 pcm\n£369 pw	53.464889	-2.220115	https://www.rightmove.co.uk/properties/158266865#/?channel=RES_LET
388	Union Street, Manchester, M4	Marsh Farm House Lower Burnham Road Latchingdon CM3 6HQ	Emoov, Chelmsford	Let available date: 24/03/2025	Flat	1.0	1.0	Added yesterday	£1,150 pcm\n£265 pw	53.4834	-2.23763	https://www.rightmove.co.uk/properties/158266790#/?channel=RES_LET
389	Hall Road, Rusholme, £120pppw	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	Drake & Co, Rusholme	Let available date: 02/08/2025	House	4.0	\N	Added yesterday	£520 pcm\n£120 pw	53.452224	-2.217235	https://www.rightmove.co.uk/properties/158266736#/?channel=RES_LET
390	Block A Albion Mill, 12 Pollard Street, Ancoats, Manchester, M4	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 28/02/2025	Apartment	2.0	2.0	Added yesterday	£1,550 pcm\n£358 pw	53.479989	-2.22072	https://www.rightmove.co.uk/properties/158266088#/?channel=RES_LET
391	The Mayfair, Palatine Road, Didsbury M20 3LS	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	Bridgfords Lettings, Didsbury	Let available date: 21/03/2025	Apartment	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.42843	-2.23308	https://www.rightmove.co.uk/properties/158266040#/?channel=RES_LET
392	The Quay Loop Road Harbour City M50	The Quays, Salford, M50 3SF	Duet, Duet	Let available date: Now	Flat	2.0	2.0	Added yesterday	£1,355 pcm\n£313 pw	53.47407	-2.28847	https://www.rightmove.co.uk/properties/158265791#/?channel=RES_LET
393	Nuovo, Northern Quarter	6-14 Great Ancoats Street, Manchester, M4 5AZ	Buckley Frayne, Manchester	Let available date: 01/05/2025	Apartment	1.0	1.0	Added yesterday	£1,150 pcm\n£265 pw	53.483612	-2.229896	https://www.rightmove.co.uk/properties/158265692#/?channel=RES_LET
394	The Bridge, 40 Dearmans Place, Salford, Greater Manchester, M3	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 20/03/2025	Flat	2.0	2.0	Added yesterday	£1,295 pcm\n£299 pw	53.482512	-2.258138	https://www.rightmove.co.uk/properties/158265038#/?channel=RES_LET
395	Printers Close, Heaton Mersey, Stockport	450 Didsbury Road Stockport SK4 3BS	Joules Estate Agency, Heaton Mersey	Let available date: 21/02/2025	Flat	2.0	2.0	Added yesterday	£1,100 pcm\n£254 pw	53.411098	-2.215049	https://www.rightmove.co.uk/properties/158264861#/?channel=RES_LET
396	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£975 pcm\n£225 pw	53.47841	-2.25722	https://www.rightmove.co.uk/properties/158264147#/?channel=RES_LET
397	Pinnington Lane, Stretford, Trafford, M32 0AA	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	Terraced	3.0	1.0	Added yesterday	£1,200 pcm\n£277 pw	53.44687	-2.30997	https://www.rightmove.co.uk/properties/158264132#/?channel=RES_LET
398	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Now	Flat Share	1.0	1.0	Added yesterday	£990 pcm\n£228 pw	53.47902	-2.25643	https://www.rightmove.co.uk/properties/158264075#/?channel=RES_LET
399	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 06/03/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,135 pcm\n£262 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159300#/?channel=RES_LET
400	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£1,014 pcm\n£234 pw	53.47841	-2.25722	https://www.rightmove.co.uk/properties/158263850#/?channel=RES_LET
401	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£1,009 pcm\n£233 pw	53.47831	-2.25729	https://www.rightmove.co.uk/properties/158263799#/?channel=RES_LET
402	Cedar Grove, Manchester, Greater Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 01/07/2025	House	4.0	\N	Added yesterday	£2,080 pcm\n£480 pw	53.439119	-2.21439	https://www.rightmove.co.uk/properties/155183024#/?channel=RES_LET
403	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£1,062 pcm\n£245 pw	53.47831	-2.25729	https://www.rightmove.co.uk/properties/158263727#/?channel=RES_LET
404	Cedric Street, Salford, Greater Manchester, M5	167 Langworthy Road, Salford, M6 5PW	Reeds Rains, Salford	Let available date: 03/03/2025	Terraced	3.0	1.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.484592	-2.302856	https://www.rightmove.co.uk/properties/157621739#/?channel=RES_LET
405	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£970 pcm\n£224 pw	53.47831	-2.25729	https://www.rightmove.co.uk/properties/158263607#/?channel=RES_LET
406	100 The Citadel, 15 Ludgate Hill, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	George Adams (Estate Agents) Ltd, Manchester	Let available date: 12/04/2025	Flat	2.0	2.0	Added yesterday	£1,300 pcm\n£300 pw	53.48866	-2.23326	https://www.rightmove.co.uk/properties/158263586#/?channel=RES_LET
407	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£970 pcm\n£224 pw	53.47831	-2.25729	https://www.rightmove.co.uk/properties/158263568#/?channel=RES_LET
408	Elmwood Lodge, 17 Parkfield Road South, Manchester, M20	Wren House 108 Palatine Road, Didsbury, Manchester, M20 3ZA	Wren Properties Ltd, Didsbury	Let available date: 01/03/2025	Apartment	3.0	2.0	Added yesterday	£1,600 pcm\n£369 pw	53.420983	-2.23655	https://www.rightmove.co.uk/properties/158263526#/?channel=RES_LET
409	Brompton Road, Fallowfield, Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 09/08/2025	Terraced	2.0	1.0	Added yesterday	£1,385 pcm\n£320 pw	53.449461	-2.232385	https://www.rightmove.co.uk/properties/158263496#/?channel=RES_LET
410	Parkfield Court, Didsbury	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	Bridgfords Lettings, Chorlton	Let available date: Now	Flat	2.0	1.0	Added yesterday	£1,050 pcm\n£242 pw	53.4198	-2.23755	https://www.rightmove.co.uk/properties/158263436#/?channel=RES_LET
411	Bankside, Collier Street, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 28/04/2025	Apartment	1.0	1.0	Reduced yesterday	£1,550 pcm\n£358 pw	53.486826	-2.253024	https://www.rightmove.co.uk/properties/158263469#/?channel=RES_LET
412	Bankside, Collier Street, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 28/04/2025	Apartment	1.0	1.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.486826	-2.253024	https://www.rightmove.co.uk/properties/157285700#/?channel=RES_LET
413	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£2,167 pcm\n£500 pw	53.4721	-2.24356	https://www.rightmove.co.uk/properties/158262866#/?channel=RES_LET
414	The Bridge, Chapel Wharf, Salford, M3	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 25/02/2025	Flat	1.0	1.0	Added yesterday	£1,195 pcm\n£276 pw	53.482512	-2.258138	https://www.rightmove.co.uk/properties/158262617#/?channel=RES_LET
415	Jefferson Place, Fernie Street, Manchester	6-14 Great Ancoats Street, Manchester, M4 5AZ	Buckley Frayne, Manchester	Let available date: 19/02/2025	Apartment	2.0	2.0	Added yesterday	£1,300 pcm\n£300 pw	53.490703	-2.240297	https://www.rightmove.co.uk/properties/158262536#/?channel=RES_LET
416	Clapham Street, Manchester	Suite 8 Broadhurst House Bury Old Road, Salford, M7 4QX	Grovewell, Manchester	Let available date: Now	Terraced	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.5122	-2.18063	https://www.rightmove.co.uk/properties/158261732#/?channel=RES_LET
417	Hulme Street, Manchester, Greater Manchester, M5	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Ask agent	Apartment	1.0	\N	Added yesterday	£1,200 pcm\n£277 pw	53.48257	-2.26593	https://www.rightmove.co.uk/properties/131300669#/?channel=RES_LET
418	Square Gardens,Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£1,148 pcm\n£265 pw	53.4717	-2.24473	https://www.rightmove.co.uk/properties/158260952#/?channel=RES_LET
419	Palatine Road, Northenden, M22 4FW	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	Bridgfords Lettings, Didsbury	Let available date: Now	Apartment	2.0	1.0	Added yesterday	£1,000 pcm\n£231 pw	53.40996	-2.25675	https://www.rightmove.co.uk/properties/156575117#/?channel=RES_LET
420	Apartment 2004, Novella	First Fl, Kinnerton House Bell Meadow Business Park Park Lane Pulford CH4 9EP	Residential Estates, Chester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,500 pcm\n£346 pw	53.479917	-2.25821	https://www.rightmove.co.uk/properties/154638344#/?channel=RES_LET
421	Upper Park Road, Manchester, Greater Manchester, M14	713 Wilmslow Road, Didsbury, Manchester, M20 6RE	Reeds Rains, Didsbury	Let available date: Ask agent	Apartment	2.0	2.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.456173	-2.219836	https://www.rightmove.co.uk/properties/154667126#/?channel=RES_LET
422	The Boulevard, Didsbury, Manchester, Greater Manchester, M20	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 20/02/2025	Apartment	2.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.430562	-2.24974	https://www.rightmove.co.uk/properties/158259101#/?channel=RES_LET
423	Ford Lane, Northenden, Manchester, M22 4WE	372 Palatine Road, Manchester, M22 4FZ	Hunters, South Manchester	Let available date: 06/03/2025	Flat	1.0	1.0	Added yesterday	£800 pcm\n£185 pw	53.40722	-2.254493	https://www.rightmove.co.uk/properties/158259119#/?channel=RES_LET
424	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added yesterday	£1,014 pcm\n£234 pw	53.47841	-2.25722	https://www.rightmove.co.uk/properties/158263850#/?channel=RES_LET
425	Edilom Road, Manchester	754 Oldham Road, Failsworth, Oldham, M35 9FE	COUSINS ESTATE AGENTS, Failsworth	Let available date: Now	Semi-Detached	3.0	1.0	Added yesterday	£1,200 pcm\n£277 pw	53.51979	-2.251379	https://www.rightmove.co.uk/properties/158258942#/?channel=RES_LET
426	Alexandra Mews, Whalley Range	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	Bridgfords Lettings, Chorlton	Let available date: 21/02/2025	Flat	1.0	1.0	Reduced yesterday	£875 pcm\n£202 pw	53.44718	-2.25246	https://www.rightmove.co.uk/properties/158314370#/?channel=RES_LET
427	Bury Street, Manchester, Greater Manchester, M3	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Ask agent	Apartment	2.0	\N	Added yesterday	£1,450 pcm\n£335 pw	53.48601	-2.25329	https://www.rightmove.co.uk/properties/115758911#/?channel=RES_LET
428	The Stile, Meadowside, M4	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 26/02/2025	Apartment	2.0	2.0	Added yesterday	£1,650 pcm\n£381 pw	53.48919	-2.23688	https://www.rightmove.co.uk/properties/158258726#/?channel=RES_LET
429	Kersal Way, Tilehurst Court Kersal Way, M7	1 Bridgewater Road, Worsley, M28 3JE	Parello Ltd, Walkden	Let available date: 24/03/2025	Apartment	2.0	1.0	Added yesterday	£850 pcm\n£196 pw	53.50942	-2.277479	https://www.rightmove.co.uk/properties/158258666#/?channel=RES_LET
430	Staithes Road, Manchester, M22 HOUSE SHARE	53a Church Road, Gatley, Cheadle, SK8 4NG	Northern Etchells, Manchester	Let available date: Now	Semi-Detached	1.0	2.0	Added yesterday	£675 pcm\n£156 pw	53.3688	-2.25694	https://www.rightmove.co.uk/properties/64888845#/?channel=RES_LET
431	Flat 12, Queen's Brewery Court, 46 Moss Lane West, Manchester, Greater Manchester, M15 5FB	46 Moss Lane West Manchester M15 5FB	Primo Property Management, Manchester	Let available date: 31/03/2025	Apartment	1.0	1.0	Added yesterday	£950 pcm\n£219 pw	53.45953	-2.25411	https://www.rightmove.co.uk/properties/73350572#/?channel=RES_LET
432	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158258558#/?channel=RES_LET
433	222 Meadow Mill, Stockport, SK1	Suite A, 2nd Floor, The Nest, Broadway, Salford, M50 2UE	Intus Lettings, Manchester	Let available date: 20/03/2025	Apartment	1.0	1.0	Added yesterday	£800 pcm\n£185 pw	53.41777	-2.15269	https://www.rightmove.co.uk/properties/158258492#/?channel=RES_LET
434	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added yesterday	£1,500 pcm\n£346 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158258033#/?channel=RES_LET
435	City Lofts, Salford Quays	332-334 Deansgate, Manchester, M3 4LY	Julie Twist Properties, Manchester	Let available date: 24/03/2025	Apartment	2.0	2.0	Added yesterday	£1,400 pcm\n£323 pw	53.47261	-2.29494	https://www.rightmove.co.uk/properties/158258036#/?channel=RES_LET
436	8 Dantzic Street, Manchester, Greater Manchester, M4 2AD	8 Dantzic Street, Manchester, M4 2AD	The James Manchester, The James Manchester	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,820 pcm\n£420 pw	53.48496	-2.23987	https://www.rightmove.co.uk/properties/158257481#/?channel=RES_LET
437	8 Dantzic Street, Manchester, Greater Manchester, M4 2AD	8 Dantzic Street, Manchester, M4 2AD	The James Manchester, The James Manchester	Let available date: Ask agent	Flat	2.0	2.0	Added yesterday	£1,647 pcm\n£380 pw	53.48496	-2.23987	https://www.rightmove.co.uk/properties/158257460#/?channel=RES_LET
438	8 Dantzic Street, Manchester, M4 2AD	8 Dantzic Street, Manchester, M4 2AD	The James Manchester, The James Manchester	Let available date: Ask agent	Flat	2.0	1.0	Added yesterday	£1,603 pcm\n£370 pw	53.48496	-2.23987	https://www.rightmove.co.uk/properties/158257403#/?channel=RES_LET
439	Store Street, Manchester, M1 2FT	1 Northumberland Avenue, Trafalgar Square, London, WC2N 5BW	eXp UK, North West	Let available date: 17/02/2025	Apartment	2.0	2.0	Added yesterday	£1,700 pcm\n£392 pw	53.48031	-2.22493	https://www.rightmove.co.uk/properties/158257181#/?channel=RES_LET
440	Canal Bank, Monton, Eccles, M30	55-57 Mesnes Street, Wigan, WN1 1QX	Northwood, Wigan	Let available date: 07/03/2025	Terraced	3.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.48988	-2.35806	https://www.rightmove.co.uk/properties/158256971#/?channel=RES_LET
441	Transport House, The Crescent, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: 27/02/2025	Duplex	2.0	1.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.483196	-2.264775	https://www.rightmove.co.uk/properties/157104650#/?channel=RES_LET
442	Gorton Road, Reddish, Stockport, SK5 6NR	1 Northumberland Avenue, Trafalgar Square, London, WC2N 5BW	eXp UK, North West	Let available date: 17/02/2025	Terraced	2.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.450661	-2.157743	https://www.rightmove.co.uk/properties/158256833#/?channel=RES_LET
443	Kendal Court, New Lane, Eccles	Suite B, 7th Floor, Beckwith House 1-3 Wellington Road Stockport SK4 1AF	Abode Property Management, Greater Manchester	Let available date: Now	Flat	2.0	1.0	Added yesterday	£900 pcm\n£208 pw	53.484089	-2.337517	https://www.rightmove.co.uk/properties/158256656#/?channel=RES_LET
444	Havenswood, Eccles, M30	Simple Life Stafford Court, 145 Washway Road Sale M33 7PE	Simple Life, Simple Life	Let available date: 08/04/2025	Terraced	3.0	2.0	Added yesterday	£1,400 pcm\n£323 pw	53.478057	-2.342417	https://www.rightmove.co.uk/properties/158256332#/?channel=RES_LET
445	Manchester Road, Chorlton Cum Hardy, Manchester	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	Jordan Fishwick, Chorlton	Let available date: 24/02/2025	Duplex	3.0	1.0	Added yesterday	£1,750 pcm\n£404 pw	53.443168	-2.279475	https://www.rightmove.co.uk/properties/158306684#/?channel=RES_LET
446	Chester Road, Hulme, Manchester, M15 4EY	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	Studio	\N	1.0	Added yesterday	£795 pcm\n£183 pw	53.46981	-2.26449	https://www.rightmove.co.uk/properties/158255801#/?channel=RES_LET
447	Hulton Street, Manchester, M35	15b Cheetham Street, Rochdale, OL16 1DG	Martin & Co, Rochdale & Oldham	Let available date: Now	Semi-Detached	5.0	5.0	Reduced yesterday	£650 pcm\n£150 pw	53.50746	-2.16717	https://www.rightmove.co.uk/properties/156536360#/?channel=RES_LET
448	Goodwood Drive, Pendlebury, Swinton, Manchester, M27	Suite 2, The Old Court House, Chapel Street, Dukinfield, SK16 4DT	@ThePlace, Dukinfield	Let available date: Ask agent	Semi-Detached	3.0	1.0	Added yesterday	£1,250 pcm\n£288 pw	53.508804	-2.320977	https://www.rightmove.co.uk/properties/158254568#/?channel=RES_LET
449	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,139 pcm\n£263 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252285#/?channel=RES_LET
450	Danson Street, Manchester	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 17/03/2025	House	4.0	2.0	Added yesterday	£1,550 pcm\n£358 pw	53.489261	-2.209977	https://www.rightmove.co.uk/properties/158254064#/?channel=RES_LET
451	12 Leftbank, Spinningfields	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: 22/03/2025	Apartment	2.0	2.0	Reduced yesterday	£1,495 pcm\n£345 pw	53.480601	-2.254931	https://www.rightmove.co.uk/properties/157133408#/?channel=RES_LET
452	The Foundry, 3a Lower Chatham Street, Southern Gateway, Manchester, M1	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: Now	Flat	2.0	2.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.473016	-2.24312	https://www.rightmove.co.uk/properties/155471684#/?channel=RES_LET
453	Mountside Crescent, Prestwich, M25	503-505 Bury New Road, Prestwich, Manchester M25 1AD	Normie Sales & Lettings, North Manchester	Let available date: Now	Apartment	2.0	1.0	Added yesterday	£925 pcm\n£213 pw	53.529158	-2.289814	https://www.rightmove.co.uk/properties/158253440#/?channel=RES_LET
454	Wilbraham Road, Manchester, Greater Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: Now	Flat	2.0	1.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.442544	-2.221123	https://www.rightmove.co.uk/properties/157517720#/?channel=RES_LET
455	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added yesterday	£1,475 pcm\n£340 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158253215#/?channel=RES_LET
456	Local Crescent, Hulme Street, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,400 pcm\n£323 pw	53.482543	-2.265051	https://www.rightmove.co.uk/properties/156970898#/?channel=RES_LET
457	Ladywell Point, Pilgrims Way, Salford, M50 1AU	B2 Chorlton Mill, Cambridge Street, Manchester, M1 5BY	The Estate Agent Manchester, Manchester	Let available date: Now	Apartment	3.0	2.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.48368	-2.32606	https://www.rightmove.co.uk/properties/156590234#/?channel=RES_LET
458	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added yesterday	£2,417 pcm\n£558 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158252402#/?channel=RES_LET
459	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	\N	1.0	Added yesterday	£1,314 pcm\n£303 pw	53.48665	-2.23598	https://www.rightmove.co.uk/properties/158252375#/?channel=RES_LET
460	The Cartwright, Spinners Mill	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	The Good Estate Agency, Manchester	Let available date: 14/04/2025	Apartment	2.0	2.0	Added yesterday	£1,250 pcm\n£288 pw	53.486499	-2.23352	https://www.rightmove.co.uk/properties/158252333#/?channel=RES_LET
461	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,707 pcm\n£394 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158252309#/?channel=RES_LET
462	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,139 pcm\n£263 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252285#/?channel=RES_LET
463	No. 1 Old Trafford	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	The Good Estate Agency, Manchester	Let available date: 04/04/2025	Apartment	2.0	2.0	Reduced yesterday	£1,250 pcm\n£288 pw	53.46508	-2.28615	https://www.rightmove.co.uk/properties/158252255#/?channel=RES_LET
464	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,345 pcm\n£310 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252252#/?channel=RES_LET
465	No. 1 Old Trafford	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	The Good Estate Agency, Manchester	Let available date: 07/03/2025	Apartment	2.0	2.0	Added yesterday	£1,375 pcm\n£317 pw	53.465323	-2.285723	https://www.rightmove.co.uk/properties/158252177#/?channel=RES_LET
466	No. 1 Old Trafford	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	The Good Estate Agency, Manchester	Let available date: 17/03/2025	Apartment	1.0	1.0	Added yesterday	£975 pcm\n£225 pw	53.463901	-2.286119	https://www.rightmove.co.uk/properties/158252129#/?channel=RES_LET
467	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added yesterday	£1,504 pcm\n£347 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252054#/?channel=RES_LET
468	Elizabeth Tower	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	The Good Estate Agency, Manchester	Let available date: 04/04/2025	Apartment	2.0	2.0	Reduced yesterday	£2,295 pcm\n£530 pw	53.4722	-2.255811	https://www.rightmove.co.uk/properties/157194482#/?channel=RES_LET
469	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Studio	\N	1.0	Added yesterday	£1,079 pcm\n£249 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252009#/?channel=RES_LET
470	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	3.0	Added yesterday	£2,429 pcm\n£561 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158252012#/?channel=RES_LET
471	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added yesterday	£1,689 pcm\n£390 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158251883#/?channel=RES_LET
472	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added yesterday	£1,841 pcm\n£425 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158251850#/?channel=RES_LET
473	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,484 pcm\n£342 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158251844#/?channel=RES_LET
474	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added today	£1,475 pcm\n£340 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158309345#/?channel=RES_LET
475	City Loft, Salford, M50	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 16/03/2025	Flat	1.0	1.0	Added yesterday	£1,100 pcm\n£254 pw	53.472755	-2.29469	https://www.rightmove.co.uk/properties/158248664#/?channel=RES_LET
476	Tan Yard Brow, Manchester, M18	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 09/03/2025	End of Terrace	2.0	1.0	Added yesterday	£1,300 pcm\n£300 pw	53.46107	-2.164539	https://www.rightmove.co.uk/properties/158248661#/?channel=RES_LET
477	Cobourg Street, Manchester, M1	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 16/02/2025	Studio	\N	1.0	Added yesterday	£900 pcm\n£208 pw	53.476456	-2.233317	https://www.rightmove.co.uk/properties/158247053#/?channel=RES_LET
478	The Hub, Manchester, M1	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 01/03/2025	Penthouse	1.0	1.0	Reduced yesterday	£1,200 pcm\n£277 pw	53.477192	-2.233515	https://www.rightmove.co.uk/properties/158209700#/?channel=RES_LET
479	North Central, Dyche Street, Manchester	22 Lloyd Street, Manchester, M2 5WA	NPP Residential, Manchester	Let available date: 26/02/2025	Apartment	2.0	2.0	Reduced yesterday	£1,500 pcm\n£346 pw	53.4874	-2.23548	https://www.rightmove.co.uk/properties/157947308#/?channel=RES_LET
480	Victoria House, Great Ancoats Street	22 Lloyd Street, Manchester, M2 5WA	NPP Residential, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced yesterday	£1,650 pcm\n£381 pw	53.479242	-2.222675	https://www.rightmove.co.uk/properties/157812758#/?channel=RES_LET
481	23 Parsonage Road, Withington, Greater Manchester, M20	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£850 pcm\n£196 pw	53.433926	-2.225947	https://www.rightmove.co.uk/properties/158246936#/?channel=RES_LET
482	20a Wilbraham Court Two, Fallowfield, Manchester, Greater Manchester, M14	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: Now	Apartment	1.0	1.0	Added yesterday	£775 pcm\n£179 pw	53.443392	-2.22544	https://www.rightmove.co.uk/properties/158246939#/?channel=RES_LET
483	Transmission House, 11 Tib Street, Manchester City Centre, Greater Manchester, M4	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 21/03/2025	Apartment	2.0	2.0	Reduced yesterday	£1,450 pcm\n£335 pw	53.48223	-2.237812	https://www.rightmove.co.uk/properties/157730087#/?channel=RES_LET
484	Cobourg Street, Manchester, M1	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Studio	\N	1.0	Added yesterday	£900 pcm\n£208 pw	53.476456	-2.233317	https://www.rightmove.co.uk/properties/158246570#/?channel=RES_LET
485	Stockton Road, Manchester, M21	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	1.0	1.0	Added yesterday	£1,000 pcm\n£231 pw	53.439167	-2.280894	https://www.rightmove.co.uk/properties/158246576#/?channel=RES_LET
486	Joiner Street, Manchester, M4	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	2.0	2.0	Reduced yesterday	£1,550 pcm\n£358 pw	53.48271	-2.237945	https://www.rightmove.co.uk/properties/158246546#/?channel=RES_LET
487	Thornfield Street, Salford, Greater Manchester, M5	22 Flixton Road Urmston M41 5AA	VitalSpace, South Manchester	Let available date: Now	Terraced	2.0	1.0	Added on 13/02/2025	£950 pcm\n£219 pw	53.482693	-2.306225	https://www.rightmove.co.uk/properties/158246429#/?channel=RES_LET
488	John Hogan V C Road, Manchester	111 Piccadilly, Manchester, M1 2HY	Accommodation.co.uk, covering National	Let available date: 21/02/2025	Terraced	2.0	1.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.491134	-2.214745	https://www.rightmove.co.uk/properties/158246327#/?channel=RES_LET
489	One Regent, 1 Regent Road, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 07/04/2025	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,450 pcm\n£335 pw	53.475037	-2.262831	https://www.rightmove.co.uk/properties/152217659#/?channel=RES_LET
490	Linen, 99 Denmark Road, Manchester, M15	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,150 pcm\n£265 pw	53.45993	-2.235392	https://www.rightmove.co.uk/properties/152303648#/?channel=RES_LET
491	Watts Street, Levenshulme	111 Piccadilly, Manchester, M1 2HY	Accommodation.co.uk, covering National	Let available date: 21/02/2025	Terraced	3.0	1.0	Reduced on 13/02/2025	£1,250 pcm\n£288 pw	53.43898	-2.182905	https://www.rightmove.co.uk/properties/156101567#/?channel=RES_LET
492	Platt Lane Manchester, M14 5WH	Manchester	Welcome To Manchester Lettings, Covering Manchester	Let available date: 07/07/2025	House	3.0	1.0	Reduced on 13/02/2025	£1,600 pcm\n£369 pw	53.450035	-2.227997	https://www.rightmove.co.uk/properties/156865772#/?channel=RES_LET
493	Talbot Road Fallowfield, M14 6TA	Manchester	Welcome To Manchester Lettings, Covering Manchester	Let available date: 07/07/2025	Terraced	7.0	3.0	Reduced on 13/02/2025	£4,000 pcm\n£923 pw	53.435218	-2.210323	https://www.rightmove.co.uk/properties/156865202#/?channel=RES_LET
494	The Exchange, 8 Elmira Way, Salford Quays, Greater Manchester, M5	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: 10/03/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.470467	-2.282321	https://www.rightmove.co.uk/properties/158245880#/?channel=RES_LET
495	Spinner House, 1A Elmira Way, Salford, M5	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: 24/03/2025	Flat	1.0	1.0	Added on 13/02/2025	£975 pcm\n£225 pw	53.471709	-2.280609	https://www.rightmove.co.uk/properties/158245883#/?channel=RES_LET
496	Norwood Avenue Manchester, M20 6EX	Manchester	Welcome To Manchester Lettings, Covering Manchester	Let available date: Now	Terraced	4.0	2.0	Reduced on 13/02/2025	£1,950 pcm\n£450 pw	53.420665	-2.216437	https://www.rightmove.co.uk/properties/157441385#/?channel=RES_LET
497	Seedley Park Road, Salford, M6	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 07/03/2025	End of Terrace	4.0	1.0	Reduced on 13/02/2025	£2,550 pcm\n£588 pw	53.48559	-2.29989	https://www.rightmove.co.uk/properties/158209733#/?channel=RES_LET
498	Brindley House, 1 Elmira Way, Salford, M5	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: 10/04/2025	Flat	1.0	1.0	Added on 13/02/2025	£975 pcm\n£225 pw	53.469924	-2.281501	https://www.rightmove.co.uk/properties/158243906#/?channel=RES_LET
499	Duke Street, Manchester, Greater Manchester, M3	\N	Manchester Apartments, Manchester Apartments	Let available date: Now	Apartment	1.0	1.0	Added on 12/02/2025	£1,634 pcm\n£377 pw	53.47603	-2.25414	https://www.rightmove.co.uk/properties/158154743#/?channel=RES_LET
500	Manchester, Greater Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: 16/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,180 pcm\n£272 pw	53.48369	-2.25036	https://www.rightmove.co.uk/properties/158242631#/?channel=RES_LET
501	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,230 pcm\n£284 pw	53.48369	-2.25036	https://www.rightmove.co.uk/properties/158242607#/?channel=RES_LET
502	\N	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,260 pcm\n£291 pw	53.48369	-2.25036	https://www.rightmove.co.uk/properties/158242568#/?channel=RES_LET
503	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Ask agent	Apartment	1.0	1.0	Added on 13/02/2025	£1,310 pcm\n£302 pw	53.48369	-2.25036	https://www.rightmove.co.uk/properties/158242538#/?channel=RES_LET
504	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,450 pcm\n£335 pw	53.48332	-2.25029	https://www.rightmove.co.uk/properties/158242502#/?channel=RES_LET
505	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,470 pcm\n£339 pw	53.48381	-2.25044	https://www.rightmove.co.uk/properties/158242475#/?channel=RES_LET
506	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,475 pcm\n£340 pw	53.48325	-2.24995	https://www.rightmove.co.uk/properties/158242454#/?channel=RES_LET
507	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,520 pcm\n£351 pw	53.48375	-2.25033	https://www.rightmove.co.uk/properties/158242418#/?channel=RES_LET
508	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,650 pcm\n£381 pw	53.48405	-2.25074	https://www.rightmove.co.uk/properties/158242376#/?channel=RES_LET
509	Chapel Wharf, Manchester, M3	Alcock House, 99 Chapel Street, Salford, M3 5DZ	Dandara Living, Manchester, Chapel Wharf	Let available date: Now	Duplex	3.0	2.0	Added on 13/02/2025	£2,100 pcm\n£485 pw	53.48368	-2.25102	https://www.rightmove.co.uk/properties/158242349#/?channel=RES_LET
510	Knightsbridge Court, Salford, M3	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	2.0	2.0	Reduced on 13/02/2025	£1,350 pcm\n£312 pw	53.48768	-2.263848	https://www.rightmove.co.uk/properties/156334721#/?channel=RES_LET
511	New Beech Court, Heaton Mersey, SK4	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 15/03/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.4133	-2.204515	https://www.rightmove.co.uk/properties/158239430#/?channel=RES_LET
512	Snowdon Road, Eccles, M30	323 Wilmslow Road, Fallowfield, Manchester, M14 6NW	Nicholas Humphreys, Manchester	Let available date: 18/07/2025	Semi-Detached	6.0	2.0	Added on 13/02/2025	£4,030 pcm\n£930 pw	53.49085	-2.33154	https://www.rightmove.co.uk/properties/158237939#/?channel=RES_LET
513	Haydn Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	2.0	1.0	Added on 13/02/2025	£1,834 pcm\n£423 pw	53.457022	-2.234	https://www.rightmove.co.uk/properties/158237267#/?channel=RES_LET
514	Acomb Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	6.0	2.0	Reduced on 13/02/2025	£4,757 pcm\n£1,098 pw	53.455484	-2.233469	https://www.rightmove.co.uk/properties/158237264#/?channel=RES_LET
515	Bankfield Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 15/09/2025	House	6.0	2.0	Added on 13/02/2025	£4,088 pcm\n£943 pw	53.455707	-2.207895	https://www.rightmove.co.uk/properties/158237210#/?channel=RES_LET
516	Gascoyne Street, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: Ask agent	House	7.0	2.0	Added on 13/02/2025	£4,920 pcm\n£1,135 pw	53.455631	-2.234732	https://www.rightmove.co.uk/properties/158237201#/?channel=RES_LET
517	Ruskin Avenue, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 06/10/2025	House	7.0	2.0	Added on 13/02/2025	£4,860 pcm\n£1,122 pw	53.456815	-2.234876	https://www.rightmove.co.uk/properties/158237144#/?channel=RES_LET
518	Claremont Road, Manchester	Covering Manchester	HYBR, Covering Manchester	Let available date: 05/09/2025	House	4.0	1.0	Added on 13/02/2025	£2,811 pcm\n£649 pw	53.45262	-2.234525	https://www.rightmove.co.uk/properties/158237099#/?channel=RES_LET
519	Balmoral House, 17 Windsor Street, M5 4AZ	2nd Floor, 8-16 Newton Street, Manchester, M1 2AN	North Property Group, Manchester	Let available date: 07/03/2025	Apartment	2.0	1.0	Reduced on 13/02/2025	£1,050 pcm\n£242 pw	53.48012	-2.2748	https://www.rightmove.co.uk/properties/157486439#/?channel=RES_LET
520	Maple Road, Swinton, Manchester, Greater Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: Now	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,500 pcm\n£346 pw	53.501579	-2.343443	https://www.rightmove.co.uk/properties/158236628#/?channel=RES_LET
521	Fairholme Road, Manchester, Greater Manchester, M20	713 Wilmslow Road, Didsbury, Manchester, M20 6RE	Reeds Rains, Didsbury	Let available date: Now	House	3.0	\N	Added on 13/02/2025	£1,750 pcm\n£404 pw	53.433242	-2.220651	https://www.rightmove.co.uk/properties/158236190#/?channel=RES_LET
522	Sandwich Road, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: 24/02/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,350 pcm\n£312 pw	53.488472	-2.339407	https://www.rightmove.co.uk/properties/158235476#/?channel=RES_LET
523	Wilbraham Road, Manchester, Greater Manchester, M16	Manchester	Welcome To Manchester Lettings, Covering Manchester	Let available date: 03/03/2025	Penthouse	2.0	1.0	Added on 13/02/2025	£2,000 pcm\n£462 pw	53.4431	-2.25329	https://www.rightmove.co.uk/properties/158234333#/?channel=RES_LET
524	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	Water Street, Manchester, M3 4JQ	Union, Union	Let available date: Ask agent	Flat Share	1.0	1.0	Added on 23/01/2025	£1,020 pcm\n£235 pw	53.47831	-2.25729	https://www.rightmove.co.uk/properties/158263691#/?channel=RES_LET
525	Milner Street, Manchester, M16 9WF	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	House	3.0	1.0	Reduced on 13/02/2025	£1,900 pcm\n£438 pw	53.45803	-2.26442	https://www.rightmove.co.uk/properties/157715684#/?channel=RES_LET
526	Crumpsall Lane, Manchester, Greater Manchester, M8	493 Bury New Road, Prestwich, Manchester, M25 1AD	Thornley Groves, Prestwich	Let available date: Now	Semi-Detached	4.0	2.0	Added on 13/02/2025	£1,800 pcm\n£415 pw	53.517298	-2.238088	https://www.rightmove.co.uk/properties/158234825#/?channel=RES_LET
527	Valley Road, Heaton Mersey, Stockport	450 Didsbury Road Stockport SK4 3BS	Joules Estate Agency, Heaton Mersey	Let available date: 21/02/2025	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,600 pcm\n£369 pw	53.409301	-2.193979	https://www.rightmove.co.uk/properties/158234429#/?channel=RES_LET
528	Blackburn Street, Trinity Riverside, Salford, M3 6AS	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: 01/03/2025	Apartment	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.489549	-2.264227	https://www.rightmove.co.uk/properties/158233670#/?channel=RES_LET
626	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added on 13/02/2025	£1,760 pcm\n£406 pw	53.486891	-2.249365	https://www.rightmove.co.uk/properties/158211740#/?channel=RES_LET
529	Jutland House, 15 Jutland Street, Manchester, M1 2BE	Sevendale House, 7 Dale Street, Manchester, M1 1JA	urbanbubble, Manchester	Let available date: Ask agent	Apartment	1.0	1.0	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.47986	-2.22945	https://www.rightmove.co.uk/properties/65193055#/?channel=RES_LET
530	9 Sterling Avenue, Salford M3 6GQ	Office 4, Northern Gateway, Enterprise Centre, Saltergate, Chesterfield, S40 1UT	PriceLinsey, Sheffield	Let available date: Ask agent	Town House	4.0	2.0	Added on 13/02/2025	£2,800 pcm\n£646 pw	53.484165	-2.264188	https://www.rightmove.co.uk/properties/158232731#/?channel=RES_LET
531	Affinity Living Riverview, New Bailey Street, Manchester, Greater Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 20/02/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,750 pcm\n£404 pw	53.48215	-2.25312	https://www.rightmove.co.uk/properties/158231555#/?channel=RES_LET
532	The Base, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: Now	1	1.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.4726	-2.26135	https://www.rightmove.co.uk/properties/158232191#/?channel=RES_LET
533	Droylsden Road, Manchester	754 Oldham Road, Failsworth, Oldham, M35 9FE	COUSINS ESTATE AGENTS, Failsworth	Let available date: Ask agent	Terraced	3.0	1.0	Added on 13/02/2025	£1,500 pcm\n£346 pw	53.497898	-2.17033	https://www.rightmove.co.uk/properties/158232038#/?channel=RES_LET
534	Patey Street, Manchester, M12	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2.0	1.0	Reduced on 13/02/2025	£1,150 pcm\n£265 pw	53.4552	-2.1911	https://www.rightmove.co.uk/properties/157836995#/?channel=RES_LET
535	Ash Tree Road, Manchester, M8	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Studio	\N	1.0	Reduced on 13/02/2025	£650 pcm\n£150 pw	53.51363	-2.234304	https://www.rightmove.co.uk/properties/155906102#/?channel=RES_LET
536	Stanley Street, Novella Apartments, M3	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 01/09/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,600 pcm\n£369 pw	53.47988	-2.25824	https://www.rightmove.co.uk/properties/158231288#/?channel=RES_LET
537	Trinity Court, Cleminson Street, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.484573	-2.260823	https://www.rightmove.co.uk/properties/156083369#/?channel=RES_LET
538	Wareham Grove, Eccles, Manchester, Greater Manchester, M30	25-27 Monton Green, Monton, Eccles, Manchester, M30 9LL	Thornley Groves, Monton	Let available date: 08/03/2025	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.487436	-2.362677	https://www.rightmove.co.uk/properties/158230709#/?channel=RES_LET
539	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Studio	\N	1.0	Added on 13/02/2025	£1,079 pcm\n£249 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158230394#/?channel=RES_LET
540	Tib Street, Transmission House, M4	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 27/08/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,700 pcm\n£392 pw	53.482655	-2.237032	https://www.rightmove.co.uk/properties/158230391#/?channel=RES_LET
541	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	3.0	3.0	Added on 13/02/2025	£2,429 pcm\n£561 pw	53.47326	-2.28636	https://www.rightmove.co.uk/properties/158229326#/?channel=RES_LET
542	Tuscany House, 19 Dickenson Street, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 24/02/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.477569	-2.242078	https://www.rightmove.co.uk/properties/158229611#/?channel=RES_LET
543	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: 16/02/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,504 pcm\n£347 pw	53.47326	-2.28636	https://www.rightmove.co.uk/properties/158229200#/?channel=RES_LET
544	Bedsit Room Gildabrook Road, Salford, Manchester	Salford	SnugPads, Salford	Let available date: Now	Studio	\N	\N	Added on 13/02/2025	£690 pcm\n£159 pw	53.48836	-2.329485	https://www.rightmove.co.uk/properties/158229101#/?channel=RES_LET
545	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,871 pcm\n£432 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158228255#/?channel=RES_LET
546	Water Street, Stockport	St John's Court 19B Quay Street, Manchester, M3 3HN	Orlando Reid, Manchester	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£950 pcm\n£219 pw	53.417079	-2.152724	https://www.rightmove.co.uk/properties/157736438#/?channel=RES_LET
547	Mayfield Road, Whalley Range, Manchester, M16 8FT	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: Now	Apartment	3.0	1.0	Added on 13/02/2025	£935 pcm\n£216 pw	53.452212	-2.25332	https://www.rightmove.co.uk/properties/158227907#/?channel=RES_LET
548	The Crescent, Salford, M5	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: Now	House Share	1.0	1.0	Reduced on 13/02/2025	£750 pcm\n£173 pw	53.482842	-2.267543	https://www.rightmove.co.uk/properties/156791336#/?channel=RES_LET
549	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added on 12/02/2025	£2,775 pcm\n£640 pw	53.486895	-2.249376	https://www.rightmove.co.uk/properties/158160644#/?channel=RES_LET
550	Commerce Quay, Merhcants Wharf, 221 Ordsall Lane, Salford, Manchester, M5	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: Now	Flat	3.0	2.0	Added on 13/02/2025	£2,100 pcm\n£485 pw	53.472962	-2.269677	https://www.rightmove.co.uk/properties/158227688#/?channel=RES_LET
551	Beastow Road, Manchester, M12	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Detached	3.0	2.0	Added on 13/02/2025	£1,400 pcm\n£323 pw	53.46828	-2.197997	https://www.rightmove.co.uk/properties/158227667#/?channel=RES_LET
552	Egerton House, Manchester, M15	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 02/03/2025	Penthouse	3.0	3.0	Added on 13/02/2025	£2,300 pcm\n£531 pw	53.47357	-2.258194	https://www.rightmove.co.uk/properties/158227577#/?channel=RES_LET
553	Ordsall Lane, Manchester, Greater Manchester, M5	52 Regent Street, Eccles, Manchester, M30 0BP	For Living, For Living	Let available date: 03/03/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,254 pcm\n£289 pw	53.47087	-2.27233	https://www.rightmove.co.uk/properties/158227100#/?channel=RES_LET
554	One Regent, 1 Regent Road, Manchester, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 30/04/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.47505	-2.262874	https://www.rightmove.co.uk/properties/146040914#/?channel=RES_LET
555	Victoria Mill, Lower Vickers Street, Manchester	22 Lloyd Street, Manchester, M2 5WA	NPP Residential, Manchester	Let available date: 20/02/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.49	-2.21356	https://www.rightmove.co.uk/properties/158227439#/?channel=RES_LET
556	Apt 514, 5 Stillwater Drive, Sportcity, Clayton, Manchester M11 4TF	118 Ford Road, Upton Village, Wirral CH49 0TQ	Fozard Properties Ltd, Upton	Let available date: Ask agent	Apartment	2.0	\N	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.48522	-2.19391	https://www.rightmove.co.uk/properties/31300546#/?channel=RES_LET
557	David Street Reddish Stockport	198 Finney Lane, Heald Green, Cheadle, SK8 3QA	Main & Main, Heald Green	Let available date: 01/03/2025	Terraced	2.0	1.0	Reduced on 13/02/2025	£1,100 pcm\n£254 pw	53.439388	-2.161735	https://www.rightmove.co.uk/properties/157216853#/?channel=RES_LET
558	Riverside, Lowry Wharf, Derwent Street, Salford, M5	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 18/04/2025	Apartment	3.0	2.0	Reduced on 13/02/2025	£1,500 pcm\n£346 pw	53.47408	-2.264337	https://www.rightmove.co.uk/properties/86833722#/?channel=RES_LET
559	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added on 13/02/2025	£2,775 pcm\n£640 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158227298#/?channel=RES_LET
560	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added on 13/02/2025	£3,250 pcm\n£750 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158227292#/?channel=RES_LET
561	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: 01/03/2025	Duplex	1.0	1.0	Added on 13/02/2025	£1,368 pcm\n£316 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158226713#/?channel=RES_LET
562	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added on 13/02/2025	£2,900 pcm\n£669 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158227286#/?channel=RES_LET
563	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,970 pcm\n£455 pw	53.487218	-2.249247	https://www.rightmove.co.uk/properties/158227277#/?channel=RES_LET
564	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,535 pcm\n£354 pw	53.487146	-2.249484	https://www.rightmove.co.uk/properties/158227259#/?channel=RES_LET
565	Local Blackfriars, 54 Bury Street, Salford, M3	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 29/04/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,450 pcm\n£335 pw	53.486062	-2.253458	https://www.rightmove.co.uk/properties/146717912#/?channel=RES_LET
566	Vincent Avenue, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	Bridgfords Lettings, Chorlton	Let available date: 14/03/2025	Flat	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.44379	-2.2821	https://www.rightmove.co.uk/properties/158226806#/?channel=RES_LET
567	Blue, Media City Uk, Manchester, Greater Manchester, M50	Leader House, Blue Media City, Salford, M50 2AG	Amro Property Management, The Green Rooms	Let available date: 22/02/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,175 pcm\n£271 pw	53.47277	-2.30172	https://www.rightmove.co.uk/properties/158226131#/?channel=RES_LET
568	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: 01/03/2025	Duplex	1.0	1.0	Added on 13/02/2025	£1,249 pcm\n£288 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158225867#/?channel=RES_LET
569	Adelphi Street, Manchester, Greater Manchester, M3	Office 2,8 Chester Street, Manchester, M1 5GE	Rent For Me, Manchester	Let available date: 01/03/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.48518	-2.26519	https://www.rightmove.co.uk/properties/155717333#/?channel=RES_LET
570	Ordsall Lane, Manchester, Greater Manchester, M5	52 Regent Street, Eccles, Manchester, M30 0BP	For Living, For Living	Let available date: 03/03/2025	Apartment	2.0	\N	Added on 13/02/2025	£1,145 pcm\n£264 pw	53.47087	-2.27233	https://www.rightmove.co.uk/properties/158225756#/?channel=RES_LET
571	Blade, 15 Silvercroft Street, Manchester, M15	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 31/03/2025	Apartment	2.0	2.0	Reduced on 13/02/2025	£2,050 pcm\n£473 pw	53.471739	-2.254987	https://www.rightmove.co.uk/properties/152366048#/?channel=RES_LET
572	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,283 pcm\n£296 pw	53.47326	-2.28636	https://www.rightmove.co.uk/properties/158225705#/?channel=RES_LET
573	Fleeson Street, Risholme, Manchester. M14 5NQ	Meridian Square Stretford Road Hulme Manchester M15 5JH	C & R Properties Ltd, Hulme Manchester	Let available date: Now	Terraced	3.0	2.0	Added on 13/02/2025	£1,295 pcm\n£299 pw	53.453136	-2.225976	https://www.rightmove.co.uk/properties/158225591#/?channel=RES_LET
574	Clay, Salford Quays, M50	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added today	£1,139 pcm\n£263 pw	53.47372	-2.28586	https://www.rightmove.co.uk/properties/158309138#/?channel=RES_LET
575	Jordan Street, Manchester, M15	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 19/03/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.473464	-2.250035	https://www.rightmove.co.uk/properties/158225456#/?channel=RES_LET
576	Dale Street, Manchester, M1	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 03/03/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£950 pcm\n£219 pw	53.48039	-2.23231	https://www.rightmove.co.uk/properties/156043943#/?channel=RES_LET
577	Milford Street, Salford	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Terraced	4.0	1.0	Reduced on 13/02/2025	£2,427 pcm\n£560 pw	53.4825	-2.29546	https://www.rightmove.co.uk/properties/157161521#/?channel=RES_LET
627	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added on 13/02/2025	£2,140 pcm\n£494 pw	53.486878	-2.249343	https://www.rightmove.co.uk/properties/158211569#/?channel=RES_LET
578	Ordsall Lane, Salford	Unit 301 The Junction Merchants Quay, Salford, M50 3SG	Ying Wah Property, Manchester	Let available date: 09/04/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,400 pcm\n£323 pw	53.477199	-2.263491	https://www.rightmove.co.uk/properties/158225255#/?channel=RES_LET
579	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Studio	\N	1.0	Added on 13/02/2025	£1,211 pcm\n£279 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158225144#/?channel=RES_LET
580	Barnsfold Avenue, Fallowfield, Manchester, M14 6FJ	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	Townhouse, Manchester	Let available date: 01/07/2025	Semi-Detached	6.0	2.0	Reduced on 13/02/2025	£4,160 pcm\n£960 pw	53.440456	-2.225492	https://www.rightmove.co.uk/properties/157585385#/?channel=RES_LET
581	Simpson Street, Manchester	209-210 Oakland House Talbot Road, Stretford, Manchester, M16 0PQ	City Comfort Luxury Apartments, Manchester	Let available date: 20/02/2025	House	2.0	2.0	Added on 13/02/2025	£1,450 pcm\n£335 pw	53.487949	-2.235143	https://www.rightmove.co.uk/properties/158224925#/?channel=RES_LET
582	Meadow Mill	St John's Court 19B Quay Street, Manchester, M3 3HN	Orlando Reid, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced on 13/02/2025	£1,150 pcm\n£265 pw	53.417736	-2.152235	https://www.rightmove.co.uk/properties/157716611#/?channel=RES_LET
583	Bushmoor Walk, Manchester, M13	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2.0	3.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.464289	-2.216921	https://www.rightmove.co.uk/properties/158224787#/?channel=RES_LET
584	Clay Salford Quays,Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,139 pcm\n£263 pw	53.47326	-2.28636	https://www.rightmove.co.uk/properties/158224229#/?channel=RES_LET
585	Sandycroft Avenue, Manchester, M22	588 Stockport Road Longsight Manchester M13 0RQ	Madina Property, Manchester	Let available date: Now	Terraced	2.0	2.0	Reduced on 13/02/2025	£1,095 pcm\n£253 pw	53.3837	-2.25713	https://www.rightmove.co.uk/properties/158120243#/?channel=RES_LET
586	Lawnhurst Avenue, Wythenshawe, M23	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 22/02/2025	Apartment	3.0	2.0	Added on 13/02/2025	£1,550 pcm\n£358 pw	53.40421	-2.29251	https://www.rightmove.co.uk/properties/158224265#/?channel=RES_LET
587	Lincombe Road, Woodhouse Park, Wythenshawe,M22 1PY	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: 08/03/2025	Semi-Detached	3.0	2.0	Added on 13/02/2025	£1,600 pcm\n£369 pw	53.36877	-2.26567	https://www.rightmove.co.uk/properties/158223695#/?channel=RES_LET
588	Whitworth Street West, Manchester, Greater Manchester, M1	Sevendale house, 7 Dale Street, Manchester, M1 1JA	urbanbubble, Manchester	Let available date: Now	Flat	2.0	\N	Added on 13/02/2025	£1,500 pcm\n£346 pw	53.47451	-2.24855	https://www.rightmove.co.uk/properties/158222114#/?channel=RES_LET
589	Smithfield Buildings, Tib Street, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 25/02/2025	Duplex	2.0	2.0	Added on 13/02/2025	£2,200 pcm\n£508 pw	53.483005	-2.236025	https://www.rightmove.co.uk/properties/158222666#/?channel=RES_LET
590	Market Buildings, 17 Thomas Street, Northern Quarter, Manchester, M4 1EU	52 Port Street, Northern Quarter, Manchester, M1 2EQ	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	Let available date: 04/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,095 pcm\n£253 pw	53.484727	-2.237475	https://www.rightmove.co.uk/properties/158221799#/?channel=RES_LET
591	Jefferson Place, City Centre, M4	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 13/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£900 pcm\n£208 pw	53.49074	-2.24024	https://www.rightmove.co.uk/properties/158221646#/?channel=RES_LET
592	Brigadier Road, Stockport, SK5	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.43512	-2.133909	https://www.rightmove.co.uk/properties/158221151#/?channel=RES_LET
593	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Studio	\N	1.0	Added on 13/02/2025	£1,885 pcm\n£435 pw	53.46599	-2.24067	https://www.rightmove.co.uk/properties/158221010#/?channel=RES_LET
594	Churchwood House, Churchwood Road, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: 11/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.4172	-2.233869	https://www.rightmove.co.uk/properties/158220578#/?channel=RES_LET
595	Leopold Avenue, West Didsbury	416 Wilmslow Road, Withington, Manchester M20 3BW	Bridgfords Lettings, Withington	Let available date: Now	Apartment	1.0	\N	Added on 13/02/2025	£1,000 pcm\n£231 pw	53.42896	-2.24166	https://www.rightmove.co.uk/properties/158220125#/?channel=RES_LET
596	Victoria Mill, Lower Vickers Street, Manchester	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 18/03/2025	Apartment	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.48978	-2.214437	https://www.rightmove.co.uk/properties/158219444#/?channel=RES_LET
597	Driffield Street, Rusholme, Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 24/07/2025	Terraced	2.0	1.0	Added on 13/02/2025	£1,370 pcm\n£316 pw	53.452172	-2.238558	https://www.rightmove.co.uk/properties/158219402#/?channel=RES_LET
598	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,780 pcm\n£411 pw	53.48241	-2.25202	https://www.rightmove.co.uk/properties/158219090#/?channel=RES_LET
599	Victoria House, 250 Great Ancoats Street, M4	3, 28 spaces, Peter House, Oxford Street, Manchester, M1 5AN	Ustay Global, Manchester	Let available date: Now	Flat	2.0	2.0	Added on 02/09/2024	£1,950 pcm\n£450 pw	53.47924	-2.22284	https://www.rightmove.co.uk/properties/151920767#/?channel=RES_LET
600	Derby Road, Fallowfield, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 01/07/2025	Terraced	2.0	1.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.436981	-2.214916	https://www.rightmove.co.uk/properties/158218913#/?channel=RES_LET
601	Grundy Street, Heaton Mersey, Stockport, Cheshire, SK4	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	Julian Wadden, Heaton Moor	Let available date: 28/02/2025	Terraced	2.0	1.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.412086	-2.20787	https://www.rightmove.co.uk/properties/158217761#/?channel=RES_LET
602	Tennyson Road, Reddish, Stockport, SK5	81-83 Wellington Road South, Stockport, SK1 3SL	Julian Wadden, Stockport	Let available date: 14/03/2025	Semi-Detached	2.0	1.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.444019	-2.167658	https://www.rightmove.co.uk/properties/158217443#/?channel=RES_LET
603	Roan Close, Salford	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: Now	Detached	4.0	4.0	Reduced on 13/02/2025	£2,200 pcm\n£508 pw	53.49936	-2.27357	https://www.rightmove.co.uk/properties/157799717#/?channel=RES_LET
604	The Mount, Vine Street	39, Bury New Road, Prestwich, Manchester, M25 9JY	Aubrey Lee & Co, Prestwich	Let available date: Now	Apartment	2.0	1.0	Added on 13/02/2025	£895 pcm\n£207 pw	53.514069	-2.269172	https://www.rightmove.co.uk/properties/158217266#/?channel=RES_LET
605	Market Street, Droylsden, M43	116 Market Street, Droylsden, Manchester, M43 7AA	Saltsman & co, Droylsden	Let available date: Now	Flat	\N	\N	Added on 13/02/2025	£850 pcm\n£196 pw	53.480743	-2.144616	https://www.rightmove.co.uk/properties/158216969#/?channel=RES_LET
606	Riverside, Lowry Wharf, Derwent Street, Salford, M5	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: 16/04/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.47408	-2.264337	https://www.rightmove.co.uk/properties/158216336#/?channel=RES_LET
607	The Sorting House, 83 Newton Street, Northern Quarter, Manchester, M1 1ER	52 Port Street, Northern Quarter, Manchester, M1 2EQ	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	Let available date: 19/03/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,695 pcm\n£391 pw	53.483012	-2.231784	https://www.rightmove.co.uk/properties/158216174#/?channel=RES_LET
608	83-85 Old Lansdowne Road, Manchester, M20 2NZ	3 Elm Grove, Didsbury, Manchester, M20 6PL	Richmond Property Management & Letting Ltd, Didsbury	Let available date: 23/02/2025	Flat	1.0	\N	Added on 13/02/2025	£810 pcm\n£187 pw	53.4223	-2.243	https://www.rightmove.co.uk/properties/47788765#/?channel=RES_LET
609	Belgrave Ave	27 Castle Street, Canterbury, CT1 2PX	StudentTenant, Canterbury	Let available date: 01/07/2025	House Share	6.0	\N	Reduced on 13/02/2025	£672 pcm\n£155 pw	53.455816	-2.209459	https://www.rightmove.co.uk/properties/157992689#/?channel=RES_LET
610	Grove House, Skerton Road, Manchester	CityZEN Property Group, 11 Burford Road, London, E15 2ST	CityZEN, London	Let available date: Now	Flat	2.0	1.0	Added on 13/02/2025	£1,343 pcm\n£310 pw	53.459918	-2.277049	https://www.rightmove.co.uk/properties/158215868#/?channel=RES_LET
611	Lancaster Lodge, Lodge Hall Drive, Failsworth	754 Oldham Road, Failsworth, Oldham, M35 9FE	COUSINS ESTATE AGENTS, Failsworth	Let available date: Ask agent	Flat	2.0	2.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.507141	-2.172438	https://www.rightmove.co.uk/properties/157897421#/?channel=RES_LET
612	3 Barton Street, Castlefield, Manchester, M3	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: Now	Flat	2.0	2.0	Reduced on 13/02/2025	£1,150 pcm\n£265 pw	53.475646	-2.252353	https://www.rightmove.co.uk/properties/155109551#/?channel=RES_LET
613	Adelphi Wharf 2, 9 Adelphi Street, Salford, Greater Manchester, M3	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	QUBE Residential, Salford Quays	Let available date: 27/02/2025	Flat	2.0	2.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.48579	-2.26506	https://www.rightmove.co.uk/properties/158214989#/?channel=RES_LET
614	Parkers Apartments, Corporation Street, Manchester	S&S Property Group 78a Kings Road Manchester M25 0FY	S&S Property Group, Manchester	Let available date: Ask agent	Flat	1.0	1.0	Added on 13/02/2025	£975 pcm\n£225 pw	53.488625	-2.239389	https://www.rightmove.co.uk/properties/156188963#/?channel=RES_LET
615	Wellington Road North, Heaton Chapel, Stockport, SK4	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	Julian Wadden, Heaton Moor	Let available date: Now	Flat	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.421974	-2.173895	https://www.rightmove.co.uk/properties/158214194#/?channel=RES_LET
616	City Gate, Blantyre Street, M15 4JS	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	C & R Properties Ltd, Salford Manchester	Let available date: Now	Apartment	2.0	1.0	Added on 13/02/2025	£1,150 pcm\n£265 pw	53.473463	-2.258789	https://www.rightmove.co.uk/properties/158214011#/?channel=RES_LET
617	Fernside Avenue, Withington	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: Now	Apartment	2.0	1.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.428797	-2.215155	https://www.rightmove.co.uk/properties/158213246#/?channel=RES_LET
618	Lexington Court, Broadway, Salford	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 10/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£925 pcm\n£213 pw	53.476737	-2.289399	https://www.rightmove.co.uk/properties/158213018#/?channel=RES_LET
619	Chester Road, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 29/08/2025	Flat	2.0	2.0	Added on 13/02/2025	£2,450 pcm\n£565 pw	53.47224	-2.25578	https://www.rightmove.co.uk/properties/158212847#/?channel=RES_LET
620	Three60, 11 Silvercroft Street, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 21/08/2025	Flat	2.0	2.0	Added on 13/02/2025	£2,300 pcm\n£531 pw	53.47207	-2.25471	https://www.rightmove.co.uk/properties/158212358#/?channel=RES_LET
621	The Quays, Salford, Greater Manchester, M50	2 Anchorage Quay, Salford, M50 3YW	Reeds Rains, Salford Quays City Living	Let available date: 26/02/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.474431	-2.287753	https://www.rightmove.co.uk/properties/158212268#/?channel=RES_LET
622	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Studio	\N	1.0	Added on 13/02/2025	£1,755 pcm\n£405 pw	53.47213	-2.24357	https://www.rightmove.co.uk/properties/158212256#/?channel=RES_LET
623	The Quays, Salford, Greater Manchester, M50	2 Anchorage Quay, Salford, M50 3YW	Reeds Rains, Salford Quays City Living	Let available date: 25/02/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,000 pcm\n£231 pw	53.474487	-2.287773	https://www.rightmove.co.uk/properties/158212265#/?channel=RES_LET
624	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Studio	\N	1.0	Added on 12/02/2025	£1,625 pcm\n£375 pw	53.47213	-2.24352	https://www.rightmove.co.uk/properties/87083313#/?channel=RES_LET
625	Chester Road, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 14/08/2025	Flat	2.0	2.0	Added on 13/02/2025	£2,400 pcm\n£554 pw	53.472283	-2.255758	https://www.rightmove.co.uk/properties/158212223#/?channel=RES_LET
628	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added on 13/02/2025	£2,480 pcm\n£572 pw	53.486896	-2.249343	https://www.rightmove.co.uk/properties/158211539#/?channel=RES_LET
629	Chedworth Drive, Manchester, M23	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 16/02/2025	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.39392	-2.276187	https://www.rightmove.co.uk/properties/158209988#/?channel=RES_LET
630	Chester Road, Manchester, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 25/07/2025	Flat	2.0	2.0	Added on 13/02/2025	£2,350 pcm\n£542 pw	53.47225	-2.25577	https://www.rightmove.co.uk/properties/158209817#/?channel=RES_LET
631	Three60, M15	125 Deansgate, Manchester, M3 2LH	One Move Group, Manchester	Let available date: 24/07/2025	Flat	2.0	2.0	Added on 13/02/2025	£2,300 pcm\n£531 pw	53.47207	-2.25471	https://www.rightmove.co.uk/properties/158209682#/?channel=RES_LET
632	Albert Road, Manchester, M19	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	1.0	1.0	Added on 13/02/2025	£900 pcm\n£208 pw	53.44417	-2.196127	https://www.rightmove.co.uk/properties/158209559#/?channel=RES_LET
633	Ashton Old Road, Openshaw, Manchester	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	Jordan Fishwick, Didsbury	Let available date: 22/02/2025	Apartment	1.0	1.0	Added on 13/02/2025	£625 pcm\n£144 pw	53.47364	-2.182043	https://www.rightmove.co.uk/properties/158209277#/?channel=RES_LET
634	Dickenson Road, Fallowfield, Manchester, M14	351 Wilmslow Road, Ladybarn, Manchester, M14 6XS	Leaders Lettings, Fallowfield	Let available date: 07/07/2025	Apartment	4.0	2.0	Added on 13/02/2025	£2,513 pcm\n£580 pw	53.45246	-2.2171	https://www.rightmove.co.uk/properties/158209202#/?channel=RES_LET
635	Sunnyside Road, Droylsden, Manchester, M43	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Semi-Detached	2.0	1.0	Reduced on 13/02/2025	£1,090 pcm\n£252 pw	53.489418	-2.15204	https://www.rightmove.co.uk/properties/157821899#/?channel=RES_LET
636	Whitworth Lane, Manchester, M14	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Semi-Detached	3.0	1.0	Reduced on 13/02/2025	£1,650 pcm\n£381 pw	53.44639	-2.215311	https://www.rightmove.co.uk/properties/157758944#/?channel=RES_LET
637	Sugar Mill Square, Salford, M5	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	3.0	1.0	Reduced on 13/02/2025	£1,295 pcm\n£299 pw	53.482693	-2.308151	https://www.rightmove.co.uk/properties/157272755#/?channel=RES_LET
638	403 Silkbank Wharf, 21 Derwent Street, Manchester, M5	37 King Street, Manchester, M2 7AT	Redstone Lettings and Management, Manchester	Let available date: 05/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,150 pcm\n£265 pw	53.474626	-2.264222	https://www.rightmove.co.uk/properties/158209040#/?channel=RES_LET
639	Chepstow House, 16-20 Chepstow Street, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 10/03/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,450 pcm\n£335 pw	53.475017	-2.244765	https://www.rightmove.co.uk/properties/158208392#/?channel=RES_LET
640	Chapel Street, Salford, M3	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 27/02/2025	Apartment	1.0	\N	Added on 13/02/2025	£795 pcm\n£183 pw	53.48338	-2.26277	https://www.rightmove.co.uk/properties/158208281#/?channel=RES_LET
641	Rodney Street, Manchester, M4	Purplebricks, 650 The Crescent Colchester Business Park, Colchester, United Kingdom CO4 9YQ	Purplebricks, covering Manchester	Let available date: Ask agent	Semi-Detached	4.0	3.0	Reduced on 13/02/2025	£1,800 pcm\n£415 pw	53.48684	-2.22166	https://www.rightmove.co.uk/properties/157130870#/?channel=RES_LET
642	Victoria House, Victoria Road, Salford	222 Monton Road, Eccles, Manchester, M30 9LJ	Home Estate Agents, Monton	Let available date: Ask agent	Flat	3.0	1.0	Added on 13/02/2025	£1,000 pcm\n£231 pw	53.489772	-2.325831	https://www.rightmove.co.uk/properties/158207507#/?channel=RES_LET
643	The Hacienda, 11 - 15 Whitworth Street West, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	Hunters, Manchester	Let available date: 04/03/2025	Flat	1.0	\N	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.474338	-2.247511	https://www.rightmove.co.uk/properties/158207342#/?channel=RES_LET
644	Frederick Road, Manchester, Greater Manchester, M6	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Apartment	\N	1.0	Added on 13/02/2025	£900 pcm\n£208 pw	53.49073	-2.27879	https://www.rightmove.co.uk/properties/158205998#/?channel=RES_LET
645	Cheetham Hill Road, Manchester, M4 4	Ground Floor, 176 Holliday Street, Birmingham, B1 1TJ	Rentlife, Birmingham	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,025 pcm\n£237 pw	53.489129	-2.2412	https://www.rightmove.co.uk/properties/156675614#/?channel=RES_LET
646	Cavendish Road, West Didsbury	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: 21/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,000 pcm\n£231 pw	53.430533	-2.246229	https://www.rightmove.co.uk/properties/158206061#/?channel=RES_LET
647	8 Dantzic Street, Manchester, M4 2AD	8 Dantzic Street, Manchester, M4 2AD	The James Manchester, The James Manchester	Let available date: 05/03/2025	Flat	1.0	1.0	Added on 13/02/2025	£1,495 pcm\n£345 pw	53.48496	-2.23987	https://www.rightmove.co.uk/properties/158205593#/?channel=RES_LET
648	Rusholme Place, Manchester, M14 5TG	424 Barlow Moor Road, Chorlton Cum Hardy, Manchester, M21 8AD	Property Genius, Manchester	Let available date: Now	Apartment	2.0	1.0	Added on 13/02/2025	£1,295 pcm\n£299 pw	53.458579	-2.225414	https://www.rightmove.co.uk/properties/158205587#/?channel=RES_LET
649	Atelier, M3	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 23/04/2025	Apartment	1.0	1.0	Added yesterday	£1,150 pcm\n£265 pw	53.48312	-2.26006	https://www.rightmove.co.uk/properties/158279786#/?channel=RES_LET
650	Frederick Road, Manchester, Greater Manchester, M6	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Apartment	\N	1.0	Added on 13/02/2025	£758 pcm\n£175 pw	53.49072	-2.27879	https://www.rightmove.co.uk/properties/158205269#/?channel=RES_LET
651	8 Dantzic Street, Manchester, M4 2AD	8 Dantzic Street, Manchester, M4 2AD	The James Manchester, The James Manchester	Let available date: 04/03/2025	Flat	1.0	1.0	Added on 13/02/2025	£1,495 pcm\n£345 pw	53.48496	-2.23987	https://www.rightmove.co.uk/properties/158204834#/?channel=RES_LET
652	Milverton Road	27 Castle Street, Canterbury, CT1 2PX	StudentTenant, Canterbury	Let available date: 01/08/2025	House Share	6.0	\N	Reduced on 13/02/2025	£684 pcm\n£158 pw	53.455561	-2.21143	https://www.rightmove.co.uk/properties/156534407#/?channel=RES_LET
653	Apartments 109A, Victoria Mill, 1 Lower Vickers Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.48824	-2.21533	https://www.rightmove.co.uk/properties/157842287#/?channel=RES_LET
654	Apartments 109A, Victoria Mill, 1 Lower Vickers Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.48824	-2.21533	https://www.rightmove.co.uk/properties/158205953#/?channel=RES_LET
655	Quay 5, 232 Ordsall Lane	111 Piccadilly, Manchester, M1 2HY	Accommodation.co.uk, covering National	Let available date: 28/02/2025	Flat	1.0	1.0	Reduced on 13/02/2025	£975 pcm\n£225 pw	53.472104	-2.271843	https://www.rightmove.co.uk/properties/135169505#/?channel=RES_LET
656	Knutsford Street, Manchester, Greater Manchester, M6	125 Deansgate, Manchester, M3 2LH	Pure, Manchester	Let available date: Ask agent	Terraced	3.0	1.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.48339	-2.29773	https://www.rightmove.co.uk/properties/158204729#/?channel=RES_LET
657	Apartments 109, Victoria Mill, 1 Lower Vickers Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.48824	-2.21533	https://www.rightmove.co.uk/properties/156962507#/?channel=RES_LET
658	Horton Road :: Fallowfield	Jactin House 24 Hood Street Ancoats Urban Village Manchester M4 6WX	Northern Group, Manchester	Let available date: Now	Terraced	2.0	1.0	Added on 13/02/2025	£1,450 pcm\n£335 pw	53.44847	-2.23741	https://www.rightmove.co.uk/properties/158205329#/?channel=RES_LET
659	Frederick Road, Manchester, Greater Manchester, M6	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Apartment	\N	1.0	Added on 13/02/2025	£758 pcm\n£175 pw	53.4907	-2.27883	https://www.rightmove.co.uk/properties/158204663#/?channel=RES_LET
660	City Gate, Castlefield	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: 21/03/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.472668	-2.257047	https://www.rightmove.co.uk/properties/158205011#/?channel=RES_LET
661	Greengate Lane, Prestwich	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: 21/03/2025	House	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.531797	-2.287237	https://www.rightmove.co.uk/properties/158205017#/?channel=RES_LET
662	Silvercroft Street, Manchester, Greater Manchester, M15	125 Deansgate, Manchester, M3 2LH	Pure, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,950 pcm\n£450 pw	53.47216	-2.25472	https://www.rightmove.co.uk/properties/158089733#/?channel=RES_LET
663	Silvercroft Street, Manchester, Greater Manchester, M15	125 Deansgate, Manchester, M3 2LH	Pure, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,950 pcm\n£450 pw	53.47216	-2.25472	https://www.rightmove.co.uk/properties/158089694#/?channel=RES_LET
664	New Cross Central, M2	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 14/04/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,600 pcm\n£369 pw	53.48596	-2.2331	https://www.rightmove.co.uk/properties/158204840#/?channel=RES_LET
665	Ladywell Point,	Unit 5, Bicton Business Park, Shrewsbury, SY3 8DY	Lettingsupermarket.com, National	Let available date: Now	Flat	2.0	1.0	Reduced on 13/02/2025	£995 pcm\n£230 pw	53.48368	-2.32606	https://www.rightmove.co.uk/properties/155429615#/?channel=RES_LET
666	Tib Street, Manchester, Greater Manchester, M4	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Ask agent	Apartment	2.0	\N	Reduced on 13/02/2025	£1,350 pcm\n£312 pw	53.48263	-2.23715	https://www.rightmove.co.uk/properties/116401295#/?channel=RES_LET
667	Meadow View, Naples Street, Ancoats, M4	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: Now	Flat	2.0	1.0	Reduced on 13/02/2025	£1,175 pcm\n£271 pw	53.4882	-2.23642	https://www.rightmove.co.uk/properties/156590075#/?channel=RES_LET
668	Spinners Way, Manchester, M15	50 Bridge Street, Manchester, M3 3BW	Savills Lettings, Manchester	Let available date: 03/04/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,150 pcm\n£265 pw	53.471598	-2.260534	https://www.rightmove.co.uk/properties/158203877#/?channel=RES_LET
669	Apartment 10, Great Clowes Street Manchester M7 2ZS	Retford Enterprise Centre, Randall Way, Retford, DN22 7GR	Burgin Atkinson, Retford	Let available date: Now	Flat	2.0	1.0	Reduced on 13/02/2025	£1,150 pcm\n£265 pw	53.498962	-2.25951	https://www.rightmove.co.uk/properties/158044355#/?channel=RES_LET
670	Michigan Point, Michigan Avenue, Salford	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: 27/02/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,050 pcm\n£242 pw	53.474315	-2.291545	https://www.rightmove.co.uk/properties/157755707#/?channel=RES_LET
671	Barlow Moor Road, Chorlton, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: Now	House Share	1.0	2.0	Reduced on 13/02/2025	£710 pcm\n£164 pw	53.43689	-2.27332	https://www.rightmove.co.uk/properties/157532921#/?channel=RES_LET
672	Barlow Moor Road, Chorlton, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 21/02/2025	House Share	1.0	1.0	Reduced on 13/02/2025	£700 pcm\n£162 pw	53.43689	-2.27332	https://www.rightmove.co.uk/properties/156564938#/?channel=RES_LET
673	Fifty5ive 49B, 55 Queen Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.48673	-2.25239	https://www.rightmove.co.uk/properties/157007597#/?channel=RES_LET
674	Sky Gardens, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 19/02/2025	Apartment	2.0	2.0	Reduced on 10/01/2025	£1,300 pcm\n£300 pw	53.47098	-2.26179	https://www.rightmove.co.uk/properties/156167261#/?channel=RES_LET
675	Fifty5ive 49A, 55 Queen Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.48673	-2.25239	https://www.rightmove.co.uk/properties/157007537#/?channel=RES_LET
676	Fifty5ive 49C, 55 Queen Street	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,050 pcm\n£242 pw	53.48673	-2.25239	https://www.rightmove.co.uk/properties/157007696#/?channel=RES_LET
677	Collier Street, Manchester	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: 01/03/2025	Apartment	2.0	1.0	Reduced on 13/02/2025	£1,100 pcm\n£254 pw	53.475746	-2.252964	https://www.rightmove.co.uk/properties/157827479#/?channel=RES_LET
678	Ballbrook Avenue, Didsbury, Manchester	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	Jordan Fishwick, Didsbury	Let available date: Now	Flat	2.0	1.0	Reduced on 13/02/2025	£1,250 pcm\n£288 pw	53.423824	-2.231757	https://www.rightmove.co.uk/properties/156885017#/?channel=RES_LET
679	Olive Shapley Avenue, Manchester, M20	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	Thornley Groves, Didsbury	Let available date: Now	Flat	1.0	1.0	Reduced on 13/02/2025	£995 pcm\n£230 pw	53.41523	-2.226266	https://www.rightmove.co.uk/properties/156418874#/?channel=RES_LET
680	122 High Street, Northern Quarter	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: 10/03/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,050 pcm\n£242 pw	53.485277	-2.23526	https://www.rightmove.co.uk/properties/157705316#/?channel=RES_LET
681	Redburn Road, Manchester, M23	Imperial Court 2 Exchange Quay Salford M5 3EB	Lawrence Copeland (Town & City Centre), Manchester	Let available date: Now	Semi-Detached	3.0	1.0	Added on 13/02/2025	£1,400 pcm\n£323 pw	53.3989	-2.27407	https://www.rightmove.co.uk/properties/158200310#/?channel=RES_LET
682	Castleway, Swinton, Manchester, M27	10-12 Church Street West, Radcliffe, Manchester M26 2SQ	JonSimon Estate Agents, Radcliffe	Let available date: Now	House	3.0	1.0	Added on 13/02/2025	£1,100 pcm\n£254 pw	53.523885	-2.326399	https://www.rightmove.co.uk/properties/158200271#/?channel=RES_LET
683	Moho, Ellesmere Street, Manchester, M15	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 07/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£925 pcm\n£213 pw	53.47215	-2.26089	https://www.rightmove.co.uk/properties/158200250#/?channel=RES_LET
684	Blanchard Street, Hulme	44 Hulme High Street, Hulme, Manchester, M15 5JP	Delisa Miller, Manchester	Let available date: Now	Terraced	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.461895	-2.250286	https://www.rightmove.co.uk/properties/158200043#/?channel=RES_LET
685	Fifty5ive, Queen Street, Salford, M3	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 24/02/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,230 pcm\n£284 pw	53.48673	-2.25239	https://www.rightmove.co.uk/properties/157521692#/?channel=RES_LET
686	Merchants Quay Court, Montonmill Gardens, Eccles	222 Monton Road, Eccles, Manchester, M30 9LJ	Home Estate Agents, Monton	Let available date: Ask agent	Flat	1.0	1.0	Added on 13/02/2025	£825 pcm\n£190 pw	53.489849	-2.358851	https://www.rightmove.co.uk/properties/158199917#/?channel=RES_LET
687	Dyche Street, Manchester, M4	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,375 pcm\n£317 pw	53.48739	-2.23552	https://www.rightmove.co.uk/properties/157585250#/?channel=RES_LET
688	Ashworth Street, Failsworth, Manchester	61 Ashton Road East, Failsworth, Manchester, M35 9PW	N P Estates, Manchester	Let available date: Ask agent	Terraced	2.0	1.0	Added on 13/02/2025	£895 pcm\n£207 pw	53.501918	-2.16924	https://www.rightmove.co.uk/properties/158199071#/?channel=RES_LET
689	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	1.0	1.0	Added on 13/02/2025	£1,590 pcm\n£367 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158198933#/?channel=RES_LET
690	Flat 2, 166 Plymouth Grove, Longsight, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	George Adams (Estate Agents) Ltd, Manchester	Let available date: 01/04/2025	Flat	2.0	1.0	Added on 13/02/2025	£1,300 pcm\n£300 pw	53.462468	-2.2171	https://www.rightmove.co.uk/properties/158198795#/?channel=RES_LET
691	Oxygen Tower, Manchester, M1	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 13/02/2025	£1,600 pcm\n£369 pw	53.48013	-2.22538	https://www.rightmove.co.uk/properties/156004028#/?channel=RES_LET
692	Aubrey Road, Manchester, Greater Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 01/07/2025	Semi-Detached	7.0	3.0	Reduced on 13/02/2025	£4,702 pcm\n£1,085 pw	53.433809	-2.209296	https://www.rightmove.co.uk/properties/154424642#/?channel=RES_LET
693	Square Gardens,Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Flat Share	1.0	1.0	Added on 13/02/2025	£1,148 pcm\n£265 pw	53.47207	-2.24357	https://www.rightmove.co.uk/properties/158198075#/?channel=RES_LET
694	Viadux, Great Bridgewater Street, Manchester	Holland House 1-5, Oakfield, Sale, Cheshire, M33 6TT	International Property Partners, Covering Greater Manchester	Let available date: Ask agent	Apartment	1.0	\N	Added on 13/02/2025	£1,850 pcm\n£427 pw	53.474872	-2.246849	https://www.rightmove.co.uk/properties/158197520#/?channel=RES_LET
695	Quadrangle, City Centre	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Apartment	2.0	2.0	Added on 13/02/2025	£1,595 pcm\n£368 pw	53.47246	-2.24101	https://www.rightmove.co.uk/properties/158197505#/?channel=RES_LET
696	Great Bridgewater Street, Manchester, Greater Manchester, M1	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 13/02/2025	£2,300 pcm\n£531 pw	53.4755	-2.24931	https://www.rightmove.co.uk/properties/154501556#/?channel=RES_LET
697	Great Bridgewater Street, Manchester, M1	50 Bridge Street, Manchester, M3 3BW	Savills Lettings, Manchester	Let available date: 10/03/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,550 pcm\n£358 pw	53.474017	-2.248398	https://www.rightmove.co.uk/properties/158196845#/?channel=RES_LET
698	Angel Gardens, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	2.0	Added on 13/02/2025	£2,042 pcm\n£471 pw	53.486496	-2.235791	https://www.rightmove.co.uk/properties/158196452#/?channel=RES_LET
699	Flat 1217, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	ila, Swan Street House	Let available date: Ask agent	Flat	1.0	1.0	Added yesterday	£1,300 pcm\n£300 pw	53.48596	-2.23491	https://www.rightmove.co.uk/properties/158289398#/?channel=RES_LET
700	Apt 6.03 :: One Silk Street	Jactin House, 24 Hood Street, Manchester, M4 6WX	Northern Group, Manchester	Let available date: 17/04/2025	Apartment	1.0	1.0	Added on 13/02/2025	£1,350 pcm\n£312 pw	53.486165	-2.227734	https://www.rightmove.co.uk/properties/158196236#/?channel=RES_LET
701	Kampus, Apt 1209 South, 59 Chorlton Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,525 pcm\n£352 pw	53.47688	-2.23455	https://www.rightmove.co.uk/properties/158195420#/?channel=RES_LET
702	Kampus Apt 301 South Block, 59 Chorlton Street, Manchester, Greater Manchester, M1eet, Manchester, Greater	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 13/02/2025	£1,925 pcm\n£444 pw	53.47688	-2.23455	https://www.rightmove.co.uk/properties/158195435#/?channel=RES_LET
703	Kampus, Apt 1001, 44 Aytoun Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,405 pcm\n£324 pw	53.47733	-2.23425	https://www.rightmove.co.uk/properties/158195393#/?channel=RES_LET
704	Kampus, Apt 104 Minshul House, 4 Little David Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Added on 13/02/2025	£2,195 pcm\n£507 pw	53.47752	-2.2353	https://www.rightmove.co.uk/properties/158195408#/?channel=RES_LET
705	2 Marlstone Avenue, Salford, Greater Manchester, M3 7GS	Brook House, Birmingham Road, Henley in Arden, B95 5QR	LettingaProperty.com, Nationwide - Lettings	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.48817	-2.25089	https://www.rightmove.co.uk/properties/157872416#/?channel=RES_LET
706	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,320 pcm\n£305 pw	53.48215	-2.25484	https://www.rightmove.co.uk/properties/158195063#/?channel=RES_LET
707	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,260 pcm\n£291 pw	53.48043	-2.25687	https://www.rightmove.co.uk/properties/158195036#/?channel=RES_LET
708	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,275 pcm\n£294 pw	53.48025	-2.25733	https://www.rightmove.co.uk/properties/158195012#/?channel=RES_LET
709	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,270 pcm\n£293 pw	53.48043	-2.25687	https://www.rightmove.co.uk/properties/158195021#/?channel=RES_LET
710	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,260 pcm\n£291 pw	53.48215	-2.25484	https://www.rightmove.co.uk/properties/158194958#/?channel=RES_LET
711	Stanley Street, Manchester, Greater Manchester, M3	7 Stanley Street, Salford, M3 5GB	The Slate Yard, Salford	Let available date: Now	Apartment	1.0	1.0	Added on 13/02/2025	£1,250 pcm\n£288 pw	53.48043	-2.25687	https://www.rightmove.co.uk/properties/158194928#/?channel=RES_LET
712	Victoria Bridge Street, Salford, M3 5AS	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	Townhouse, Manchester	Let available date: Ask agent	Apartment	2.0	1.0	Reduced on 13/02/2025	£1,200 pcm\n£277 pw	53.484985	-2.246211	https://www.rightmove.co.uk/properties/157817000#/?channel=RES_LET
713	Edge Lane, Stretford, Manchester, M32	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 01/03/2025	Flat	1.0	2.0	Reduced on 13/02/2025	£1,100 pcm\n£254 pw	53.44602	-2.305764	https://www.rightmove.co.uk/properties/157719656#/?channel=RES_LET
714	Windsor Road, Levenshulme, Manchester, M19	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 10/03/2025	Flat	1.0	1.0	Added on 13/02/2025	£950 pcm\n£219 pw	53.444942	-2.196944	https://www.rightmove.co.uk/properties/158189951#/?channel=RES_LET
715	Ellesmere Street, Manchester	22 Lloyd Street, Manchester, M2 5WA	NPP Residential, Manchester	Let available date: 14/03/2025	Town House	3.0	2.0	Reduced on 13/02/2025	£2,100 pcm\n£485 pw	53.47174	-2.261475	https://www.rightmove.co.uk/properties/157772810#/?channel=RES_LET
716	Keswick Road, Heaton Chapel, Stockport, Greater Manchester, SK4	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 19/03/2025	Semi-Detached	3.0	1.0	Reduced on 13/02/2025	£1,450 pcm\n£335 pw	53.433811	-2.168646	https://www.rightmove.co.uk/properties/157490306#/?channel=RES_LET
717	Cedar House, Lakenheath Close, Didsbury, Greater Manchester, M20	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: Now	Apartment	1.0	1.0	Reduced on 13/02/2025	£1,500 pcm\n£346 pw	53.410981	-2.225465	https://www.rightmove.co.uk/properties/87070872#/?channel=RES_LET
718	Spectrum Block 3, Blackfriars Road, Manchester City Centre, Salford, M3	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	Philip James Manchester, Manchester	Let available date: 11/03/2025	Apartment	1.0	1.0	Reduced on 13/02/2025	£925 pcm\n£213 pw	53.486046	-2.25032	https://www.rightmove.co.uk/properties/156992234#/?channel=RES_LET
719	Sherborne Street, Manchester, M8	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 01/03/2025	Flat	2.0	1.0	Added on 13/02/2025	£1,200 pcm\n£277 pw	53.4996	-2.241674	https://www.rightmove.co.uk/properties/158188148#/?channel=RES_LET
720	Kara Street, Salford, M6	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 07/03/2025	Terraced	2.0	1.0	Added on 13/02/2025	£900 pcm\n£208 pw	53.48434	-2.298071	https://www.rightmove.co.uk/properties/158188004#/?channel=RES_LET
721	The Plaza, 1 Every Street, Ancoats, Manchester, M4	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Flat	3.0	2.0	Reduced on 12/02/2025	£1,800 pcm\n£415 pw	53.487411	-2.227484	https://www.rightmove.co.uk/properties/152841935#/?channel=RES_LET
722	Media City, Michigan Point Tower D, 18 Michigan Avenue, Salford, M50	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Flat	2.0	2.0	Reduced on 12/02/2025	£1,300 pcm\n£300 pw	53.473977	-2.293551	https://www.rightmove.co.uk/properties/157045388#/?channel=RES_LET
723	Media City, Michigan Point Tower D, 18 Michigan Avenue, Salford, M50	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Flat	2.0	2.0	Reduced on 12/02/2025	£1,100 pcm\n£254 pw	53.473994	-2.29355	https://www.rightmove.co.uk/properties/157489016#/?channel=RES_LET
724	Kampus Apt 103 Minto and Turner, 3 Little David Street, Manchester, Greater Manchester, M1	Aytoun Street, Manchester, M1 3GL	Native Communities, Manchester	Let available date: Ask agent	Apartment	1.0	1.0	Added on 10/02/2025	£1,595 pcm\n£368 pw	53.47752	-2.2353	https://www.rightmove.co.uk/properties/158056742#/?channel=RES_LET
725	Media City, Michigan Point Tower B, 11 Michigan Avenue, Salford, M50	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Flat	\N	1.0	Reduced on 12/02/2025	£975 pcm\n£225 pw	53.474473	-2.292378	https://www.rightmove.co.uk/properties/157783517#/?channel=RES_LET
726	Redshaw Close, Manchester, M14	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 01/07/2025	Terraced	7.0	4.0	Reduced on 12/02/2025	£4,095 pcm\n£945 pw	53.445805	-2.214957	https://www.rightmove.co.uk/properties/154612661#/?channel=RES_LET
727	Deansgate Square, Owen St, M15 4UG	58-60 Whitworth Street, Bridgewater House Manchester, M1 6LT	Manlets, Manchester	Let available date: 17/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£2,100 pcm\n£485 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/158183606#/?channel=RES_LET
728	Margaret Street, Reddish	450 Didsbury Road Stockport SK4 3BS	Joules Estate Agency, Heaton Mersey	Let available date: 21/02/2025	Terraced	2.0	1.0	Reduced on 12/02/2025	£950 pcm\n£219 pw	53.436298	-2.162499	https://www.rightmove.co.uk/properties/156030881#/?channel=RES_LET
729	Canavan Way, New Broughton, Salford, Manchester, M7	17 Regan Way, Toton, Nottingham, NG9 6RZ	Wise Living Homes, Nottingham	Let available date: 21/02/2025	Semi-Detached	3.0	2.0	Added on 12/02/2025	£1,550 pcm\n£358 pw	53.49804	-2.25909	https://www.rightmove.co.uk/properties/158183249#/?channel=RES_LET
730	Princess Street, Manchester, M1	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat	2.0	1.0	Added on 12/02/2025	£1,375 pcm\n£317 pw	53.476917	-2.239664	https://www.rightmove.co.uk/properties/158182004#/?channel=RES_LET
731	Milwain House, Stockport, SK4	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: 23/02/2025	Flat	1.0	1.0	Added on 12/02/2025	£975 pcm\n£225 pw	53.42341	-2.191771	https://www.rightmove.co.uk/properties/158181971#/?channel=RES_LET
732	Greenham Road, Manchester, M23	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,450 pcm\n£335 pw	53.410896	-2.290244	https://www.rightmove.co.uk/properties/158181929#/?channel=RES_LET
733	Muslin Street, Salford, M5	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Flat Share	1.0	2.0	Reduced on 12/02/2025	£800 pcm\n£185 pw	53.480442	-2.268483	https://www.rightmove.co.uk/properties/156837101#/?channel=RES_LET
734	Jefferson Place, 1 Fernie Street, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 12/03/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,325 pcm\n£306 pw	53.490703	-2.240297	https://www.rightmove.co.uk/properties/157503287#/?channel=RES_LET
735	Watson Street, Manchester, Greater Manchester, M3	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: 10/03/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,550 pcm\n£358 pw	53.477455	-2.248207	https://www.rightmove.co.uk/properties/158180393#/?channel=RES_LET
736	Regent Road, Manchester, M3	50 Bridge Street, Manchester, M3 3BW	Savills Lettings, Manchester	Let available date: 20/03/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.47497	-2.262778	https://www.rightmove.co.uk/properties/158180240#/?channel=RES_LET
737	Ellesmere Street, Manchester, Greater Manchester, M15	27 Ellesmere Street, Hulme, Manchester, M15 4RU	Allsop, The Trilogy	Let available date: Ask agent	Apartment	1.0	1.0	Added on 12/02/2025	£1,230 pcm\n£284 pw	53.47053	-2.26435	https://www.rightmove.co.uk/properties/158178989#/?channel=RES_LET
738	Stretton Avenue, Stretford, M32 9SD	133 Barton Road, Stretford, Manchester, M32 8DN	Trading Places, Stretford	Let available date: 17/02/2025	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.455247	-2.327109	https://www.rightmove.co.uk/properties/158178983#/?channel=RES_LET
739	Flat 4 Fairhaven Court, 66 Sandy Lane, Manchester	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	Jordan Fishwick, Chorlton	Let available date: 21/02/2025	Ground Flat	1.0	1.0	Added on 12/02/2025	£1,100 pcm\n£254 pw	53.438026	-2.270868	https://www.rightmove.co.uk/properties/158178908#/?channel=RES_LET
740	Parkgate House, Parkgate Avenue, Withington	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: Now	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,100 pcm\n£254 pw	53.43137	-2.233425	https://www.rightmove.co.uk/properties/156457454#/?channel=RES_LET
741	Potato Wharf, Manchester, M3	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 17/02/2025	Town House	2.0	2.0	Added on 12/02/2025	£2,000 pcm\n£462 pw	53.47503	-2.25955	https://www.rightmove.co.uk/properties/158178320#/?channel=RES_LET
742	Bury New Road, Prestwich, Manchester, M25	493 Bury New Road, Prestwich, Manchester, M25 1AD	Thornley Groves, Prestwich	Let available date: Now	Flat	2.0	1.0	Reduced on 12/02/2025	£950 pcm\n£219 pw	53.51923	-2.272012	https://www.rightmove.co.uk/properties/156423461#/?channel=RES_LET
743	Egerton Road North, Manchester	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: Now	Apartment	1.0	1.0	Added on 12/02/2025	£800 pcm\n£185 pw	53.442876	-2.269758	https://www.rightmove.co.uk/properties/158177951#/?channel=RES_LET
744	Paragon House 701 , 48 Seymour Grove	30 Churchill Place, London, E14 5RE	Flambard Williams Limited, Canary Wharf	Let available date: 01/03/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,000 pcm\n£231 pw	53.45998	-2.27648	https://www.rightmove.co.uk/properties/158177747#/?channel=RES_LET
745	Basil Street, Stockport	66 Hyde Road, Denton, M34 3AG	My Property Club, Denton	Let available date: Ask agent	Terraced	2.0	1.0	Added on 12/02/2025	£995 pcm\n£230 pw	53.418106	-2.16667	https://www.rightmove.co.uk/properties/158177552#/?channel=RES_LET
746	Firbeck Drive, Manchester, M4	918 Stockport Road, Levenshulme, Manchester, M19 3AB	Edward Mellor Ltd, Levenshulme	Let available date: Now	Flat	2.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.485515	-2.21849	https://www.rightmove.co.uk/properties/156907328#/?channel=RES_LET
747	Yew Tree Road, Fallowfield	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Semi-Detached	5.0	2.0	Added on 12/02/2025	£3,575 pcm\n£825 pw	53.43904	-2.23133	https://www.rightmove.co.uk/properties/57088153#/?channel=RES_LET
748	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	3.0	2.0	Added on 12/02/2025	£3,275 pcm\n£756 pw	53.488122	-2.246187	https://www.rightmove.co.uk/properties/158176919#/?channel=RES_LET
749	Enigma, Uptown Riverside, Manchester, M3	82 King Street, Manchester, M2 4WQ	JOHNS&CO, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 04/02/2025	£1,846 pcm\n£426 pw	53.48817	-2.25089	https://www.rightmove.co.uk/properties/157466939#/?channel=RES_LET
750	Adelphi Wharf 2, 9 Adelphi Street, Salford, Greater Manchester, M3	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	QUBE Residential, Salford Quays	Let available date: 26/02/2025	Flat	1.0	1.0	Added on 12/02/2025	£950 pcm\n£219 pw	53.485889	-2.265043	https://www.rightmove.co.uk/properties/158176049#/?channel=RES_LET
751	Manor Road, Swinton, Manchester, M27	Bank Chambers Worsley Road Worsley Manchester M27 0FW	Your Move, Swinton	Let available date: 12/03/2025	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,300 pcm\n£300 pw	53.502648	-2.337003	https://www.rightmove.co.uk/properties/158175791#/?channel=RES_LET
752	Amos Street, Manchester, M9	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Terraced	3.0	1.0	Reduced on 12/02/2025	£1,195 pcm\n£276 pw	53.509743	-2.205059	https://www.rightmove.co.uk/properties/157753940#/?channel=RES_LET
753	Great Ancoats Street, Manchester, M4	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.479334	-2.221983	https://www.rightmove.co.uk/properties/158175494#/?channel=RES_LET
754	Downtown, Woden Street, Salford	Woden Street M5 4YE	Downtown Asset Management, Salford	Let available date: 17/02/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.47311	-2.265902	https://www.rightmove.co.uk/properties/157618394#/?channel=RES_LET
755	School Lane, Didsbury	91-93 School Road, Sale, M33 7XA	Watersons, Sale	Let available date: 28/03/2025	Terraced	2.0	1.0	Added on 12/02/2025	£1,450 pcm\n£335 pw	53.417259	-2.226519	https://www.rightmove.co.uk/properties/158174996#/?channel=RES_LET
756	Marlstone Avenu, Manchester, Greater Manchester, M3	12b Olympic Way Birchwood Warrington WA2 0YL	Leef Property Management Ltd, Warrington	Let available date: Now	Apartment	2.0	\N	Reduced on 12/02/2025	£1,700 pcm\n£392 pw	53.48817	-2.25089	https://www.rightmove.co.uk/properties/158170847#/?channel=RES_LET
757	19 Central Road, West Didsbury	98 School Road, Sale, M33 7XB	Craven & Company, Sale	Let available date: Now	Flat	1.0	\N	Added on 12/02/2025	£800 pcm\n£185 pw	53.42869	-2.2385	https://www.rightmove.co.uk/properties/158173559#/?channel=RES_LET
758	Bland Road, Manchester	39, Bury New Road, Prestwich, Manchester, M25 9JY	Aubrey Lee & Co, Prestwich	Let available date: Now	Bungalow	3.0	1.0	Added on 12/02/2025	£1,500 pcm\n£346 pw	53.520604	-2.276496	https://www.rightmove.co.uk/properties/158173115#/?channel=RES_LET
759	Novella, 15 Stanley Street	332-334 Deansgate, Manchester, M3 4LY	Julie Twist Properties, Manchester	Let available date: Ask agent	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,250 pcm\n£288 pw	53.47988	-2.25824	https://www.rightmove.co.uk/properties/156108041#/?channel=RES_LET
760	The Gallery, Blackfriars Street, M3	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 22/02/2025	Apartment	1.0	1.0	Added on 12/02/2025	£950 pcm\n£219 pw	53.48395	-2.24861	https://www.rightmove.co.uk/properties/158172821#/?channel=RES_LET
761	Lincoln Gate, 39 Red Bank, Green Quarter	6-14 Great Ancoats Street, Manchester, M4 5AZ	Buckley Frayne, Manchester	Let available date: 18/02/2025	Studio	\N	1.0	Reduced on 12/02/2025	£900 pcm\n£208 pw	53.491397	-2.238303	https://www.rightmove.co.uk/properties/157795715#/?channel=RES_LET
762	Southpoint, 12 Lane End Road, Burnage	6-14 Great Ancoats Street, Manchester, M4 5AZ	Buckley Frayne, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.420627	-2.212763	https://www.rightmove.co.uk/properties/157837517#/?channel=RES_LET
763	Fifty5ive, 55 Queen Street, Salford	AiHOMES LTD, Empress Business Centre, 380 Chester Road, Manchester, M16 9EA	AIHOMES LIMITED, Manchester	Let available date: 20/04/2025	Flat	1.0	1.0	Added on 12/02/2025	£1,150 pcm\n£265 pw	53.486719	-2.25051	https://www.rightmove.co.uk/properties/158171534#/?channel=RES_LET
764	Oscar House First Floor, 1 Cleworth Street, Manchester	AiHOMES LTD, Empress Business Centre, 380 Chester Road, Manchester, M16 9EA	AIHOMES LIMITED, Manchester	Let available date: 07/04/2025	Flat	1.0	1.0	Added on 12/02/2025	£1,080 pcm\n£249 pw	53.470133	-2.263661	https://www.rightmove.co.uk/properties/158171531#/?channel=RES_LET
765	St George`s Church, Manchester	16 Commercial Street, Manchester, M15 4PZ	Premier Residential, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,300 pcm\n£300 pw	53.471923	-2.26009	https://www.rightmove.co.uk/properties/157273844#/?channel=RES_LET
766	Wyverne Road, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	Bridgfords Lettings, Chorlton	Let available date: Now	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,600 pcm\n£369 pw	53.44033	-2.2616	https://www.rightmove.co.uk/properties/158171126#/?channel=RES_LET
767	City South, City Road East, M15	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 22/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,150 pcm\n£265 pw	53.47182	-2.24944	https://www.rightmove.co.uk/properties/158170493#/?channel=RES_LET
768	Cedar Court, Prestwich	44 Blackburn Street, Radcliffe, M26 1NQ	Pearson Ferrier, Radcliffe	Let available date: Now	Apartment	1.0	1.0	Reduced on 12/02/2025	£900 pcm\n£208 pw	53.533668	-2.284184	https://www.rightmove.co.uk/properties/158105492#/?channel=RES_LET
769	Sale Road, Northern Moor, Manchester	249 Kingsway, Burnage, Manchester, M19 1AL	Property Market Hub, Manchester	Let available date: Now	Flat	2.0	1.0	Added on 12/02/2025	£850 pcm\n£196 pw	53.411	-2.27645	https://www.rightmove.co.uk/properties/158170232#/?channel=RES_LET
770	Brailsford Road, Manchester, Greater Manchester, M14	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 01/07/2025	Terraced	4.0	1.0	Reduced on 12/02/2025	£2,514 pcm\n£580 pw	53.441202	-2.206642	https://www.rightmove.co.uk/properties/152869622#/?channel=RES_LET
771	Mayfield Road, Whalley Range, M16 8FT	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	Bridgfords Lettings, Didsbury	Let available date: 21/03/2025	Apartment	1.0	1.0	Added on 12/02/2025	£895 pcm\n£207 pw	53.45221	-2.25369	https://www.rightmove.co.uk/properties/158167298#/?channel=RES_LET
772	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	5 Bankside Boulevard, Salford, M3 7HD	Cortland, Cortland Colliers Yard	Let available date: Now	Apartment	1.0	1.0	Added on 12/02/2025	£1,710 pcm\n£395 pw	53.487146	-2.249484	https://www.rightmove.co.uk/properties/158167187#/?channel=RES_LET
773	Meadow Mill, Stockport	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 10/03/2025	Apartment	2.0	1.0	Added on 12/02/2025	£1,100 pcm\n£254 pw	53.417758	-2.152265	https://www.rightmove.co.uk/properties/158167046#/?channel=RES_LET
774	Bed - Bankside, M3	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 25/04/2025	Apartment	1.0	1.0	Added on 31/01/2025	£1,450 pcm\n£335 pw	53.48737	-2.24953	https://www.rightmove.co.uk/properties/157638104#/?channel=RES_LET
775	Garden Street, Eccles, Salford, M30	19 Leicester Road Salford M7 4AS	Greenco, Salford	Let available date: Now	Terraced	2.0	1.0	Reduced on 12/02/2025	£900 pcm\n£208 pw	53.48013	-2.3408	https://www.rightmove.co.uk/properties/156852404#/?channel=RES_LET
776	Leftbank, Spinningfields	332-334 Deansgate, Manchester, M3 4LY	Julie Twist Properties, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,450 pcm\n£335 pw	53.48043	-2.25537	https://www.rightmove.co.uk/properties/154099571#/?channel=RES_LET
777	Thomas Telford Basin, Piccadilly, M1 2NH	58-60 Whitworth Street, Bridgewater House Manchester, M1 6LT	Manlets, Manchester	Let available date: 28/02/2025	Apartment	2.0	1.0	Added on 12/02/2025	£1,300 pcm\n£300 pw	53.479348	-2.225976	https://www.rightmove.co.uk/properties/158166059#/?channel=RES_LET
778	Block A Railings, Shale Lane, M5	53 King Street, Manchester, M2 4LQ	Henry Wiltshire, Manchester	Let available date: 21/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,600 pcm\n£369 pw	53.480226	-2.263242	https://www.rightmove.co.uk/properties/158165651#/?channel=RES_LET
779	Hill Quays, 8 Commercial Road, Manchester, M15	9 Michigan Avenue, Salford, M50 2HA	X1 Sales & Lettings, Salford	Let available date: Now	Flat	2.0	\N	Reduced on 12/02/2025	£1,275 pcm\n£294 pw	53.472716	-2.250694	https://www.rightmove.co.uk/properties/154367975#/?channel=RES_LET
780	Platt Lane, Manchester, M14 5WH	416 Wilmslow Road, Withington, Manchester M20 3BW	Bridgfords Lettings, Withington	Let available date: Now	4	4.0	1.0	Added on 12/02/2025	£1,500 pcm\n£346 pw	53.45002	-2.22808	https://www.rightmove.co.uk/properties/158164559#/?channel=RES_LET
781	Upper Chorlton Road, Manchester, Greater Manchester, M16	19 London House, High Street, Stony Stratford, Milton Keynes, MK11 1SY	HC-GB, North	Let available date: 19/02/2025	Apartment	3.0	2.0	Added on 12/02/2025	£1,260 pcm\n£291 pw	53.45362	-2.26605	https://www.rightmove.co.uk/properties/158163458#/?channel=RES_LET
782	Palatine Road, Manchester, Greater Manchester, M20	43 Blackburn Street, Radcliffe, M26 1NR	Your Move, Radcliffe	Let available date: 17/02/2025	Flat	1.0	1.0	Added on 12/02/2025	£975 pcm\n£225 pw	53.429246	-2.232826	https://www.rightmove.co.uk/properties/158164316#/?channel=RES_LET
783	Colebrook Drive, Manchester, M40	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: Now	Flat	1.0	1.0	Reduced on 12/02/2025	£850 pcm\n£196 pw	53.50464	-2.19385	https://www.rightmove.co.uk/properties/157824767#/?channel=RES_LET
784	Egerton Road, Fallowfield	509 Wilmslow Road, Withington, Manchester, M20 4BA	Flax & Co, Manchester	Let available date: 01/07/2025	Terraced	9.0	2.0	Added on 12/02/2025	£5,070 pcm\n£1,170 pw	53.436025	-2.214941	https://www.rightmove.co.uk/properties/158163848#/?channel=RES_LET
785	Eccles Old Road, Salford	Suite 11, 8th Floor, St James House, Pendleton Way, Salford, M6 5FW	Thorpe & Co, Salford	Let available date: Now	House Share	1.0	1.0	Added on 12/02/2025	£650 pcm\n£150 pw	53.491725	-2.299698	https://www.rightmove.co.uk/properties/158163620#/?channel=RES_LET
786	Lila Street, Manchester, Greater Manchester, M9	29 Whitworth Street West Manchester M1 5ND	Reeds Rains, Manchester	Let available date: Now	Terraced	4.0	1.0	Reduced on 12/02/2025	£1,200 pcm\n£277 pw	53.509556	-2.20432	https://www.rightmove.co.uk/properties/157302170#/?channel=RES_LET
787	The Edge, Manchester	No1 Spinningfields, Manchester, M3 3JE	City Centre Chic, Manchester	Let available date: 17/02/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,400 pcm\n£323 pw	53.483616	-2.248861	https://www.rightmove.co.uk/properties/156536897#/?channel=RES_LET
788	Greengate West, Salford, M3	249 Deansgate, Manchester, M3 4EN	Reside, Manchester	Let available date: 13/03/2025	House	3.0	1.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.488052	-2.255143	https://www.rightmove.co.uk/properties/158163356#/?channel=RES_LET
789	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 19/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,575 pcm\n£363 pw	53.48242	-2.25206	https://www.rightmove.co.uk/properties/158162417#/?channel=RES_LET
790	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 19/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,595 pcm\n£368 pw	53.48241	-2.25202	https://www.rightmove.co.uk/properties/158164826#/?channel=RES_LET
791	Great Cheetham Street West, Manchester, Greater Manchester, M7	Sevendale House, 7 Dale Street, Manchester, M1 1JA	urbanbubble, Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,100 pcm\n£254 pw	53.50163	-2.26092	https://www.rightmove.co.uk/properties/153310466#/?channel=RES_LET
792	Great Bridgewater Street, Manchester, Greater Manchester, M1	Unit 1 2 Garden Lane Salford M3 7FJ	LOCAL Manchester, LOCAL Manchester	Let available date: Ask agent	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,800 pcm\n£415 pw	53.47515	-2.2472	https://www.rightmove.co.uk/properties/151144412#/?channel=RES_LET
793	Block B Railings, Shale Lane, M5	53 King Street, Manchester, M2 4LQ	Henry Wiltshire, Manchester	Let available date: 21/02/2025	Flat	1.0	1.0	Added on 12/02/2025	£1,300 pcm\n£300 pw	53.480226	-2.263242	https://www.rightmove.co.uk/properties/158162390#/?channel=RES_LET
794	Salisbury House, Granby Row, Manchester, Greater Manchester, M1	60 Oxford Street, Manchester, M1 5EE	Manchester Apartments, Manchester Apartments	Let available date: Now	Studio	\N	1.0	Added on 12/02/2025	£1,170 pcm\n£270 pw	53.47535	-2.2362	https://www.rightmove.co.uk/properties/158162072#/?channel=RES_LET
795	Trentham Street, Manchester, Greater Manchester, M15	\N	Vox, Vox	Let available date: Ask agent	Apartment	1.0	1.0	Added on 12/02/2025	£1,150 pcm\n£265 pw	53.46979	-2.26631	https://www.rightmove.co.uk/properties/158161829#/?channel=RES_LET
796	Affinity Living Embankment West, New Kings Head Yard, Manchester, M3	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	Select Residential, Manchester	Let available date: 19/02/2025	Apartment	3.0	1.0	Added on 12/02/2025	£1,995 pcm\n£460 pw	53.48548	-2.24862	https://www.rightmove.co.uk/properties/158161898#/?channel=RES_LET
797	Bridgewater Point, Worrall Street, Salford, Greater Manchester, M5	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	QUBE Residential, Salford Quays	Let available date: Now	Flat	3.0	2.0	Reduced on 12/02/2025	£1,650 pcm\n£381 pw	53.47285	-2.26813	https://www.rightmove.co.uk/properties/156513749#/?channel=RES_LET
798	Rossetti Place, Lower Byrom Street Manchester M3	257 Deansgate, Manchester, M3 4EN	Kingsdene Ltd, Manchester	Let available date: 24/02/2025	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,200 pcm\n£277 pw	53.47864	-2.2537	https://www.rightmove.co.uk/properties/156378338#/?channel=RES_LET
799	Broadside, M4	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added yesterday	£1,500 pcm\n£346 pw	53.48601	-2.2307	https://www.rightmove.co.uk/properties/158258033#/?channel=RES_LET
800	Braemar Road, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Terraced	6.0	2.0	Reduced on 12/02/2025	£4,420 pcm\n£1,020 pw	53.4416	-2.20847	https://www.rightmove.co.uk/properties/155418977#/?channel=RES_LET
801	Victoria Road, Fallowfield, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Semi-Detached	8.0	3.0	Added on 12/02/2025	£5,790 pcm\n£1,336 pw	53.4378	-2.22455	https://www.rightmove.co.uk/properties/154838762#/?channel=RES_LET
802	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	3.0	2.0	Added on 12/02/2025	£2,775 pcm\n£640 pw	53.486895	-2.249376	https://www.rightmove.co.uk/properties/158160644#/?channel=RES_LET
803	Rusholme Place, Rusholme, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Terraced	6.0	2.0	Reduced on 12/02/2025	£3,952 pcm\n£912 pw	53.45793	-2.22586	https://www.rightmove.co.uk/properties/155853380#/?channel=RES_LET
804	Colliers Yard, M3	2-6 Boundary Row, London, SE1 8HP	Home Made, London	Let available date: Now	Flat	2.0	1.0	Added on 12/02/2025	£1,815 pcm\n£419 pw	53.486897	-2.249365	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET
805	NQ North, Northern Quarter, Manchester, M4	33 Liverpool Road, Manchester, M3 4NQ	Martin & Co, Manchester Central	Let available date: Now	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.484699	-2.22726	https://www.rightmove.co.uk/properties/157175582#/?channel=RES_LET
806	Block B Railings, Shale Lane, M5	53 King Street, Manchester, M2 4LQ	Henry Wiltshire, Manchester	Let available date: 21/02/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,500 pcm\n£346 pw	53.480226	-2.263242	https://www.rightmove.co.uk/properties/158160089#/?channel=RES_LET
807	Broad Street, Salford	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Apartment	5.0	5.0	Reduced on 12/02/2025	£3,575 pcm\n£825 pw	53.48954	-2.28074	https://www.rightmove.co.uk/properties/154914029#/?channel=RES_LET
808	Milton Place, Salford	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Apartment	5.0	5.0	Reduced on 12/02/2025	£3,792 pcm\n£875 pw	53.48959	-2.27982	https://www.rightmove.co.uk/properties/155809649#/?channel=RES_LET
809	Milton Place, Salford	268 Moseley Road, Levenshulme, Manchester, M19 2LH	MCR Move, Manchester	Let available date: 01/07/2025	Apartment	5.0	5.0	Reduced on 12/02/2025	£3,792 pcm\n£875 pw	53.48959	-2.27982	https://www.rightmove.co.uk/properties/155723636#/?channel=RES_LET
810	Derwent Street, Salford, Greater Manchester, M5	2 Anchorage Quay, Salford, M50 3YW	Reeds Rains, Salford Quays City Living	Let available date: 22/03/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,200 pcm\n£277 pw	53.474829	-2.26499	https://www.rightmove.co.uk/properties/158159759#/?channel=RES_LET
811	71 Greenwood Road, Wythenshawe	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: Now	Apartment	2.0	1.0	Added on 12/02/2025	£1,200 pcm\n£277 pw	53.396011	-2.266711	https://www.rightmove.co.uk/properties/158159612#/?channel=RES_LET
812	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 04/06/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,185 pcm\n£273 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159573#/?channel=RES_LET
813	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 10/03/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,365 pcm\n£315 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158096729#/?channel=RES_LET
814	Langsdale Mews M19	2a Mersey Square Stockport SK1 1NU	Bridgfords Lettings, Stockport	Let available date: Now	Apartment	1.0	1.0	Reduced on 12/02/2025	£925 pcm\n£213 pw	53.44218	-2.18845	https://www.rightmove.co.uk/properties/156381410#/?channel=RES_LET
815	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 22/04/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,185 pcm\n£273 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159522#/?channel=RES_LET
816	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 28/04/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,125 pcm\n£260 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159489#/?channel=RES_LET
817	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 03/04/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,420 pcm\n£328 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158096786#/?channel=RES_LET
818	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,365 pcm\n£315 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158096669#/?channel=RES_LET
819	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,440 pcm\n£332 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158096486#/?channel=RES_LET
820	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 07/04/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,135 pcm\n£262 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159435#/?channel=RES_LET
821	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 30/04/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,390 pcm\n£321 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158096390#/?channel=RES_LET
822	Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 02/04/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,440 pcm\n£332 pw	53.4823	-2.26638	https://www.rightmove.co.uk/properties/158096318#/?channel=RES_LET
823	Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 07/03/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,440 pcm\n£332 pw	53.4823	-2.26638	https://www.rightmove.co.uk/properties/158096246#/?channel=RES_LET
824	Elizabeth Tower, M15	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	Settio Property Experience Ltd, Manchester	Let available date: 07/03/2025	Apartment	2.0	2.0	Added yesterday	£1,850 pcm\n£427 pw	53.47224	-2.25578	https://www.rightmove.co.uk/properties/158279789#/?channel=RES_LET
825	Gorton Road, Stockport, SK5	8A Fir Road, Bramhall, SK7 2NP	Leighton Snow, Bramhall	Let available date: 21/02/2025	Apartment	2.0	1.0	Added on 12/02/2025	£900 pcm\n£208 pw	53.449946	-2.157896	https://www.rightmove.co.uk/properties/158159411#/?channel=RES_LET
826	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 28/03/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,125 pcm\n£260 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159405#/?channel=RES_LET
827	The Edge, Salford, M3	61 Great Ancoats Street, Manchester, M4 5AB	Belvoir, Manchester	Let available date: 28/02/2025	Studio	\N	1.0	Reduced on 12/02/2025	£1,050 pcm\n£242 pw	53.48377	-2.24951	https://www.rightmove.co.uk/properties/156564860#/?channel=RES_LET
828	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 06/03/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,135 pcm\n£262 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159300#/?channel=RES_LET
829	Back Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 22/02/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,155 pcm\n£267 pw	53.48194	-2.26653	https://www.rightmove.co.uk/properties/158159660#/?channel=RES_LET
830	Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 26/02/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,125 pcm\n£260 pw	53.4823	-2.26638	https://www.rightmove.co.uk/properties/158159276#/?channel=RES_LET
831	Chorlton Road, Hulme, Manchester, M15	22 Flixton Road Urmston M41 5AA	VitalSpace, South Manchester	Let available date: Now	Semi-Detached	3.0	2.0	Reduced on 12/02/2025	£1,350 pcm\n£312 pw	53.466467	-2.25768	https://www.rightmove.co.uk/properties/157686131#/?channel=RES_LET
832	Hulme Street, Manchester, Greater Manchester, M5	11 Back Hulme Street, Salford, M5 4QT	Greystar, Oxbow, Salford	Let available date: 19/02/2025	Apartment	1.0	1.0	Reduced on 12/02/2025	£1,125 pcm\n£260 pw	53.4823	-2.26638	https://www.rightmove.co.uk/properties/158159237#/?channel=RES_LET
833	Bellows, Lockside Lane, M5	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 24/02/2025	Flat	2.0	2.0	Reduced on 12/02/2025	£1,400 pcm\n£323 pw	53.47959	-2.26336	https://www.rightmove.co.uk/properties/156689513#/?channel=RES_LET
834	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	2.0	2.0	Added on 12/02/2025	£1,622 pcm\n£374 pw	53.47326	-2.28636	https://www.rightmove.co.uk/properties/158158415#/?channel=RES_LET
835	Springfield Court, 2 Dean Road, Salford	68 Arches Whitworth Street West Manchester M1 5WQ	Jordan Fishwick, Manchester	Let available date: 27/02/2025	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,050 pcm\n£242 pw	53.489028	-2.251749	https://www.rightmove.co.uk/properties/157244120#/?channel=RES_LET
836	360 Apartments, Rice Street, Manchester	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 24/02/2025	Apartment	1.0	1.0	Added on 12/02/2025	£950 pcm\n£219 pw	53.475231	-2.255339	https://www.rightmove.co.uk/properties/158158544#/?channel=RES_LET
837	Spinners Mill, 4 Hatter Street, Northern Quarter, Manchester, M4	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 14/04/2025	Flat	2.0	2.0	Added on 12/02/2025	£1,250 pcm\n£288 pw	53.486741	-2.234003	https://www.rightmove.co.uk/properties/158158421#/?channel=RES_LET
838	Block B Railings, Shale Lane, M5	53 King Street, Manchester, M2 4LQ	Henry Wiltshire, Manchester	Let available date: 21/02/2025	Apartment	1.0	1.0	Added on 12/02/2025	£1,300 pcm\n£300 pw	53.480226	-2.263242	https://www.rightmove.co.uk/properties/158158271#/?channel=RES_LET
839	Middlewood Locks, M5	249 Deansgate, Manchester, M3 4EN	Reside, Manchester	Let available date: Now	House	2.0	2.0	Reduced on 12/02/2025	£1,480 pcm\n£342 pw	53.4799	-2.262641	https://www.rightmove.co.uk/properties/157824071#/?channel=RES_LET
840	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: Now	Apartment	3.0	3.0	Added on 12/02/2025	£2,475 pcm\n£571 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158157815#/?channel=RES_LET
841	180 Broughton Lane, Manchester, Greater Manchester, M7 1UF	1170 Rochdale Road, Blackley, Manchester M9 6ER	Aubrey Lee & Co, Blackley	Let available date: Ask agent	House Share	3.0	\N	Reduced on 12/02/2025	£1,450 pcm\n£335 pw	53.49651	-2.26119	https://www.rightmove.co.uk/properties/157609715#/?channel=RES_LET
842	King Street, Manchester, Greater Manchester, M2	60 Oxford Street, Manchester, M1 5EE	Manchester Apartments, Manchester Apartments	Let available date: Now	Apartment	1.0	\N	Reduced on 12/02/2025	£1,014 pcm\n£234 pw	53.48117	-2.24513	https://www.rightmove.co.uk/properties/158157068#/?channel=RES_LET
843	Wendover Road,M23 9JY	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	Semi-Detached	4.0	1.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.40283	-2.30664	https://www.rightmove.co.uk/properties/157990625#/?channel=RES_LET
844	Dickenson Road, Rusholme, Manchester, M14	Bonnington Bond, 2 Anderson Place, Edinburgh, EH6 5NP	ARCPROPERTY MANAGEMENT & LETTINGS, Edinburgh	Let available date: 12/09/2025	Flat	6.0	2.0	Added on 12/02/2025	£3,950 pcm\n£912 pw	53.45246	-2.2171	https://www.rightmove.co.uk/properties/158157407#/?channel=RES_LET
845	Palatine Road,Manchester,M22 4JS	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	House	4.0	2.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.40654	-2.26004	https://www.rightmove.co.uk/properties/157987499#/?channel=RES_LET
846	Bland Road, Prestwich, M25	114 Bury New Road, Whitefield, M45 6AD	Clive Anthony Sales & Lettings, Whitefield	Let available date: Ask agent	House	3.0	2.0	Added on 12/02/2025	£1,450 pcm\n£335 pw	53.519458	-2.275028	https://www.rightmove.co.uk/properties/158157032#/?channel=RES_LET
847	Duke Street, Manchester, Greater Manchester, M3	60 Oxford Street, Manchester, M1 5EE	Manchester Apartments, Manchester Apartments	Let available date: Now	Apartment	1.0	1.0	Added on 12/02/2025	£1,140 pcm\n£263 pw	53.47603	-2.25414	https://www.rightmove.co.uk/properties/158156816#/?channel=RES_LET
848	Duke Street, Manchester, Greater Manchester, M3	60 Oxford Street, Manchester, M1 5EE	Manchester Apartments, Manchester Apartments	Let available date: Now	Apartment	1.0	1.0	Added on 12/02/2025	£1,634 pcm\n£377 pw	53.47603	-2.25414	https://www.rightmove.co.uk/properties/158154743#/?channel=RES_LET
849	Anchorage Quay, Manchester, Greater Manchester, M50	Anchorage Quay, Salford, M50 3BX	Clay Life, Clay	Let available date: 01/03/2025	Duplex	1.0	1.0	Added on 13/02/2025	£1,368 pcm\n£316 pw	53.47389	-2.28591	https://www.rightmove.co.uk/properties/158226713#/?channel=RES_LET
850	Leighton Road,Manchester,M16 9WU	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	Semi-Detached	4.0	2.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.45658	-2.27194	https://www.rightmove.co.uk/properties/157586606#/?channel=RES_LET
851	Norwood Road,Stretford,M32 8PN	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	Semi-Detached	3.0	1.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.44654	-2.29853	https://www.rightmove.co.uk/properties/157627043#/?channel=RES_LET
852	Henrietta Street,Manchester,M16 9JG	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	End of Terrace	3.0	1.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.46225	-2.26655	https://www.rightmove.co.uk/properties/157624280#/?channel=RES_LET
853	Albert Avenue, Prestwich, Manchester	Suite 8 Broadhurst House Bury Old Road, Salford, M7 4QX	Grovewell, Manchester	Let available date: Now	Semi-Detached	3.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.5184	-2.26534	https://www.rightmove.co.uk/properties/157754567#/?channel=RES_LET
854	Darnley Street,Lancashire,M16 9NE	81-83 School Road, Sale, M33 7XA	Bridgfords Lettings, Sale	Let available date: Now	House	3.0	1.0	Reduced on 12/02/2025	£1,900 pcm\n£438 pw	53.45777	-2.26261	https://www.rightmove.co.uk/properties/157610915#/?channel=RES_LET
855	Sky Gardens, Spinners Way, M15	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.47098	-2.26179	https://www.rightmove.co.uk/properties/157477715#/?channel=RES_LET
856	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	\N	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Flat Share	1.0	1.0	Added on 12/02/2025	£1,148 pcm\n£265 pw	53.47215	-2.24352	https://www.rightmove.co.uk/properties/87084456#/?channel=RES_LET
857	195 Urmston Lane, Manchester, M32	Southgate Centre Two, 321 Wilmslow Road, Heald Green, Cheadle, SK8 3PW	Cherry Picked Properties, Heald Green	Let available date: 17/03/2025	Flat	\N	1.0	Added on 12/02/2025	£750 pcm\n£173 pw	53.445284	-2.325211	https://www.rightmove.co.uk/properties/142197284#/?channel=RES_LET
858	Christabel, 106 Dalton Street, Manchester, M40	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 18/03/2025	Flat	1.0	1.0	Added on 12/02/2025	£1,000 pcm\n£231 pw	53.493366	-2.226201	https://www.rightmove.co.uk/properties/158153744#/?channel=RES_LET
859	Ainsdale Avenue, Salford	2a Park Hill, Bury Old Road, Prestwich, Manchester, M25 0FX	Mishkan Estates, Manchester	Let available date: Ask agent	Apartment	2.0	1.0	Added on 12/02/2025	£1,050 pcm\n£242 pw	53.5181	-2.25911	https://www.rightmove.co.uk/properties/158153567#/?channel=RES_LET
860	Rowsley Grove, Reddish , Stockport, SK5	410 Reddish Road, Reddish, Stockport, SK5 7AA	Edward Mellor Ltd, Reddish	Let available date: 23/03/2025	Terraced	2.0	1.0	Added on 12/02/2025	£950 pcm\n£219 pw	53.435611	-2.161006	https://www.rightmove.co.uk/properties/158153414#/?channel=RES_LET
861	Ashdale Crescent, Droylsden, Manchester, M43	20 Wenlock Road, London, N1 7GU	OpenRent, London	Let available date: Now	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.480534	-2.154597	https://www.rightmove.co.uk/properties/158152991#/?channel=RES_LET
862	Hornbeam Way, Green Quarter, Manchester, M4	22 Flixton Road Urmston M41 5AA	VitalSpace, South Manchester	Let available date: 17/03/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,250 pcm\n£288 pw	53.490645	-2.238952	https://www.rightmove.co.uk/properties/157923887#/?channel=RES_LET
863	Trentham Street, Manchester, Greater Manchester, M15	1 Trentham Street, Hulme, Manchester, M15 4YG	Vox, Vox	Let available date: Ask agent	Apartment	3.0	2.0	Added on 12/02/2025	£1,880 pcm\n£434 pw	53.46998	-2.266	https://www.rightmove.co.uk/properties/158151632#/?channel=RES_LET
864	Woden Street, Salford	16 Commercial Street, Manchester, M15 4PZ	Premier Residential, Manchester	Let available date: 21/02/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.472684	-2.266424	https://www.rightmove.co.uk/properties/157215911#/?channel=RES_LET
865	High Definition, 5 Red Mediacityuk M50	257 Deansgate, Manchester, M3 4EN	Kingsdene Ltd, Manchester	Let available date: 18/03/2025	Apartment	2.0	2.0	Added on 12/02/2025	£1,450 pcm\n£335 pw	53.47404	-2.29947	https://www.rightmove.co.uk/properties/158151542#/?channel=RES_LET
866	Thorp Street, Eccles	39, Bury New Road, Prestwich, Manchester, M25 9JY	Aubrey Lee & Co, Prestwich	Let available date: Now	Terraced	2.0	1.0	Added on 12/02/2025	£1,000 pcm\n£231 pw	53.475833	-2.36965	https://www.rightmove.co.uk/properties/158151194#/?channel=RES_LET
867	30 Haydn Avenue, ,	202 Ashby Square, Loughborough, LE11 5AA	loc8me, Covering Manchester	Let available date: 05/09/2025	House Share	4.0	\N	Added on 12/02/2025	£841 pcm\n£194 pw	53.457092	-2.233269	https://www.rightmove.co.uk/properties/158151017#/?channel=RES_LET
868	Lancaster House, Whitworth Street	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: Now	Apartment	1.0	1.0	Reduced on 12/02/2025	£950 pcm\n£219 pw	53.475436	-2.238704	https://www.rightmove.co.uk/properties/156848327#/?channel=RES_LET
869	Redcar Avenue, Withington, M20	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	Montrose Properties Ltd, West Didsbury	Let available date: Now	Terraced	4.0	1.0	Added on 12/02/2025	£1,950 pcm\n£450 pw	53.43041	-2.2346	https://www.rightmove.co.uk/properties/158150069#/?channel=RES_LET
870	9 Owen Street Manchester M15	257 Deansgate, Manchester, M3 4EN	Kingsdene Ltd, Manchester	Let available date: Now	Apartment	3.0	2.0	Reduced on 12/02/2025	£2,900 pcm\n£669 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/156434465#/?channel=RES_LET
871	Novella, Stanley Street, Salford	241 Deansgate Manchester M3 4EN	Ascend, Manchester	Let available date: 21/02/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,400 pcm\n£323 pw	53.480216	-2.258002	https://www.rightmove.co.uk/properties/154846988#/?channel=RES_LET
872	Collingwood Drive, Swinton, Manchester, Greater Manchester, M27 5LE	2 - 10 Bradshawgate Bolton BL1 1DG	Miller Metcalfe, Bolton	Let available date: Ask agent	Semi-Detached	3.0	1.0	Added on 12/02/2025	£1,500 pcm\n£346 pw	53.505162	-2.325356	https://www.rightmove.co.uk/properties/158148026#/?channel=RES_LET
873	Langdale Avenue, Manchester	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	Gascoigne Halman, Didsbury	Let available date: Now	Apartment	1.0	1.0	Reduced on 12/02/2025	£925 pcm\n£213 pw	53.441982	-2.186971	https://www.rightmove.co.uk/properties/157276196#/?channel=RES_LET
874	Apartment 904, 7 Nobel Way, Manchester, Greater Manchester, M1	7 Nobel Way, Oxford Road, Manchester, M1 7FU	uhaus, uhaus	Let available date: Ask agent	Apartment	2.0	2.0	Added yesterday	£1,975 pcm\n£456 pw	53.47309	-2.23791	https://www.rightmove.co.uk/properties/158271338#/?channel=RES_LET
875	South Tower, Deansgate Square	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	Montrose Properties Ltd, West Didsbury	Let available date: Now	Apartment	2.0	2.0	Added on 12/02/2025	£2,250 pcm\n£519 pw	53.47217	-2.25155	https://www.rightmove.co.uk/properties/87083886#/?channel=RES_LET
876	15 Ludgate Hill, Manchester, M4 4AL	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	Townhouse, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,350 pcm\n£312 pw	53.4887	-2.233184	https://www.rightmove.co.uk/properties/156923966#/?channel=RES_LET
877	Lumiere, Castlefield, M15	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: 28/02/2025	Apartment	1.0	1.0	Added on 12/02/2025	£950 pcm\n£219 pw	53.47208	-2.24989	https://www.rightmove.co.uk/properties/87083469#/?channel=RES_LET
878	Hill Street, Manchester, Greater Manchester, M20	306 Wilmslow Road, Manchester, M14 6LF	Thornley Groves, Fallowfield	Let available date: 01/07/2025	Terraced	4.0	1.0	Added on 12/02/2025	£2,253 pcm\n£520 pw	53.453447	-2.223847	https://www.rightmove.co.uk/properties/87083442#/?channel=RES_LET
879	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	5 Botanic Avenue, Manchester, M15 6AA	Downing Property Management Ltd, Square Gardens	Let available date: Ask agent	Studio	\N	1.0	Added on 12/02/2025	£1,625 pcm\n£375 pw	53.47213	-2.24352	https://www.rightmove.co.uk/properties/87083313#/?channel=RES_LET
880	Wilburn Basin, Block A, Ordsall Lane, Salford, M5	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: 07/03/2025	Flat	2.0	2.0	Reduced on 12/02/2025	£1,250 pcm\n£288 pw	53.47777	-2.262085	https://www.rightmove.co.uk/properties/87083304#/?channel=RES_LET
881	Oldham Road, Manchester, M4	Covering London	HASSLE FREE LETTINGS, London	Let available date: 10/03/2025	Apartment	2.0	1.0	Added on 12/02/2025	£1,350 pcm\n£312 pw	53.487227	-2.225958	https://www.rightmove.co.uk/properties/87082764#/?channel=RES_LET
882	Wilburn Basin, Block A, Ordsall Lane, Salford, M5	25 Whitworth Street West, Manchester, M1 5ND	Thornley Groves, Manchester Southern Gateway	Let available date: Now	Flat	2.0	2.0	Added on 12/02/2025	£1,390 pcm\n£321 pw	53.47777	-2.262085	https://www.rightmove.co.uk/properties/87082554#/?channel=RES_LET
883	Number One Media City UK Salford Quays M50	257 Deansgate, Manchester, M3 4EN	Kingsdene Ltd, Manchester	Let available date: 24/02/2025	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,170 pcm\n£270 pw	53.47305	-2.29811	https://www.rightmove.co.uk/properties/153997127#/?channel=RES_LET
884	Kingsford Street, Manchester, M5	Covering London	HASSLE FREE LETTINGS, London	Let available date: Now	Terraced	3.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.486282	-2.30679	https://www.rightmove.co.uk/properties/157707785#/?channel=RES_LET
885	The Plaza, Ancoats	3-5 Duke Street, Manchester, M3 4NF	We Let Properties, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 12/02/2025	£1,400 pcm\n£323 pw	53.478333	-2.218799	https://www.rightmove.co.uk/properties/87082197#/?channel=RES_LET
886	Vulcan Mill, Malta Street	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	Goodwin Fish, Manchester	Let available date: Now	Apartment	2.0	2.0	Added on 12/02/2025	£1,650 pcm\n£381 pw	53.480663	-2.218798	https://www.rightmove.co.uk/properties/87081051#/?channel=RES_LET
887	Lausanne Road, Manchester, Greater Manchester, M20	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	Manchester Easy Rent, Manchester	Let available date: Ask agent	Terraced	6.0	1.0	Added on 12/02/2025	£2,700 pcm\n£623 pw	53.43626	-2.22816	https://www.rightmove.co.uk/properties/76959380#/?channel=RES_LET
888	Bendix Street, Manchester, Greater Manchester, M4	Sevendale House, 7 Dale Street, Manchester, M1 1JA	urbanbubble, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,500 pcm\n£346 pw	53.48749	-2.23311	https://www.rightmove.co.uk/properties/157889114#/?channel=RES_LET
889	Parrs Wood Road, Manchester, Greater Manchester, M20	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	Manchester Easy Rent, Manchester	Let available date: Ask agent	Semi-Detached	4.0	\N	Reduced on 12/02/2025	£1,920 pcm\n£443 pw	53.4344	-2.21445	https://www.rightmove.co.uk/properties/86986682#/?channel=RES_LET
890	Alexander House, Talbot road, Manchester, Greater Manchester, M16	12b Olympic Way Birchwood Warrington WA2 0YL	Leef Property Management Ltd, Warrington	Let available date: 21/03/2025	Apartment	1.0	\N	Added on 12/02/2025	£1,100 pcm\n£254 pw	53.45942	-2.28581	https://www.rightmove.co.uk/properties/145040864#/?channel=RES_LET
891	St. Ives Road, Manchester, Greater Manchester, M14	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	Manchester Easy Rent, Manchester	Let available date: 01/07/2025	End of Terrace	4.0	\N	Added on 12/02/2025	£1,900 pcm\n£438 pw	53.45047	-2.22808	https://www.rightmove.co.uk/properties/130462787#/?channel=RES_LET
892	Stillwater Drive, Sport City, Manchester, M11	33 Liverpool Road, Manchester, M3 4NQ	Martin & Co, Manchester Central	Let available date: Now	Apartment	1.0	1.0	Reduced on 12/02/2025	£850 pcm\n£196 pw	53.485802	-2.19417	https://www.rightmove.co.uk/properties/157175651#/?channel=RES_LET
893	Whitworth Street West, Manchester	Unit 415 Spaces, 125 Deansgate, Manchester, M3 2BY	Hermes Living, Manchester	Let available date: 12/03/2025	Apartment	2.0	1.0	Added on 12/02/2025	£1,500 pcm\n£346 pw	53.47459	-2.248522	https://www.rightmove.co.uk/properties/87079995#/?channel=RES_LET
894	Butler Street, Miles Platting	365 Chapel Street, Salford, M3 5JT	Kaytons Estate Agents, Manchester	Let available date: 19/03/2025	Terraced	3.0	1.0	Added on 12/02/2025	£1,200 pcm\n£277 pw	53.485752	-2.217881	https://www.rightmove.co.uk/properties/87079767#/?channel=RES_LET
895	Block 6 Spectrum, M3	The Hacienda 21 Albion Street Manchester M1 5DA	Bridgfords Lettings, Manchester	Let available date: Now	Apartment	2.0	1.0	Reduced on 12/02/2025	£1,150 pcm\n£265 pw	53.48575	-2.25073	https://www.rightmove.co.uk/properties/104282804#/?channel=RES_LET
896	Abberton Road, M20	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 01/07/2025	Detached	10.0	3.0	Reduced on 12/02/2025	£4,900 pcm\n£1,131 pw	53.43031	-2.23987	https://www.rightmove.co.uk/properties/155972312#/?channel=RES_LET
897	St Andrews Gardens, Eccles Fold, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	Hunters, Manchester	Let available date: 21/03/2025	Apartment	1.0	1.0	Added on 12/02/2025	£825 pcm\n£190 pw	53.481796	-2.341837	https://www.rightmove.co.uk/properties/87078732#/?channel=RES_LET
898	Romney Street, Salford,	202 Ashby Square, Loughborough, LE11 5AA	loc8me, Covering Manchester	Let available date: 05/09/2025	House Share	3.0	\N	Reduced on 12/02/2025	£776 pcm\n£179 pw	53.497868	-2.279087	https://www.rightmove.co.uk/properties/87078699#/?channel=RES_LET
899	New Vic, 103 Corporation Street, Manchester M4	New Victoria, 103 Corporation Street, Manchester, M4 4DZ	Savills Lettings, New Vic	Let available date: 09/04/2025	Flat	2.0	2.0	Added on 11/02/2025	£1,700 pcm\n£392 pw	53.48748	-2.24073	https://www.rightmove.co.uk/properties/158092766#/?channel=RES_LET
900	Wilmott Street, Manchester, Greater Manchester, M15	50 Bridge Street, Manchester, M3 3BW	Savills Lettings, Manchester	Let available date: Now	Apartment	\N	1.0	Added on 12/02/2025	£1,350 pcm\n£312 pw	53.471124	-2.24562	https://www.rightmove.co.uk/properties/87078282#/?channel=RES_LET
901	Armitage Street, Manchester	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	Hills, Eccles	Let available date: Now	Terraced	2.0	1.0	Added on 12/02/2025	£1,050 pcm\n£242 pw	53.480202	-2.355132	https://www.rightmove.co.uk/properties/156664946#/?channel=RES_LET
902	Granby House, Granby Row, Manchester, M1	289 - 291 Deansgate, Manchester, M3 4EW	Leaders Lettings, Manchester	Let available date: 14/04/2025	Apartment	1.0	1.0	Added on 12/02/2025	£995 pcm\n£230 pw	53.47499	-2.2359	https://www.rightmove.co.uk/properties/158147615#/?channel=RES_LET
903	Parrs Wood Road, Fallowfield, Manchester, M20 4RQ	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	Townhouse, Manchester	Let available date: 01/07/2025	Semi-Detached	6.0	2.0	Reduced on 12/02/2025	£4,030 pcm\n£930 pw	53.428707	-2.216506	https://www.rightmove.co.uk/properties/154123958#/?channel=RES_LET
904	Cypress Place, 9 New Century Park, Manchester, M4	361 Deansgate, Manchester, M3 4LG	NEXIS Property, Manchester	Let available date: Now	Apartment	2.0	2.0	Reduced on 12/02/2025	£1,200 pcm\n£277 pw	53.489762	-2.240247	https://www.rightmove.co.uk/properties/155836268#/?channel=RES_LET
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."properties" ("id", "property_type", "bedrooms", "bathrooms", "locations_df_sil_id", "agents_df_sil_id") FROM stdin;
\.


--
-- Data for Name: properties1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."properties1" ("id", "property_type", "bedrooms", "bathrooms") FROM stdin;
d1222f0e-61e6-4b44-ab47-059efffbddfe	house	3	3
\.


--
-- Data for Name: query_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."query_logs" ("id", "query", "executed_at") FROM stdin;
\.


--
-- Data for Name: agents_df; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."agents_df" ("id", "agent_name", "agent_address", "rowid") FROM stdin;
1	Home Made, London	2-6 Boundary Row, London, SE1 8HP	1167527
2	Visum, Nationwide	Web based Estate Agent	2167527
3	Hills, Eccles	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	3167527
4	Kirn Estates, Altrincham	Kings House Stamford Street Altrincham WA14 1EX	4167527
5	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	5167527
6	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	6167527
7	The Residences - Deansgate Square, The Residences - Deansgate Square	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	7167527
8	Visum, Nationwide	Web based Estate Agent	8167527
9	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	9167527
10	The Residences - Deansgate Square, The Residences - Deansgate Square	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	10167527
11	The Residences - Deansgate Square, The Residences - Deansgate Square	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	11167527
12	The Residences - Deansgate Square, The Residences - Deansgate Square	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	12167527
13	The Residences - Deansgate Square, The Residences - Deansgate Square	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	13167527
14	Northern Etchells, Manchester	53a Church Road, Gatley, Cheadle, SK8 4NG	14167527
15	Your Move, Swinton	Bank Chambers Worsley Road Worsley Manchester M27 0FW	15167527
16	C & R Properties Ltd, Hulme Manchester	Meridian Square Stretford Road Hulme Manchester M15 5JH	16167527
17	Hibbert Homes, Hale	175 Ashley Road Hale WA15 9SD	17167527
18	Thornley Groves, Didsbury	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	18167527
19	Thornley Groves, Didsbury	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	19167527
20	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	20167527
21	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	21167527
22	Home Made, London	2-6 Boundary Row, London, SE1 8HP	22167527
23	Home Made, London	2-6 Boundary Row, London, SE1 8HP	23167527
24	Home Made, London	2-6 Boundary Row, London, SE1 8HP	24167527
25	Home Made, London	2-6 Boundary Row, London, SE1 8HP	25167527
26	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	126167527
27	OpenRent, London	20 Wenlock Road, London, N1 7GU	127167527
28	OpenRent, London	20 Wenlock Road, London, N1 7GU	128167527
29	Vesper Homes, Manchester	One St Peter's Square Manchester M2 3DE	129167527
30	Julian Wadden, Heaton Moor	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	130167527
31	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	131167527
32	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	132167527
33	The Estate Agent Manchester, Manchester	B2 Chorlton Mill, Cambridge Street, Manchester, M1 5BY	133167527
34	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	134167527
35	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	151167527
36	Home Made, London	2-6 Boundary Row, London, SE1 8HP	160167527
37	Home Made, London	2-6 Boundary Row, London, SE1 8HP	161167527
38	Home Made, London	2-6 Boundary Row, London, SE1 8HP	162167527
39	Home Made, London	2-6 Boundary Row, London, SE1 8HP	163167527
40	Home Made, London	2-6 Boundary Row, London, SE1 8HP	164167527
41	Home Made, London	2-6 Boundary Row, London, SE1 8HP	165167527
42	Home Made, London	2-6 Boundary Row, London, SE1 8HP	166167527
43	Home Made, London	2-6 Boundary Row, London, SE1 8HP	167167527
44	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	168167527
45	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	169167527
46	Jordan Fishwick, Chorlton	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	170167527
47	UNCLE, London	7a Howick Place London SW1P 1DZ	171167527
48	UNCLE, London	7a Howick Place London SW1P 1DZ	172167527
49	UNCLE, London	7a Howick Place London SW1P 1DZ	173167527
50	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	174167527
51	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	175167527
52	Allsop, The Trilogy	27 Ellesmere Street, Hulme, Manchester, M15 4RU	176167527
53	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	177167527
54	Clarke & Co, Chadderton	582 Broadway, Chadderton, Oldham OL9 9NF	178167527
55	Clarke & Co, Chadderton	582 Broadway, Chadderton, Oldham OL9 9NF	179167527
56	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	180167527
57	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	181167527
58	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	182167527
59	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	183167527
60	OpenRent, London	20 Wenlock Road, London, N1 7GU	184167527
61	OpenRent, London	20 Wenlock Road, London, N1 7GU	185167527
62	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	186167527
63	Livingway Team Ltd, Livingway	Jactin house 24 Hood Street Manchester M46WX	187167527
64	South Manchester Homes, Didsbury	Suite 97, 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	188167527
65	South Manchester Homes, Didsbury	Suite 97, 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	189167527
66	Lancashire Properties, Manchester	967 Stockport Road, Levenshulme, Manchester, M19 3NP	190167527
67	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	191167527
68	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	192167527
69	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	193167527
70	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	194167527
71	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	195167527
72	OpenRent, London	20 Wenlock Road, London, N1 7GU	196167527
73	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	197167527
74	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	198167527
75	Admove, Altrincham	197-201 Manchester Road, Altrincham, WA14 5NU	199167527
76	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	200167527
77	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	201167527
78	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	202167527
79	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	203167527
80	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	204167527
81	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	205167527
82	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	206167527
83	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	207167527
84	Get Living, New Maker Yards	15 Middlewood Street, Salford, M5 4YW	208167527
85	OpenRent, London	20 Wenlock Road, London, N1 7GU	209167527
86	BRIC Living, Liverpool	605 Smithdown Road, Allerton, Liverpool, L15 5AG	210167527
87	Admove, Altrincham	197-201 Manchester Road, Altrincham, WA14 5NU	211167527
88	Thorpe & Co, Salford	Suite 11, 8th Floor, St James House, Pendleton Way, Salford, M6 5FW	212167527
89	Normie Sales & Lettings, North Manchester	503-505 Bury New Road, Prestwich, Manchester M25 1AD	213167527
90	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	214167527
91	CityZEN, London	CityZEN Property Group, 11 Burford Road, London, E15 2ST	215167527
92	Property Genius, Manchester	424 Barlow Moor Road, Chorlton Cum Hardy, Manchester, M21 8AD	216167527
93	Hunters, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	217167527
94	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	218167527
95	Homes2share, Manchester	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	219167527
96	Homes2share, Manchester	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	220167527
97	Homes2share, Manchester	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	221167527
98	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	222167527
99	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	223167527
100	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	224167527
101	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	225167527
102	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	226167527
103	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	227167527
104	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	228167527
105	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	229167527
106	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	230167527
107	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	231167527
108	Bridgfords Lettings, Didsbury	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	232167527
109	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	233167527
110	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	234167527
111	ila, Swan Street House	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	235167527
112	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	236167527
113	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	237167527
114	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	238167527
115	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	239167527
116	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	240167527
117	Accommodation.co.uk, covering National	111 Piccadilly, Manchester, M1 2HY	241167527
118	Buraq Estates, Manchester	314 Wilmslow Road Fallowfield Manchester M14 6XQ	242167527
119	Roger Dean, Heald Green	218 Finney Lane, Heald Green, SK8 3QA	243167527
120	Three Sixty Living, Stockport	2 Edward Street, Stockport, SK1 3NQ	244167527
121	OpenRent, London	20 Wenlock Road, London, N1 7GU	245167527
122	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	246167527
123	Buraq Estates, Manchester	314 Wilmslow Road Fallowfield Manchester M14 6XQ	247167527
124	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	248167527
125	Address Properties, Liverpool	183 - 185 Rose Lane, Mossley Hill, Liverpool, L18 5EA	249167527
126	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	250167527
127	Ustay Global, Manchester	3, 28 spaces, Peter House, Oxford Street, Manchester, M1 5AN	251167527
128	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	252167527
129	Thornley Groves, Didsbury	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	253167527
130	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	254167527
131	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	255167527
132	Hunters, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	256167527
133	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	257167527
134	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	258167527
135	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	259167527
136	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	260167527
137	Ascend, Manchester	241 Deansgate Manchester M3 4EN	261167527
138	Hunters Worsley, Worsley	Suite 4, The Granary, Worsley, Manchester, M28 2EB	262167527
139	Bridgfords Lettings, Withington	416 Wilmslow Road, Withington, Manchester M20 3BW	263167527
140	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	264167527
141	Reside, Manchester	249 Deansgate, Manchester, M3 4EN	265167527
142	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	266167527
143	Reside, Manchester	249 Deansgate, Manchester, M3 4EN	267167527
144	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	268167527
145	Orlando Reid, Manchester	St John's Court 19B Quay Street, Manchester, M3 3HN	269167527
146	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	270167527
147	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	52 Port Street, Northern Quarter, Manchester, M1 2EQ	271167527
148	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	272167527
149	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	273167527
150	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	274167527
151	Reside, Manchester	249 Deansgate, Manchester, M3 4EN	275167527
152	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	276167527
153	Solomon Estates, Manchester	896 Stockport Road, Levenshulme, Manchester, M19 3AD	277167527
154	Kingsdene Ltd, Manchester	257 Deansgate, Manchester, M3 4EN	278167527
155	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	279167527
156	Bridgfords Lettings, Didsbury	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	280167527
157	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	281167527
158	Jordan Fishwick, Didsbury	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	282167527
159	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	283167527
160	loc8me, Covering Manchester	202 Ashby Square, Loughborough, LE11 5AA	284167527
161	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	285167527
162	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	286167527
163	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	287167527
164	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	288167527
165	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	289167527
166	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	290167527
167	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	291167527
168	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	292167527
169	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	293167527
170	OpenRent, London	20 Wenlock Road, London, N1 7GU	295167527
171	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	296167527
172	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	297167527
173	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	298167527
174	Home Made, London	2-6 Boundary Row, London, SE1 8HP	299167527
175	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	300167527
176	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	301167527
177	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	302167527
178	Julie Twist Properties, Manchester	332-334 Deansgate, Manchester, M3 4LY	303167527
179	Home Made, London	2-6 Boundary Row, London, SE1 8HP	304167527
180	Home Made, London	2-6 Boundary Row, London, SE1 8HP	305167527
181	Home Made, London	2-6 Boundary Row, London, SE1 8HP	306167527
182	Julian Wadden, Didsbury	764b Wilmslow Road, Didsbury, Manchester, M20 2DR	307167527
183	Home Made, London	2-6 Boundary Row, London, SE1 8HP	308167527
184	Home Made, London	2-6 Boundary Row, London, SE1 8HP	309167527
185	Hunters, South Manchester	372 Palatine Road, Manchester, M22 4FZ	310167527
186	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	311167527
187	Montrose Properties Ltd, West Didsbury	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	312167527
188	Ascend, Manchester	241 Deansgate Manchester M3 4EN	313167527
189	Julie Twist Properties, Manchester	332-334 Deansgate, Manchester, M3 4LY	314167527
190	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	315167527
191	Northern Group, Manchester	Jactin House 24 Hood Street Ancoats Urban Village Manchester M4 6WX	316167527
192	Welcome To Manchester Lettings, Covering Manchester	Manchester	317167527
193	Complete RPI, Birmingham	Suite 142 51 Pinfold Street Birmingham B2 4AY	318167527
194	Thornley Groves, Monton	25-27 Monton Green, Monton, Eccles, Manchester, M30 9LL	319167527
195	Normie Sales & Lettings, North Manchester	503-505 Bury New Road, Prestwich, Manchester M25 1AD	320167527
196	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	321167527
197	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	322167527
198	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	323167527
199	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	324167527
200	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	325167527
201	Wren Properties Ltd, Didsbury	Wren House 108 Palatine Road, Didsbury, Manchester, M20 3ZA	327167527
202	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	328167527
203	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	329167527
204	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	330167527
205	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	331167527
206	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	332167527
207	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	333167527
208	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	334167527
209	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	335167527
210	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	337167527
211	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	338167527
212	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	339167527
213	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	340167527
214	uhaus, uhaus	7 Nobel Way, Oxford Road, Manchester, M1 7FU	341167527
215	Karsons Lettings, Manchester	Karsons Lettings Innospace, 2nd Floor, Turing House, 5 Archway, Manchester M15 5RL	342167527
216	Taylor & Wood Estate Agents, Hyde	104-106 Market Street, Hyde, SK14 1ES	343167527
217	Union, Union	Water Street, Manchester, M3 4JQ	344167527
218	Union, Union	Water Street, Manchester, M3 4JQ	345167527
219	Union, Union	Water Street, Manchester, M3 4JQ	346167527
220	Savills Lettings, Manchester	50 Bridge Street, Manchester, M3 3BW	347167527
221	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	348167527
222	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	349167527
223	Get Living, New Maker Yards	15 Middlewood Street, Salford, M5 4YW	350167527
224	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	52 Port Street, Northern Quarter, Manchester, M1 2EQ	351167527
225	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	352167527
226	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	353167527
227	Julian Wadden, Heaton Moor	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	354167527
228	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	355167527
229	Callaghans, Gatley	46 Church Road Gatley SK8 4NQ	356167527
230	@ThePlace, Dukinfield	Suite 2, The Old Court House, Chapel Street, Dukinfield, SK16 4DT	357167527
231	Cortland, Botanica	Chester Road Manchester, M15 4YH	358167527
232	HYBR, Covering Manchester	Covering Manchester	359167527
233	HYBR, Covering Manchester	Covering Manchester	360167527
234	HYBR, Covering Manchester	Covering Manchester	361167527
235	HYBR, Covering Manchester	Covering Manchester	362167527
236	HYBR, Covering Manchester	Covering Manchester	363167527
237	HYBR, Covering Manchester	Covering Manchester	364167527
238	HYBR, Covering Manchester	Covering Manchester	365167527
239	HYBR, Covering Manchester	Covering Manchester	366167527
240	Montrose Properties Ltd, West Didsbury	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	367167527
241	HYBR, Covering Manchester	Covering Manchester	368167527
242	HYBR, Covering Manchester	Covering Manchester	369167527
243	HYBR, Covering Manchester	Covering Manchester	370167527
244	HYBR, Covering Manchester	Covering Manchester	371167527
245	Cortland, Botanica	Chester Road Manchester, M15 4YH	372167527
246	Cortland, Botanica	Chester Road Manchester, M15 4YH	373167527
247	CityZEN, London	CityZEN Property Group, 11 Burford Road, London, E15 2ST	374167527
248	HYBR, Covering Manchester	Covering Manchester	375167527
249	Cortland, Botanica	Chester Road Manchester, M15 4YH	376167527
250	HYBR, Covering Manchester	Covering Manchester	377167527
251	HYBR, Covering Manchester	Covering Manchester	378167527
252	Drake & Co, Rusholme	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	379167527
253	Drake & Co, Rusholme	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	380167527
254	HYBR, Covering Manchester	Covering Manchester	381167527
255	HYBR, Covering Manchester	Covering Manchester	382167527
256	HYBR, Covering Manchester	Covering Manchester	383167527
257	Drake & Co, Rusholme	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	384167527
258	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	385167527
259	HYBR, Covering Manchester	Covering Manchester	386167527
260	George Adams (Estate Agents) Ltd, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	387167527
261	Emoov, Chelmsford	Marsh Farm House Lower Burnham Road Latchingdon CM3 6HQ	388167527
262	Drake & Co, Rusholme	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	389167527
263	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	390167527
264	Bridgfords Lettings, Didsbury	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	391167527
265	Duet, Duet	The Quays, Salford, M50 3SF	392167527
266	Buckley Frayne, Manchester	6-14 Great Ancoats Street, Manchester, M4 5AZ	393167527
267	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	394167527
268	Joules Estate Agency, Heaton Mersey	450 Didsbury Road Stockport SK4 3BS	395167527
269	Union, Union	Water Street, Manchester, M3 4JQ	396167527
270	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	397167527
271	Union, Union	Water Street, Manchester, M3 4JQ	398167527
272	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	399167527
273	Union, Union	Water Street, Manchester, M3 4JQ	400167527
274	Union, Union	Water Street, Manchester, M3 4JQ	401167527
275	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	402167527
276	Union, Union	Water Street, Manchester, M3 4JQ	403167527
277	Reeds Rains, Salford	167 Langworthy Road, Salford, M6 5PW	404167527
278	Union, Union	Water Street, Manchester, M3 4JQ	405167527
279	George Adams (Estate Agents) Ltd, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	406167527
280	Union, Union	Water Street, Manchester, M3 4JQ	407167527
281	Wren Properties Ltd, Didsbury	Wren House 108 Palatine Road, Didsbury, Manchester, M20 3ZA	408167527
282	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	409167527
283	Bridgfords Lettings, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	410167527
284	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	411167527
285	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	412167527
286	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	413167527
287	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	414167527
288	Buckley Frayne, Manchester	6-14 Great Ancoats Street, Manchester, M4 5AZ	415167527
289	Grovewell, Manchester	Suite 8 Broadhurst House Bury Old Road, Salford, M7 4QX	416167527
290	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	417167527
291	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	418167527
292	Bridgfords Lettings, Didsbury	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	419167527
293	Residential Estates, Chester	First Fl, Kinnerton House Bell Meadow Business Park Park Lane Pulford CH4 9EP	420167527
294	Reeds Rains, Didsbury	713 Wilmslow Road, Didsbury, Manchester, M20 6RE	421167527
295	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	422167527
296	Hunters, South Manchester	372 Palatine Road, Manchester, M22 4FZ	423167527
297	COUSINS ESTATE AGENTS, Failsworth	754 Oldham Road, Failsworth, Oldham, M35 9FE	425167527
298	Bridgfords Lettings, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	426167527
299	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	427167527
300	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	428167527
301	Parello Ltd, Walkden	1 Bridgewater Road, Worsley, M28 3JE	429167527
302	Northern Etchells, Manchester	53a Church Road, Gatley, Cheadle, SK8 4NG	430167527
303	Primo Property Management, Manchester	46 Moss Lane West Manchester M15 5FB	431167527
304	Home Made, London	2-6 Boundary Row, London, SE1 8HP	432167527
305	Intus Lettings, Manchester	Suite A, 2nd Floor, The Nest, Broadway, Salford, M50 2UE	433167527
306	Home Made, London	2-6 Boundary Row, London, SE1 8HP	434167527
307	Julie Twist Properties, Manchester	332-334 Deansgate, Manchester, M3 4LY	435167527
308	The James Manchester, The James Manchester	8 Dantzic Street, Manchester, M4 2AD	436167527
309	The James Manchester, The James Manchester	8 Dantzic Street, Manchester, M4 2AD	437167527
310	The James Manchester, The James Manchester	8 Dantzic Street, Manchester, M4 2AD	438167527
311	eXp UK, North West	1 Northumberland Avenue, Trafalgar Square, London, WC2N 5BW	439167527
312	Northwood, Wigan	55-57 Mesnes Street, Wigan, WN1 1QX	440167527
313	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	441167527
314	eXp UK, North West	1 Northumberland Avenue, Trafalgar Square, London, WC2N 5BW	442167527
315	Abode Property Management, Greater Manchester	Suite B, 7th Floor, Beckwith House 1-3 Wellington Road Stockport SK4 1AF	443167527
316	Simple Life, Simple Life	Simple Life Stafford Court, 145 Washway Road Sale M33 7PE	444167527
317	Jordan Fishwick, Chorlton	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	445167527
318	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	446167527
319	Martin & Co, Rochdale & Oldham	15b Cheetham Street, Rochdale, OL16 1DG	447167527
320	@ThePlace, Dukinfield	Suite 2, The Old Court House, Chapel Street, Dukinfield, SK16 4DT	448167527
321	Home Made, London	2-6 Boundary Row, London, SE1 8HP	449167527
322	Ascend, Manchester	241 Deansgate Manchester M3 4EN	450167527
323	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	451167527
324	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	452167527
325	Normie Sales & Lettings, North Manchester	503-505 Bury New Road, Prestwich, Manchester M25 1AD	453167527
326	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	454167527
327	Home Made, London	2-6 Boundary Row, London, SE1 8HP	455167527
328	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	456167527
329	The Estate Agent Manchester, Manchester	B2 Chorlton Mill, Cambridge Street, Manchester, M1 5BY	457167527
330	Home Made, London	2-6 Boundary Row, London, SE1 8HP	458167527
331	Home Made, London	2-6 Boundary Row, London, SE1 8HP	459167527
332	The Good Estate Agency, Manchester	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	460167527
333	Home Made, London	2-6 Boundary Row, London, SE1 8HP	461167527
334	The Good Estate Agency, Manchester	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	463167527
335	Home Made, London	2-6 Boundary Row, London, SE1 8HP	464167527
336	The Good Estate Agency, Manchester	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	465167527
337	The Good Estate Agency, Manchester	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	466167527
338	Home Made, London	2-6 Boundary Row, London, SE1 8HP	467167527
339	The Good Estate Agency, Manchester	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	468167527
340	Home Made, London	2-6 Boundary Row, London, SE1 8HP	469167527
341	Home Made, London	2-6 Boundary Row, London, SE1 8HP	470167527
342	Home Made, London	2-6 Boundary Row, London, SE1 8HP	471167527
343	Home Made, London	2-6 Boundary Row, London, SE1 8HP	472167527
344	Home Made, London	2-6 Boundary Row, London, SE1 8HP	473167527
345	OpenRent, London	20 Wenlock Road, London, N1 7GU	475167527
346	OpenRent, London	20 Wenlock Road, London, N1 7GU	476167527
347	OpenRent, London	20 Wenlock Road, London, N1 7GU	477167527
348	OpenRent, London	20 Wenlock Road, London, N1 7GU	478167527
349	NPP Residential, Manchester	22 Lloyd Street, Manchester, M2 5WA	479167527
350	NPP Residential, Manchester	22 Lloyd Street, Manchester, M2 5WA	480167527
351	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	481167527
352	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	482167527
353	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	483167527
354	OpenRent, London	20 Wenlock Road, London, N1 7GU	484167527
355	OpenRent, London	20 Wenlock Road, London, N1 7GU	485167527
356	OpenRent, London	20 Wenlock Road, London, N1 7GU	486167527
357	VitalSpace, South Manchester	22 Flixton Road Urmston M41 5AA	487167527
358	Accommodation.co.uk, covering National	111 Piccadilly, Manchester, M1 2HY	488167527
359	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	489167527
360	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	490167527
361	Accommodation.co.uk, covering National	111 Piccadilly, Manchester, M1 2HY	491167527
362	Welcome To Manchester Lettings, Covering Manchester	Manchester	492167527
363	Welcome To Manchester Lettings, Covering Manchester	Manchester	493167527
364	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	494167527
365	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	495167527
366	Welcome To Manchester Lettings, Covering Manchester	Manchester	496167527
367	OpenRent, London	20 Wenlock Road, London, N1 7GU	497167527
368	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	498167527
369	Manchester Apartments, Manchester Apartments	60 Oxford Street, Manchester, M1 5EE	499167527
370	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	500167527
371	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	501167527
372	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	502167527
373	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	503167527
374	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	504167527
375	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	505167527
376	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	506167527
377	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	507167527
378	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	508167527
379	Dandara Living, Manchester, Chapel Wharf	Alcock House, 99 Chapel Street, Salford, M3 5DZ	509167527
380	OpenRent, London	20 Wenlock Road, London, N1 7GU	510167527
381	OpenRent, London	20 Wenlock Road, London, N1 7GU	511167527
382	Nicholas Humphreys, Manchester	323 Wilmslow Road, Fallowfield, Manchester, M14 6NW	512167527
383	HYBR, Covering Manchester	Covering Manchester	513167527
384	HYBR, Covering Manchester	Covering Manchester	514167527
385	HYBR, Covering Manchester	Covering Manchester	515167527
386	HYBR, Covering Manchester	Covering Manchester	516167527
387	HYBR, Covering Manchester	Covering Manchester	517167527
388	HYBR, Covering Manchester	Covering Manchester	518167527
389	North Property Group, Manchester	2nd Floor, 8-16 Newton Street, Manchester, M1 2AN	519167527
390	Your Move, Swinton	Bank Chambers Worsley Road Worsley Manchester M27 0FW	520167527
391	Reeds Rains, Didsbury	713 Wilmslow Road, Didsbury, Manchester, M20 6RE	521167527
392	Hills, Eccles	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	522167527
393	Welcome To Manchester Lettings, Covering Manchester	Manchester	523167527
394	Union, Union	Water Street, Manchester, M3 4JQ	524167527
395	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	525167527
396	Thornley Groves, Prestwich	493 Bury New Road, Prestwich, Manchester, M25 1AD	526167527
397	Joules Estate Agency, Heaton Mersey	450 Didsbury Road Stockport SK4 3BS	527167527
398	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	528167527
399	Home Made, London	2-6 Boundary Row, London, SE1 8HP	626167527
400	urbanbubble, Manchester	Sevendale House, 7 Dale Street, Manchester, M1 1JA	529167527
401	PriceLinsey, Sheffield	Office 4, Northern Gateway, Enterprise Centre, Saltergate, Chesterfield, S40 1UT	530167527
402	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	531167527
403	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	532167527
404	COUSINS ESTATE AGENTS, Failsworth	754 Oldham Road, Failsworth, Oldham, M35 9FE	533167527
405	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	534167527
406	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	535167527
407	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	536167527
408	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	537167527
409	Thornley Groves, Monton	25-27 Monton Green, Monton, Eccles, Manchester, M30 9LL	538167527
410	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	539167527
411	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	540167527
412	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	541167527
413	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	542167527
414	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	543167527
415	SnugPads, Salford	Salford	544167527
416	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	545167527
417	Orlando Reid, Manchester	St John's Court 19B Quay Street, Manchester, M3 3HN	546167527
418	C & R Properties Ltd, Hulme Manchester	Meridian Square Stretford Road Hulme Manchester M15 5JH	547167527
419	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	548167527
420	Home Made, London	2-6 Boundary Row, London, SE1 8HP	549167527
421	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	550167527
422	OpenRent, London	20 Wenlock Road, London, N1 7GU	551167527
423	OpenRent, London	20 Wenlock Road, London, N1 7GU	552167527
424	For Living, For Living	52 Regent Street, Eccles, Manchester, M30 0BP	553167527
425	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	554167527
426	NPP Residential, Manchester	22 Lloyd Street, Manchester, M2 5WA	555167527
427	Fozard Properties Ltd, Upton	118 Ford Road, Upton Village, Wirral CH49 0TQ	556167527
428	Main & Main, Heald Green	198 Finney Lane, Heald Green, Cheadle, SK8 3QA	557167527
429	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	558167527
430	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	559167527
431	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	560167527
432	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	561167527
433	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	562167527
434	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	563167527
435	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	564167527
436	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	565167527
437	Bridgfords Lettings, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	566167527
438	Amro Property Management, The Green Rooms	Leader House, Blue Media City, Salford, M50 2AG	567167527
439	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	568167527
440	Rent For Me, Manchester	Office 2,8 Chester Street, Manchester, M1 5GE	569167527
441	For Living, For Living	52 Regent Street, Eccles, Manchester, M30 0BP	570167527
442	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	571167527
443	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	572167527
444	C & R Properties Ltd, Hulme Manchester	Meridian Square Stretford Road Hulme Manchester M15 5JH	573167527
445	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	575167527
446	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	576167527
447	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	577167527
448	Home Made, London	2-6 Boundary Row, London, SE1 8HP	627167527
449	Ying Wah Property, Manchester	Unit 301 The Junction Merchants Quay, Salford, M50 3SG	578167527
450	Townhouse, Manchester	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	580167527
451	City Comfort Luxury Apartments, Manchester	209-210 Oakland House Talbot Road, Stretford, Manchester, M16 0PQ	581167527
452	Orlando Reid, Manchester	St John's Court 19B Quay Street, Manchester, M3 3HN	582167527
453	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	583167527
454	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	584167527
455	Madina Property, Manchester	588 Stockport Road Longsight Manchester M13 0RQ	585167527
456	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	586167527
457	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	587167527
458	urbanbubble, Manchester	Sevendale house, 7 Dale Street, Manchester, M1 1JA	588167527
459	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	589167527
460	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	52 Port Street, Northern Quarter, Manchester, M1 2EQ	590167527
461	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	591167527
462	OpenRent, London	20 Wenlock Road, London, N1 7GU	592167527
463	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	593167527
464	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	594167527
465	Bridgfords Lettings, Withington	416 Wilmslow Road, Withington, Manchester M20 3BW	595167527
466	Ascend, Manchester	241 Deansgate Manchester M3 4EN	596167527
467	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	597167527
468	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	598167527
469	Ustay Global, Manchester	3, 28 spaces, Peter House, Oxford Street, Manchester, M1 5AN	599167527
470	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	600167527
471	Julian Wadden, Heaton Moor	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	601167527
472	Julian Wadden, Stockport	81-83 Wellington Road South, Stockport, SK1 3SL	602167527
473	Hills, Eccles	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	603167527
474	Aubrey Lee & Co, Prestwich	39, Bury New Road, Prestwich, Manchester, M25 9JY	604167527
475	Saltsman & co, Droylsden	116 Market Street, Droylsden, Manchester, M43 7AA	605167527
476	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	606167527
477	Granite Lettings & Property Management - Residential Lettings & Sales, Northern Quarter	52 Port Street, Northern Quarter, Manchester, M1 2EQ	607167527
478	Richmond Property Management & Letting Ltd, Didsbury	3 Elm Grove, Didsbury, Manchester, M20 6PL	608167527
479	StudentTenant, Canterbury	27 Castle Street, Canterbury, CT1 2PX	609167527
480	COUSINS ESTATE AGENTS, Failsworth	754 Oldham Road, Failsworth, Oldham, M35 9FE	611167527
481	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	612167527
482	QUBE Residential, Salford Quays	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	613167527
483	S&S Property Group, Manchester	S&S Property Group 78a Kings Road Manchester M25 0FY	614167527
484	Julian Wadden, Heaton Moor	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	615167527
485	C & R Properties Ltd, Salford Manchester	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	616167527
486	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	617167527
487	Ascend, Manchester	241 Deansgate Manchester M3 4EN	618167527
488	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	619167527
489	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	620167527
490	Reeds Rains, Salford Quays City Living	2 Anchorage Quay, Salford, M50 3YW	621167527
491	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	622167527
492	Reeds Rains, Salford Quays City Living	2 Anchorage Quay, Salford, M50 3YW	623167527
493	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	624167527
494	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	625167527
495	Home Made, London	2-6 Boundary Row, London, SE1 8HP	628167527
496	OpenRent, London	20 Wenlock Road, London, N1 7GU	629167527
497	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	630167527
498	One Move Group, Manchester	125 Deansgate, Manchester, M3 2LH	631167527
499	OpenRent, London	20 Wenlock Road, London, N1 7GU	632167527
500	Jordan Fishwick, Didsbury	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	633167527
501	Leaders Lettings, Fallowfield	351 Wilmslow Road, Ladybarn, Manchester, M14 6XS	634167527
502	OpenRent, London	20 Wenlock Road, London, N1 7GU	635167527
503	OpenRent, London	20 Wenlock Road, London, N1 7GU	636167527
504	OpenRent, London	20 Wenlock Road, London, N1 7GU	637167527
505	Redstone Lettings and Management, Manchester	37 King Street, Manchester, M2 7AT	638167527
506	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	639167527
507	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	640167527
508	Purplebricks, covering Manchester	Purplebricks, 650 The Crescent Colchester Business Park, Colchester, United Kingdom CO4 9YQ	641167527
509	Home Estate Agents, Monton	222 Monton Road, Eccles, Manchester, M30 9LJ	642167527
510	Hunters, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	643167527
511	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	644167527
512	Rentlife, Birmingham	Ground Floor, 176 Holliday Street, Birmingham, B1 1TJ	645167527
513	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	646167527
514	The James Manchester, The James Manchester	8 Dantzic Street, Manchester, M4 2AD	647167527
515	Property Genius, Manchester	424 Barlow Moor Road, Chorlton Cum Hardy, Manchester, M21 8AD	648167527
516	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	650167527
517	The James Manchester, The James Manchester	8 Dantzic Street, Manchester, M4 2AD	651167527
518	StudentTenant, Canterbury	27 Castle Street, Canterbury, CT1 2PX	652167527
519	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	653167527
520	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	654167527
521	Accommodation.co.uk, covering National	111 Piccadilly, Manchester, M1 2HY	655167527
522	Pure, Manchester	125 Deansgate, Manchester, M3 2LH	656167527
523	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	657167527
524	Northern Group, Manchester	Jactin House 24 Hood Street Ancoats Urban Village Manchester M4 6WX	658167527
525	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	659167527
526	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	660167527
527	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	661167527
528	Pure, Manchester	125 Deansgate, Manchester, M3 2LH	662167527
529	Pure, Manchester	125 Deansgate, Manchester, M3 2LH	663167527
530	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	664167527
531	Lettingsupermarket.com, National	Unit 5, Bicton Business Park, Shrewsbury, SY3 8DY	665167527
532	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	666167527
533	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	667167527
534	Savills Lettings, Manchester	50 Bridge Street, Manchester, M3 3BW	668167527
535	Burgin Atkinson, Retford	Retford Enterprise Centre, Randall Way, Retford, DN22 7GR	669167527
536	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	670167527
537	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	671167527
538	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	672167527
539	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	673167527
540	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	675167527
541	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	676167527
542	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	677167527
543	Jordan Fishwick, Didsbury	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	678167527
544	Thornley Groves, Didsbury	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	679167527
545	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	680167527
546	Lawrence Copeland (Town & City Centre), Manchester	Imperial Court 2 Exchange Quay Salford M5 3EB	681167527
547	JonSimon Estate Agents, Radcliffe	10-12 Church Street West, Radcliffe, Manchester M26 2SQ	682167527
548	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	683167527
549	Delisa Miller, Manchester	44 Hulme High Street, Hulme, Manchester, M15 5JP	684167527
550	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	685167527
551	Home Estate Agents, Monton	222 Monton Road, Eccles, Manchester, M30 9LJ	686167527
552	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	687167527
553	N P Estates, Manchester	61 Ashton Road East, Failsworth, Manchester, M35 9PW	688167527
554	Home Made, London	2-6 Boundary Row, London, SE1 8HP	689167527
555	George Adams (Estate Agents) Ltd, Manchester	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	690167527
556	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	691167527
557	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	692167527
558	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	693167527
559	International Property Partners, Covering Greater Manchester	Holland House 1-5, Oakfield, Sale, Cheshire, M33 6TT	694167527
560	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	695167527
561	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	696167527
562	Savills Lettings, Manchester	50 Bridge Street, Manchester, M3 3BW	697167527
563	Home Made, London	2-6 Boundary Row, London, SE1 8HP	698167527
564	Northern Group, Manchester	Jactin House, 24 Hood Street, Manchester, M4 6WX	700167527
565	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	702167527
566	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	703167527
567	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	704167527
568	LettingaProperty.com, Nationwide - Lettings	Brook House, Birmingham Road, Henley in Arden, B95 5QR	705167527
569	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	706167527
570	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	707167527
571	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	708167527
572	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	709167527
573	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	710167527
574	The Slate Yard, Salford	7 Stanley Street, Salford, M3 5GB	711167527
575	Townhouse, Manchester	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	712167527
576	OpenRent, London	20 Wenlock Road, London, N1 7GU	713167527
577	OpenRent, London	20 Wenlock Road, London, N1 7GU	714167527
578	NPP Residential, Manchester	22 Lloyd Street, Manchester, M2 5WA	715167527
579	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	716167527
580	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	717167527
581	Philip James Manchester, Manchester	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	718167527
582	OpenRent, London	20 Wenlock Road, London, N1 7GU	719167527
583	OpenRent, London	20 Wenlock Road, London, N1 7GU	720167527
584	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	721167527
585	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	722167527
586	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	723167527
587	Native Communities, Manchester	Aytoun Street, Manchester, M1 3GL	724167527
588	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	725167527
589	OpenRent, London	20 Wenlock Road, London, N1 7GU	726167527
590	Manlets, Manchester	58-60 Whitworth Street, Bridgewater House Manchester, M1 6LT	727167527
591	Joules Estate Agency, Heaton Mersey	450 Didsbury Road Stockport SK4 3BS	728167527
592	Wise Living Homes, Nottingham	17 Regan Way, Toton, Nottingham, NG9 6RZ	729167527
593	OpenRent, London	20 Wenlock Road, London, N1 7GU	730167527
594	OpenRent, London	20 Wenlock Road, London, N1 7GU	731167527
595	OpenRent, London	20 Wenlock Road, London, N1 7GU	732167527
596	OpenRent, London	20 Wenlock Road, London, N1 7GU	733167527
597	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	734167527
598	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	735167527
599	Savills Lettings, Manchester	50 Bridge Street, Manchester, M3 3BW	736167527
600	Trading Places, Stretford	133 Barton Road, Stretford, Manchester, M32 8DN	738167527
601	Jordan Fishwick, Chorlton	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	739167527
602	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	740167527
603	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	741167527
604	Thornley Groves, Prestwich	493 Bury New Road, Prestwich, Manchester, M25 1AD	742167527
605	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	743167527
606	Flambard Williams Limited, Canary Wharf	30 Churchill Place, London, E14 5RE	744167527
607	My Property Club, Denton	66 Hyde Road, Denton, M34 3AG	745167527
608	Edward Mellor Ltd, Levenshulme	918 Stockport Road, Levenshulme, Manchester, M19 3AB	746167527
609	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	747167527
610	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	748167527
611	JOHNS&CO, Manchester	82 King Street, Manchester, M2 4WQ	749167527
612	QUBE Residential, Salford Quays	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	750167527
613	Your Move, Swinton	Bank Chambers Worsley Road Worsley Manchester M27 0FW	751167527
614	OpenRent, London	20 Wenlock Road, London, N1 7GU	752167527
615	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	753167527
616	Downtown Asset Management, Salford	Woden Street M5 4YE	754167527
617	Watersons, Sale	91-93 School Road, Sale, M33 7XA	755167527
618	Leef Property Management Ltd, Warrington	12b Olympic Way Birchwood Warrington WA2 0YL	756167527
619	Craven & Company, Sale	98 School Road, Sale, M33 7XB	757167527
620	Aubrey Lee & Co, Prestwich	39, Bury New Road, Prestwich, Manchester, M25 9JY	758167527
621	Julie Twist Properties, Manchester	332-334 Deansgate, Manchester, M3 4LY	759167527
622	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	760167527
623	Buckley Frayne, Manchester	6-14 Great Ancoats Street, Manchester, M4 5AZ	761167527
624	Buckley Frayne, Manchester	6-14 Great Ancoats Street, Manchester, M4 5AZ	762167527
625	AIHOMES LIMITED, Manchester	AiHOMES LTD, Empress Business Centre, 380 Chester Road, Manchester, M16 9EA	763167527
626	AIHOMES LIMITED, Manchester	AiHOMES LTD, Empress Business Centre, 380 Chester Road, Manchester, M16 9EA	764167527
627	Premier Residential, Manchester	16 Commercial Street, Manchester, M15 4PZ	765167527
628	Bridgfords Lettings, Chorlton	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	766167527
629	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	767167527
630	Pearson Ferrier, Radcliffe	44 Blackburn Street, Radcliffe, M26 1NQ	768167527
631	Property Market Hub, Manchester	249 Kingsway, Burnage, Manchester, M19 1AL	769167527
632	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	770167527
633	Bridgfords Lettings, Didsbury	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	771167527
634	Cortland, Cortland Colliers Yard	5 Bankside Boulevard, Salford, M3 7HD	772167527
635	Ascend, Manchester	241 Deansgate Manchester M3 4EN	773167527
636	Settio Property Experience Ltd, Manchester	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	774167527
637	Greenco, Salford	19 Leicester Road Salford M7 4AS	775167527
638	Julie Twist Properties, Manchester	332-334 Deansgate, Manchester, M3 4LY	776167527
639	Manlets, Manchester	58-60 Whitworth Street, Bridgewater House Manchester, M1 6LT	777167527
640	Henry Wiltshire, Manchester	53 King Street, Manchester, M2 4LQ	778167527
641	X1 Sales & Lettings, Salford	9 Michigan Avenue, Salford, M50 2HA	779167527
642	Bridgfords Lettings, Withington	416 Wilmslow Road, Withington, Manchester M20 3BW	780167527
643	HC-GB, North	19 London House, High Street, Stony Stratford, Milton Keynes, MK11 1SY	781167527
644	Your Move, Radcliffe	43 Blackburn Street, Radcliffe, M26 1NR	782167527
645	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	783167527
646	Flax & Co, Manchester	509 Wilmslow Road, Withington, Manchester, M20 4BA	784167527
647	Thorpe & Co, Salford	Suite 11, 8th Floor, St James House, Pendleton Way, Salford, M6 5FW	785167527
648	Reeds Rains, Manchester	29 Whitworth Street West Manchester M1 5ND	786167527
649	City Centre Chic, Manchester	No1 Spinningfields, Manchester, M3 3JE	787167527
650	Reside, Manchester	249 Deansgate, Manchester, M3 4EN	788167527
651	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	789167527
652	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	790167527
653	urbanbubble, Manchester	Sevendale House, 7 Dale Street, Manchester, M1 1JA	791167527
654	LOCAL Manchester, LOCAL Manchester	Unit 1 2 Garden Lane Salford M3 7FJ	792167527
655	Henry Wiltshire, Manchester	53 King Street, Manchester, M2 4LQ	793167527
656	Manchester Apartments, Manchester Apartments	60 Oxford Street, Manchester, M1 5EE	794167527
657	Vox, Vox	1 Trentham Street, Hulme, Manchester, M15 4YG	795167527
658	Select Residential, Manchester	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	796167527
659	QUBE Residential, Salford Quays	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	797167527
660	Kingsdene Ltd, Manchester	257 Deansgate, Manchester, M3 4EN	798167527
661	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	800167527
662	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	801167527
663	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	803167527
664	Martin & Co, Manchester Central	33 Liverpool Road, Manchester, M3 4NQ	805167527
665	Henry Wiltshire, Manchester	53 King Street, Manchester, M2 4LQ	806167527
666	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	807167527
667	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	808167527
668	MCR Move, Manchester	268 Moseley Road, Levenshulme, Manchester, M19 2LH	809167527
669	Reeds Rains, Salford Quays City Living	2 Anchorage Quay, Salford, M50 3YW	810167527
670	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	811167527
671	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	812167527
672	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	813167527
673	Bridgfords Lettings, Stockport	2a Mersey Square Stockport SK1 1NU	814167527
674	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	815167527
675	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	816167527
676	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	817167527
677	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	818167527
678	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	819167527
679	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	820167527
680	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	821167527
681	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	822167527
682	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	823167527
683	Leighton Snow, Bramhall	8A Fir Road, Bramhall, SK7 2NP	825167527
684	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	826167527
685	Belvoir, Manchester	61 Great Ancoats Street, Manchester, M4 5AB	827167527
686	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	829167527
687	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	830167527
688	VitalSpace, South Manchester	22 Flixton Road Urmston M41 5AA	831167527
689	Greystar, Oxbow, Salford	11 Back Hulme Street, Salford, M5 4QT	832167527
690	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	833167527
691	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	834167527
692	Jordan Fishwick, Manchester	68 Arches Whitworth Street West Manchester M1 5WQ	835167527
693	Ascend, Manchester	241 Deansgate Manchester M3 4EN	836167527
694	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	837167527
695	Henry Wiltshire, Manchester	53 King Street, Manchester, M2 4LQ	838167527
696	Reside, Manchester	249 Deansgate, Manchester, M3 4EN	839167527
697	Clay Life, Clay	Anchorage Quay, Salford, M50 3BX	840167527
698	Aubrey Lee & Co, Blackley	1170 Rochdale Road, Blackley, Manchester M9 6ER	841167527
699	Manchester Apartments, Manchester Apartments	60 Oxford Street, Manchester, M1 5EE	842167527
700	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	843167527
701	ARCPROPERTY MANAGEMENT & LETTINGS, Edinburgh	Bonnington Bond, 2 Anderson Place, Edinburgh, EH6 5NP	844167527
702	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	845167527
703	Clive Anthony Sales & Lettings, Whitefield	114 Bury New Road, Whitefield, M45 6AD	846167527
704	Manchester Apartments, Manchester Apartments	60 Oxford Street, Manchester, M1 5EE	847167527
705	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	850167527
706	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	851167527
707	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	852167527
708	Grovewell, Manchester	Suite 8 Broadhurst House Bury Old Road, Salford, M7 4QX	853167527
709	Bridgfords Lettings, Sale	81-83 School Road, Sale, M33 7XA	854167527
710	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	855167527
711	Downing Property Management Ltd, Square Gardens	5 Botanic Avenue, Manchester, M15 6AA	856167527
712	Cherry Picked Properties, Heald Green	Southgate Centre Two, 321 Wilmslow Road, Heald Green, Cheadle, SK8 3PW	857167527
713	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	858167527
714	Mishkan Estates, Manchester	2a Park Hill, Bury Old Road, Prestwich, Manchester, M25 0FX	859167527
715	Edward Mellor Ltd, Reddish	410 Reddish Road, Reddish, Stockport, SK5 7AA	860167527
716	OpenRent, London	20 Wenlock Road, London, N1 7GU	861167527
717	VitalSpace, South Manchester	22 Flixton Road Urmston M41 5AA	862167527
718	Vox, Vox	1 Trentham Street, Hulme, Manchester, M15 4YG	863167527
719	Premier Residential, Manchester	16 Commercial Street, Manchester, M15 4PZ	864167527
720	Kingsdene Ltd, Manchester	257 Deansgate, Manchester, M3 4EN	865167527
721	Aubrey Lee & Co, Prestwich	39, Bury New Road, Prestwich, Manchester, M25 9JY	866167527
722	loc8me, Covering Manchester	202 Ashby Square, Loughborough, LE11 5AA	867167527
723	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	868167527
724	Montrose Properties Ltd, West Didsbury	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	869167527
725	Kingsdene Ltd, Manchester	257 Deansgate, Manchester, M3 4EN	870167527
726	Ascend, Manchester	241 Deansgate Manchester M3 4EN	871167527
727	Miller Metcalfe, Bolton	2 - 10 Bradshawgate Bolton BL1 1DG	872167527
728	Gascoigne Halman, Didsbury	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	873167527
729	Montrose Properties Ltd, West Didsbury	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	875167527
730	Townhouse, Manchester	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	876167527
731	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	877167527
732	Thornley Groves, Fallowfield	306 Wilmslow Road, Manchester, M14 6LF	878167527
733	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	880167527
734	HASSLE FREE LETTINGS, London	Covering London	881167527
735	Thornley Groves, Manchester Southern Gateway	25 Whitworth Street West, Manchester, M1 5ND	882167527
736	Kingsdene Ltd, Manchester	257 Deansgate, Manchester, M3 4EN	883167527
737	HASSLE FREE LETTINGS, London	Covering London	884167527
738	We Let Properties, Manchester	3-5 Duke Street, Manchester, M3 4NF	885167527
739	Goodwin Fish, Manchester	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	886167527
740	Manchester Easy Rent, Manchester	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	887167527
741	urbanbubble, Manchester	Sevendale House, 7 Dale Street, Manchester, M1 1JA	888167527
742	Manchester Easy Rent, Manchester	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	889167527
743	Leef Property Management Ltd, Warrington	12b Olympic Way Birchwood Warrington WA2 0YL	890167527
744	Manchester Easy Rent, Manchester	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	891167527
745	Martin & Co, Manchester Central	33 Liverpool Road, Manchester, M3 4NQ	892167527
746	Hermes Living, Manchester	Unit 415 Spaces, 125 Deansgate, Manchester, M3 2BY	893167527
747	Kaytons Estate Agents, Manchester	365 Chapel Street, Salford, M3 5JT	894167527
748	Bridgfords Lettings, Manchester	The Hacienda 21 Albion Street Manchester M1 5DA	895167527
749	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	896167527
750	Hunters, Manchester	22 St John Street, Manchester, Greater Manchester, M3 4EB	897167527
751	loc8me, Covering Manchester	202 Ashby Square, Loughborough, LE11 5AA	898167527
752	Savills Lettings, New Vic	New Victoria, 103 Corporation Street, Manchester, M4 4DZ	899167527
753	Savills Lettings, Manchester	50 Bridge Street, Manchester, M3 3BW	900167527
754	Hills, Eccles	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	901167527
755	Leaders Lettings, Manchester	289 - 291 Deansgate, Manchester, M3 4EW	902167527
756	Townhouse, Manchester	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	903167527
757	NEXIS Property, Manchester	361 Deansgate, Manchester, M3 4LG	904167527
\.


--
-- Data for Name: agents_df_sil; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."agents_df_sil" ("id", "agent_name", "agent_address") FROM stdin;
13	John Doe	123 Main St, London
14	Jane Smith	456 High St, Manchester
15	Alice Brown	789 Park Ave, Birmingham
16	Bob Johnson	101 Elm St, Leeds
17	Charlie White	202 Maple Rd, Bristol
18	Alice Brown	766 Park
\.


--
-- Data for Name: locations_df; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."locations_df" ("id", "full_address", "latitude", "longitude", "property_address", "rowid") FROM stdin;
1	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.486897	-2.249365	Colliers Yard, M3	1167527
2	Walmsley Street, Portwood, Stockport, Greater Manchester, England, SK5 7RB, United Kingdom	53.419574	-2.158583	Bury Street, Stockport, SK5 7RE	2167527
3	Bridgewater Mill, Legh Street, Patricroft, Eccles, Salford, Greater Manchester, England, M30 0UT, United Kingdom	53.482136	-2.360061	Legh Street, Manchester	3167527
4	Sandycroft Avenue, Benchill, Wythenshawe, Manchester, Greater Manchester, England, M22 9AQ, United Kingdom	53.38371	-2.25719	Sandycroft Wythenshawe	4167527
5	Heald Avenue, Rusholme, Manchester, Greater Manchester, England, M14 4BA, United Kingdom	53.4544	-2.23076	Heald Avenue, Manchester, M14	5167527
6	1, Keswick Close, Victoria Park, Ardwick, Manchester, Greater Manchester, England, M13 0DD, United Kingdom	53.461444	-2.21535	Plymouth Grove, Manchester, M13	6167527
7	West Tower, 371, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LB, United Kingdom	53.47298	-2.25261	Deansgate, Manchester, Greater Manchester, M15	7167527
8	Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 0DU, United Kingdom	53.488348	-2.33187	Apartment 5, 4A Bindloss Avenue, Eccles, Manchester, M30	8167527
9	NV Building 3, 100, The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3BE, United Kingdom	53.473285	-2.292569	NV Buidling, The Quays, Salford, M50 3BE	9167527
10	West Tower, 371, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LB, United Kingdom	53.47298	-2.25261	Deansgate, Manchester, Greater Manchester, M15	10167527
11	West Tower, 371, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LB, United Kingdom	53.47298	-2.25261	Deansgate, Manchester, Greater Manchester, M15	11167527
12	South Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47217	-2.25155	Owen Street, Manchester, Greater Manchester, M15	12167527
13	West Tower, 371, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LB, United Kingdom	53.47298	-2.25261	Deansgate, Manchester, Greater Manchester, M15	13167527
14	Woodhouse Park Lifestyle Centre, Portway, Newall Green, Wythenshawe, Manchester, Greater Manchester, England, M22 1SF, United Kingdom	53.3742	-2.272	Portway, Wythenshawe, Manchester, M22	14167527
15	Toad Pond Close, Dales Brow, Moorside, Roe Green, Salford, Greater Manchester, England, M27 0BW, United Kingdom	53.502946	-2.359941	Toad Pond Close, Swinton, Manchester, Greater Manchester, M27	15167527
16	72, Bold Street, Old Trafford, Manchester, Greater Manchester, England, M15 5QH, United Kingdom	53.462263	-2.25558	Bold Street, Hulme, Manchester,M15 5QH	16167527
17	Hulton Square, Ordsall, Salford, Greater Manchester, England, M5 3LX, United Kingdom	53.472839	-2.277698	Hulton Square, Salford, M5 3LX	17167527
18	The Albert Club, Old Lansdowne Road, West Didsbury, Manchester, Greater Manchester, England, M20 2WZ, United Kingdom	53.425089	-2.239505	Old Lansdowne Road, Manchester, Greater Manchester, M20	18167527
19	Shireoak Road, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M20 4NY, United Kingdom	53.434583	-2.217039	Shireoak Road, Manchester, Greater Manchester, M20	19167527
20	84, Oldfield Road, Ordsall, Salford, Greater Manchester, England, M5 3QP, United Kingdom	53.477588	-2.26909	Regent Plaza, 84 Oldfield Road, Salford	20167527
21	Dorman Street, Abbey Hey, Openshaw, Manchester, Greater Manchester, England, M11 1NY, United Kingdom	53.471677	-2.167455	Youth Close, Manchester, Greater Manchester, M11	21167527
22	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.486884	-2.249354	Colliers Yard, M3	22167527
23	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.486934	-2.24952	Colliers Yard, M3	23167527
24	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.48691	-2.249343	Colliers Yard, M3	24167527
25	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.48691	-2.249333	Colliers Yard, M3	25167527
26	59, Chorlton Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GJ, United Kingdom	53.47688	-2.23455	Kampus, Apt 1209 South, 59 Chorlton Street, Manchester, Greater Manchester, M1	126167527
27	87, High Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1BF, United Kingdom	53.485134	-2.236448	High Street, Manchester, M4	127167527
28	Great Northern Tower, 1, Watson Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M3 4EF, United Kingdom	53.47732	-2.248315	Watson Street, Manchester, M3	128167527
29	30, Bendix Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5GH, United Kingdom	53.487509	-2.233231	Ancoats Gardens, 14 Rochdale Rd, M4	129167527
30	Chevington Drive, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 3RF, United Kingdom	53.416725	-2.209836	Chevington Drive, Heaton Mersey, Stockport, SK4	130167527
31	Moodswings, 36, New Mount Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4DE, United Kingdom	53.487999	-2.235177	Halo House, 27 Simpson Street, Manchester, M4	131167527
32	Moodswings, 36, New Mount Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4DE, United Kingdom	53.487964	-2.235241	Halo House, 27 Simpson Street, Manchester, M4	132167527
33	3, Cambridge Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5BZ, United Kingdom	53.47255	-2.24357	Cambridge Street, Manchester, Greater Manchester, M1	133167527
34	Block A Alto, Sillavan Way, Alto, City Centre, Salford, Greater Manchester, England, M3 6GA, United Kingdom	53.484592	-2.255373	Alto, Sillvan Way, Salford, M3	134167527
35	Pomona Strand, Old Trafford, Stretford, Trafford, Greater Manchester, England, M16 9UA, United Kingdom	53.466765	-2.275605	Pomona Strand, Manchester	151167527
36	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.486871	-2.249333	Colliers Yard, M3	160167527
37	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	161167527
38	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	162167527
39	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	163167527
40	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	164167527
41	Bendix, 2, Bendix Street, New Cross, Collyhurst, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.48601	-2.2307	Broadside, M4	165167527
42	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	166167527
43	Bendix, 2, Bendix Street, New Cross, Collyhurst, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.48601	-2.2307	Broadside, M4	167167527
44	Marshfield Street, Brunswick, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M13 9JB, United Kingdom	53.466208	-2.221932	Lauderdale Crescent, Grove Village, Manchester, M13	168167527
45	Spinners Way, Hulme, Manchester, Greater Manchester, England, M15 4RS, United Kingdom	53.471332	-2.26164	Blantyre Street, Manchester, M15	169167527
46	489-493, Barlow Moor Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8AG, United Kingdom	53.438838	-2.275238	High Lane, Chorlton, Manchester	170167527
47	Orient House, Granby Row, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AJ, United Kingdom	53.475138	-2.236252	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	171167527
48	Orient House, Granby Row, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AJ, United Kingdom	53.475138	-2.236252	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	172167527
49	Orient House, Granby Row, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AJ, United Kingdom	53.475138	-2.236252	UNCLE Manchester, Orient House, Granby Row, Manchester, M1	173167527
50	Loom Building, 1, Harrison Street, Miles Platting, Manchester, Greater Manchester, England, M4 7EL, United Kingdom	53.48022	-2.21906	Apartment 84A Loom Building, 1 Harrison Street	174167527
51	Loom Building, 1, Harrison Street, Miles Platting, Manchester, Greater Manchester, England, M4 7EL, United Kingdom	53.48022	-2.21906	Apartment 84 Loom Building, 1 Harrison Street	175167527
52	Castlefield Locks, 62, Ellesmere Street, Hulme, Manchester, Greater Manchester, England, M15 4QR, United Kingdom	53.47053	-2.26435	Ellesmere Street, Manchester, Greater Manchester, M15	176167527
53	Trail Street, Seedley, Eccles, Salford, Greater Manchester, England, M6 5TS, United Kingdom	53.4868	-2.29881	Rooms @ Seedley Park Road, Salford, M6	177167527
54	Onslow Avenue, New Moston, Manchester, Greater Manchester, England, M40 3PW, United Kingdom	53.51484	-2.16615	Onslow Avenue, Manchester	178167527
55	Saint Margaret's Road, New Moston, Manchester, Greater Manchester, England, M40 0JF, United Kingdom	53.52597	-2.17283	St Margarets Road, Manchester	179167527
56	Laurel Street, The Four Heatons, Edgeley, Stockport, Greater Manchester, England, SK4 1JB, United Kingdom	53.41174	-2.16559	PASHA, 30 Wellington Road North, Stockport	180167527
57	Failsworth, Oldham Road / near Ridgefield Street, Oldham Road, Failsworth, Oldham, Greater Manchester, England, M35 0AY, United Kingdom	53.5062	-2.16822	Duke, Ridgefield Street, Failsworth	181167527
58	Laurel Street, The Four Heatons, Edgeley, Stockport, Greater Manchester, England, SK4 1JB, United Kingdom	53.41174	-2.16559	PASHA, 30 Wellington Road North, Stockport	182167527
59	Failsworth, Oldham Road / near Ridgefield Street, Oldham Road, Failsworth, Oldham, Greater Manchester, England, M35 0AY, United Kingdom	53.5062	-2.16822	DUKE, 160 Oldham Road, Failsworth	183167527
60	Block A, 54, Bury Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DH, United Kingdom	53.48608	-2.253231	Garden Lane, Manchester, M3	184167527
61	Milliners Wharf, 2, Munday Street, New Islington, Miles Platting, Manchester, Greater Manchester, England, M4 7AY, United Kingdom	53.48199	-2.218832	Milliners Wharf, Manchester, M4	185167527
62	Failsworth, Oldham Road / near Ridgefield Street, Oldham Road, Failsworth, Oldham, Greater Manchester, England, M35 0AY, United Kingdom	53.5062	-2.16822	DUKE, 160 Oldham Road, Failsworth	186167527
63	Laurel Street, The Four Heatons, Edgeley, Stockport, Greater Manchester, England, SK4 1JB, United Kingdom	53.41174	-2.16559	PASHA, 30 Wellington Road North, Stockport	187167527
64	1, Harter Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M1 6HY, United Kingdom	53.47678	-2.23998	Princess Street, Manchester	188167527
65	Britton House, 21, Lord Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4FP, United Kingdom	53.49116	-2.23976	Britton House	189167527
66	Hadley Avenue, Longsight, Manchester, Greater Manchester, England, M13 0UU, United Kingdom	53.448918	-2.206406	Craston Road, Longsight, Manchester, M13	190167527
67	Cromwell Street, The Four Heatons, Heaton Norris, Stockport, Greater Manchester, England, SK4 1LY, United Kingdom	53.416951	-2.168878	Cromwell Street, Heaton Norris, Stockport, Greater Manchester, SK4	191167527
68	Palatine Road, Withington, Manchester, Greater Manchester, England, M20 3JJ, United Kingdom	53.429721	-2.232819	St Kilda, 40 Palatine Road, West Didsbury, Greater Manchester, M20	192167527
69	Block 3 Spectrum, Blackfriars Road, Trinity, City Centre, Salford, Greater Manchester, England, M3 7BS, United Kingdom	53.486046	-2.25032	Spectrum, Blackfriars Lodge, Blackfriars Road, Salford, Greater Manchester, M3	193167527
70	The Rope Works, 33, Little Peter Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 4QH, United Kingdom	53.473733	-2.250173	Ropework, 33 Little Peter Street, Manchester, M15	194167527
71	The Blade, 15, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.471803	-2.254944	Blade Tower, 15 Silvercroft Street, Manchester, M15	195167527
72	Didsbury Lawn Tennis Club, Parrs Wood Road, Parrs Wood, Didsbury, Wythenshawe, Manchester, Greater Manchester, England, M20 5QQ, United Kingdom	53.404655	-2.228033	Drayton Manor, Manchester, M20	196167527
73	Crowcroft Park, Stockport Road / opposite East Road, Stockport Road, Levenshulme, Manchester, Greater Manchester, England, M12 4GJ, United Kingdom	53.4531	-2.19583	Stockport Road, Manchester, M12	197167527
74	The Boatmans, 42, City Road East, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4QF, United Kingdom	53.47195	-2.250164	The Boatmans, 42 City Road East, Southern Gateway, Manchester, M15	198167527
75	Montana House, 136, Princess Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AF, United Kingdom	53.47345	-2.237036	136 Montana House Princess Street M1 7AF	199167527
76	Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47769	-2.23456	KAMPUS, Apt 408 North, 28 Minshull Street, Manchester, Greater Manchester, M1	200167527
77	Sky Gardens, 7, Spinners Way, Hulme, Manchester, Greater Manchester, England, M15 4UU, United Kingdom	53.47098	-2.26179	Sky Gardens, M15	201167527
78	Red Light, Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47752	-2.2353	Kampus, Apt 201 Minto and Turner, 3 Little David Street, Manchester, Greater Manchester, M1	202167527
79	Red Light, Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47752	-2.2353	Kampus, Apt 111 Minshul House, 4 Little David Street, Manchester, Greater Manchester, M1	203167527
80	KAMPUS, Aytoun Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3GP, United Kingdom	53.47733	-2.23425	KAMPUS, Aytoun Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3GP, United Kingdom	204167527
81	KAMPUS, Aytoun Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3GP, United Kingdom	53.47733	-2.23425	Kampus, Apt 408, 44 Aytoun Street, Manchester, Greater Manchester, M1	205167527
82	Red Light, Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47752	-2.2353	Kampus 310 Minshull House, 4 Little David Street, Manchester, Greater Manchester, M1	206167527
83	59, Chorlton Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GJ, United Kingdom	53.47688	-2.23455	Kampus Apt 404 South Block, 59 Chorlton Street, Manchester, Greater Manchester, M1	207167527
84	Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YU, United Kingdom	53.479627	-2.262282	Clay	208167527
85	Springfield Court, 2, Dean Road, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7EH, United Kingdom	53.489082	-2.251784	Maristone Avenue, Salford, M3	209167527
86	86, Monica Grove, Levenshulme, Manchester, Greater Manchester, England, M19 2BW, United Kingdom	53.44188	-2.20305	Monica Grove, Manchester, Greater Manchester, M19	210167527
87	Kersal Way, Kersal, Salford, Greater Manchester, England, M7 3ST, United Kingdom	53.508633	-2.276481	The Peninsula Building, Kersal Way, Salford, M7 3FT	211167527
88	Crescent, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4QA, United Kingdom	53.483161	-2.267686	Crescent, Salford	212167527
89	Nevile Road, Kersal, Salford, Greater Manchester, England, M7 3PT, United Kingdom	53.512768	-2.275691	Nevile Court, Salford, M7	213167527
90	Irwell River Park, Ordsall, Salford, Greater Manchester, England, M5 4SU, United Kingdom	53.473557	-2.267996	Renolds House, Lamba Court, Salford, M5 4UB	214167527
91	Sky Gardens, 7, Spinners Way, Hulme, Manchester, Greater Manchester, England, M15 4UU, United Kingdom	53.471069	-2.261822	Sky Gardens, 7 Spinners Way, Manchester	215167527
92	Dene Road, Didsbury, Manchester, Greater Manchester, England, M20 2SU, United Kingdom	53.415519	-2.238364	Dene Road, Manchester, M20 2TB	216167527
93	5, Blantyre Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M15 4JJ, United Kingdom	53.473007	-2.258897	City Gate, 3 Blantyre Street, Manchester	217167527
94	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	218167527
95	Albert Place, Longsight, Manchester, Greater Manchester, England, M13 0SQ, United Kingdom	53.45536	-2.20326	Dickenson Road *STUDENT ONLY - AVAILABLE 01/07/2025*	219167527
96	Brighton Grove, Rusholme, Manchester, Greater Manchester, England, M14 5JE, United Kingdom	53.44968	-2.21664	Brighton Grove *STUDENT ONLY - AVAILABLE 01/07/2025*	220167527
97	Brighton Grove, Rusholme, Manchester, Greater Manchester, England, M14 5JE, United Kingdom	53.44968	-2.21664	Brighton Grove *STUDENT ONLY - AVAILABLE 01/07/2025*	221167527
98	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 2803, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	222167527
99	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 2801, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	223167527
100	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 3102, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	224167527
101	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 403, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	225167527
102	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	226167527
103	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 409, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	227167527
104	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 204, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	228167527
105	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 101, Swan Street House, Swan Street, Manchester, Greater Manchester, M4	229167527
106	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 414, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	230167527
107	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 219, Swan Street House, Swan Street, Manchester, Greater Manchester, M4	231167527
108	`35, Fog Lane, Didsbury, Manchester, Greater Manchester, England, M20 6FB, United Kingdom	53.4219	-2.22011	Fog Lane, Didsbury, M20 6ED	232167527
109	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 410, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	233167527
110	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 108, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	234167527
111	Atlantic Education & Training, 56, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48596	-2.23491	Flat 1217, Swan Street House, 70 Swan Street, Manchester, Greater Manchester, M4	235167527
112	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	236167527
113	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	237167527
114	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487218	-2.249247	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	238167527
115	Calico Building, 46, Whitworth Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 3BD, United Kingdom	53.475974	-2.237783	Whitworth Street, Calico Building, M1	239167527
116	Block 3 Spectrum, Blackfriars Road, Trinity, City Centre, Salford, Greater Manchester, England, M3 7BS, United Kingdom	53.48602	-2.25043	Block 3 Spectrum, M3	240167527
117	Whittles Croft, 42, Ducie Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2DE, United Kingdom	53.479941	-2.228827	Whittles Croft, Ducie Street	241167527
118	Parsonage Road, Ladybarn, Withington, Manchester, Greater Manchester, England, M20 4PT, United Kingdom	53.433838	-2.222229	Parsonage Road, Manchester M20 4NG	242167527
119	Sandycroft Avenue, Benchill, Wythenshawe, Manchester, Greater Manchester, England, M22 9AQ, United Kingdom	53.38371	-2.25719	Sandycroft Avenue, Manchester, Greater Manchester, M22	243167527
120	15, Sewerby Close, Hulme, Manchester, Greater Manchester, England, M16 7DB, United Kingdom	53.45932	-2.24937	Sewerby Street, Hulme, Manchester, Greater Manchester, M16	244167527
121	Wright Street, Holt Lane End, Hollinwood, Failsworth, Oldham, Greater Manchester, England, M35 9PF, United Kingdom	53.51051	-2.154767	Wright Street, Manchester, M35	245167527
122	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487218	-2.249247	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	246167527
123	Parsonage Road, Ladybarn, Withington, Manchester, Greater Manchester, England, M20 4PT, United Kingdom	53.433838	-2.222229	Parsonage Road, Manchester M20 4NG	247167527
124	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487146	-2.249484	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	248167527
125	Village Gate, 15, Wilbraham Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 6FG, United Kingdom	53.442516	-2.221116	Village Gate, M14 6EZ,	249167527
126	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487218	-2.249247	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	250167527
127	Local Block A, 2, Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4ZH, United Kingdom	53.482544	-2.265052	Local Cresent, 4 Hulme Street, M5	251167527
128	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487146	-2.249484	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	252167527
129	Perrygate Avenue, West Didsbury, Manchester, Greater Manchester, England, M20 1JR, United Kingdom	53.429471	-2.241574	Perrygate Avenue, Manchester, Greater Manchester, M20	253167527
130	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Silvercroft Street, Manchester, M15	254167527
131	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Victoria Residence, 16 Silvercroft Street, M15	255167527
132	Topkapi Palace, 205, Deansgate, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M3 3NW, United Kingdom	53.478759	-2.24914	Deansgate, Manchester	256167527
133	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Silvercroft Street, Manchester, M15	257167527
134	Crown Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZP, United Kingdom	53.47207	-2.25471	Three60, Silvercroft Street, Manchester, Greater Manchester, M15	258167527
135	South Hall Street, Ordsall, Salford, Greater Manchester, England, M5 4SR, United Kingdom	53.47371	-2.26645	Downtown, 9 Woden Street, Salford, M5	259167527
136	Crown Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZP, United Kingdom	53.47207	-2.25471	11 Silvercroft Street, Manchester, M15	260167527
137	Premier Inn, Victoria Bridge Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5AS, United Kingdom	53.48505	-2.246358	Exchange Point, New Kings Yard, Salford	261167527
138	Derby Avenue, Weaste, Eccles, Salford, Greater Manchester, England, M6 5FZ, United Kingdom	53.483436	-2.302838	Derby Avenue, Salford	262167527
139	43B, Harrop Street, Abbey Hey, Gorton, Manchester, Greater Manchester, England, M18 8RN, United Kingdom	53.46649	-2.15782	Harrop Street, Gorton	263167527
140	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Silvercroft Street, Manchester, M15	264167527
141	Grosvenor Casino, 5, Derwent Street, Ordsall, Salford, Greater Manchester, England, M5 4SW, United Kingdom	53.474773	-2.265226	The Riley Building, Derwent Street	265167527
142	Vallea Court, 1, Red Bank, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4HF, United Kingdom	53.489909	-2.239509	Vallea Court, 1 Red Bank, Green Quarter, Manchester, M4	266167527
143	Hulme Hall Road, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4LA, United Kingdom	53.471603	-2.263978	Excelsior Works, Castlefield, M15 4LY	267167527
144	Crown Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZP, United Kingdom	53.47207	-2.25471	11 Silvercroft Street, Manchester, M15	268167527
145	Meadow Mill, Water Street, Portwood, Stockport, Greater Manchester, England, SK1 2BU, United Kingdom	53.417762	-2.152586	Meadow Mill, Stockport	269167527
146	13-29, St. Wilfrids Street, First Street, Hulme, Manchester, Greater Manchester, England, M15 5XE, United Kingdom	53.469028	-2.254606	St Wilfrids Street, Hulme, Manchester, M15	270167527
147	94, Oldham Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1LJ, United Kingdom	53.484313	-2.232877	The Burton Building, 90-94 Oldham Street, Northern Quarter, Manchester, M4 1LJ	271167527
148	Hudson Court, 61, Ardwick Green North, Brunswick, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M12 6ER, United Kingdom	53.471645	-2.223699	Hudson Court, Ardwick Green North	272167527
149	Trafford Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5LH, United Kingdom	53.474887	-2.249966	Bankside, Collier Street, Manchester, M3	273167527
150	The Blade, 15, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.47162	-2.25501	The Blade, 15 Silvercroft St, M15	274167527
151	Wharf End, Wharfside, Stretford, Trafford, Greater Manchester, England, M17 1HY, United Kingdom	53.465255	-2.285514	No.1 Old Trafford, M17	275167527
152	Pomona Strand, Old Trafford, Stretford, Trafford, Greater Manchester, England, M16 0TT, United Kingdom	53.46673	-2.27562	Manchester Waters, Old Trafford, M16	276167527
153	Hector Road, Longsight, Manchester, Greater Manchester, England, M13 0QN, United Kingdom	53.452	-2.19896	Hamilton Road, Manchester	277167527
154	Alto, 5, Red, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 2AL, United Kingdom	53.47404	-2.29947	Media City Salford Quays M50	278167527
155	Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.486826	-2.253024	Bankside, Collier Street, Manchester, M3	279167527
156	Allanson Road, Northenden, Manchester, Greater Manchester, England, M22 4WW, United Kingdom	53.40762	-2.25628	Allanson Road, Northenden, M22 4NU	280167527
157	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Victoria Residence, M15	281167527
158	Dawn Court, 14, Wilbraham Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 6FG, United Kingdom	53.443267	-2.223026	Dawn Court, Wilbraham Road, Manchester	282167527
159	New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZB, United Kingdom	53.472099	-2.255593	Victoria Residence, 16 Silvercroft Street, M15	283167527
160	Oak Road, Higher Broughton, Salford, Greater Manchester, England, M7 2HP, United Kingdom	53.500728	-2.268379	Oak Road, ,	284167527
161	Park Rise, Seymour Grove, Old Trafford, Trafford, Greater Manchester, England, M16 0LN, United Kingdom	53.45971	-2.27527	Urban Green, MN16	285167527
162	Victoria Residence, 16, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.47216	-2.25472	The Blade, M15	286167527
163	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.47224	-2.25578	The Blade, M15	287167527
164	Associated Security Systems Ltd, 25, Addington Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5EU, United Kingdom	53.48596	-2.2331	New Cross Central, M2	288167527
165	Associated Security Systems Ltd, 25, Addington Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5EU, United Kingdom	53.48596	-2.2331	New Cross Central, M2	289167527
166	Hulme Street Car Park, Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GH, United Kingdom	53.47215	-2.24363	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	290167527
167	Skyhook, Wharf End, Wharfside, Stretford, Trafford, Greater Manchester, England, M17 1HY, United Kingdom	53.46508	-2.28615	Trafford Wharf, M17	291167527
168	North Star Drive, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 5LG, United Kingdom	53.48312	-2.26006	Atelier, M3	292167527
169	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.47224	-2.25578	Elizabeth Tower, M15	293167527
170	Paragon House, 48, Seymour Grove, Old Trafford, Trafford, Greater Manchester, England, M16 0LN, United Kingdom	53.46015	-2.276427	Seymour Grove, Manchester, M16	295167527
171	7, Collier Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NA, United Kingdom	53.475758	-2.253017	Collier Street, Manchester, M3 4NA	296167527
172	Domino's, 9, Mirabel Street, Trinity, City Centre, Manchester, Greater Manchester, England, M3 1NP, United Kingdom	53.488029	-2.246875	Tempus Tower, Mirabel Street, Manchester	297167527
173	East Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47212	-2.250897	East Tower, 9 Owen Street, Manchester, M15	298167527
174	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486897	-2.249354	Colliers Yard, M3	299167527
175	Britton House, 21, Lord Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4FP, United Kingdom	53.491305	-2.239761	Britton House, 21 Lord Street, Manchester, M4	300167527
176	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	301167527
177	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487218	-2.249247	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	302167527
178	2, Mangle Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2DU, United Kingdom	53.48075	-2.23337	Finlay's Warehouse, 56 Dales St, Northern Quarter	303167527
179	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.48691	-2.249322	Colliers Yard, M3	304167527
180	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486916	-2.249376	Colliers Yard, M3	305167527
181	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486877	-2.249354	Colliers Yard, M3	306167527
182	Montmano Drive, West Didsbury, Manchester, Greater Manchester, England, M20 1LS, United Kingdom	53.43037	-2.247663	The Boulevard, Manchester, Greater Manchester, M20	307167527
183	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.48689	-2.249279	Colliers Yard, M3	308167527
184	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486897	-2.249365	Colliers Yard, M3	309167527
185	Pinnington Lane, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M32 0AA, United Kingdom	53.446548	-2.310095	Mitford Street, Stretford, Manchester, M32 8AQ	310167527
186	Wilson, 43, Potato Wharf, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NX, United Kingdom	53.47483	-2.25991	Potato Wharf, Wilson Building, M3	311167527
187	27, Davenport Avenue, Withington, Manchester, Greater Manchester, England, M20 3GA, United Kingdom	53.43563	-2.22861	Davenport Avenue, Withington, M20	312167527
188	Eagle Projection, 74C, Sherborne Street, Strangeways, Manchester, Greater Manchester, England, M8 8HU, United Kingdom	53.497528	-2.243506	St Davids Court, Cheetham Hill	313167527
189	Castlegate, 2, Chester Road, Castlefield, City Centre, Manchester, Greater Manchester, England, M15 4QG, United Kingdom	53.47333	-2.25487	Castlegate, 2 Chester Road	314167527
190	George Adams Estate Agents, 321, Stretford Road, First Street, Hulme, Manchester, Greater Manchester, England, M15 4UW, United Kingdom	53.467048	-2.249789	Bishops Corner, 321 Stretford Rd, Hulme, Manchester, M15	315167527
191	Bromshill Drive, Strangeways, Manchester, Greater Manchester, England, M7 4YT, United Kingdom	53.5012	-2.25112	Bromshill Drive, Salford	316167527
192	Fallowfield Loop, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6WW, United Kingdom	53.4406	-2.21493	Ladybarn Lane, Manchester, Greater Manchester, M14	317167527
193	South Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47217	-2.25155	Owen Street, Manchester, Greater Manchester, M15	318167527
194	28, Ellesmere Road, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 9HP, United Kingdom	53.49137	-2.342264	Ellesmere Road, Eccles, Manchester, M30	319167527
195	Spath Road, West Didsbury, Manchester, Greater Manchester, England, M20 2BX, United Kingdom	53.4208	-2.245318	Spath Road, Ravenswood, M20	320167527
196	Dalton Street, Collyhurst, Manchester, Greater Manchester, England, M40 7GX, United Kingdom	53.492097	-2.228637	Dalton Street, Manchester, Greater Manchester, M40	321167527
197	4, Booth Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 4AT, United Kingdom	53.480193	-2.243537	The Chambers, Booths Street, Manchester	322167527
198	Affinity Living Riverview, 29, New Bailey Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EU, United Kingdom	53.48215	-2.25312	New Bailey Street, Manchester, Greater Manchester, M3	323167527
199	Transmission House, 11, Tib Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1AF, United Kingdom	53.48263	-2.23715	Tib Street, Manchester, Greater Manchester, M4	324167527
200	1, River Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5BB, United Kingdom	53.473395	-2.242444	1 River Street, Southern Gateway, Manchester, M1	325167527
201	Berwick Avenue, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 3EP, United Kingdom	53.414476	-2.21245	Berwick Avenue, Heaton Moor, Stockport, SK4 3AT	327167527
202	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 1413, 7 Nobel Way, Manchester, Greater Manchester, M1	328167527
203	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 1214, 7 Nobel Way, Manchester, Greater Manchester, M1	329167527
204	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	Apartment 2703, 7 Symphony Park, Manchester, Greater Manchester, M1	330167527
205	The Gate, 21, Aspin Lane, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4GR, United Kingdom	53.48874	-2.23733	The Gate, Meadowside, M4	331167527
206	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 1206, 7 Nobel Way, Manchester, Greater Manchester, M1	332167527
207	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 508, 7 Nobel Way, Manchester, Greater Manchester, M1	333167527
208	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	Apartment 2604, 7 Symphony Park, Manchester, Greater Manchester, M1	334167527
209	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	Apartment 1214, 7 Symphony Park, Manchester, Greater Manchester, M1	335167527
210	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	Apartment 721, 7 Symphony Park, Manchester, Greater Manchester, M1	337167527
211	7, Symphony Park, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7GD, United Kingdom	53.47328	-2.2392	Apartment 1006, 7 Symphony Park, Manchester, Greater Manchester, M1	338167527
212	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 904, 7 Nobel Way, Manchester, Greater Manchester, M1	339167527
213	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 208, 7 Nobel Way, Manchester, Greater Manchester, M1	340167527
214	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FX, United Kingdom	53.47309	-2.23791	Apartment 110, 7 Nobel Way, Manchester, Greater Manchester, M1	341167527
215	3, River Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5BG, United Kingdom	53.47351	-2.24251	River Street, Manchester M1 5BB	342167527
216	1, Boston Street, Hulme, Manchester, Greater Manchester, England, M15 5AY, United Kingdom	53.46247	-2.24863	Boston Street, Manchester, Greater Manchester, M15	343167527
217	Aviva Studios, Water Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4JQ, United Kingdom	53.47837	-2.25708	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	344167527
258	Ludgate Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4AR, United Kingdom	53.48846	-2.235748	Angel Meadows, Naples Street	385167527
218	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47834	-2.25723	Union, East Tower, 19 Water Street, Manchester, Greater Manchester, M3	345167527
219	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47834	-2.25723	Union, East Tower, 19 Water Street, Manchester, Greater Manchester, M3	346167527
220	Gloucester Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5NG, United Kingdom	53.473418	-2.243791	Cambridge Street, Manchester, M1	347167527
221	Express Networks 3, 6, Oldham Road, Central Retail District, Strangeways, Manchester, Greater Manchester, England, M4 5DB, United Kingdom	53.485052	-2.231871	Express Networks, Ancoats	348167527
222	65, Whitworth Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 3NZ, United Kingdom	53.475679	-2.237864	Lancaster House, Whitworth Street, Manchester, M1 6LQ	349167527
223	Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YU, United Kingdom	53.479627	-2.262282	Anvil	350167527
224	Barbers Boutique, 67, Rochdale Road, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4HU, United Kingdom	53.488088	-2.232822	Red Building, Ludgate Hill, Manchester, Manchester, M4 4BW	351167527
225	Humphrey Road, Old Trafford, Trafford, Greater Manchester, England, M16 9DE, United Kingdom	53.460099	-2.274122	Urban Green, 75 Seymour Grove, Manchester, M16	352167527
226	Trafford Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5LH, United Kingdom	53.474887	-2.249966	Viadux, 42 Great Bridgewater Street, Manchester, M1	353167527
227	Leegate Road, The Four Heatons, Heaton Moor, Stockport, Greater Manchester, England, SK4 3NJ, United Kingdom	53.423139	-2.194875	Leegate Road, Heaton Moor, Stockport, SK4	354167527
228	Cresswell Grove, West Didsbury, Manchester, Greater Manchester, England, M20 2NH, United Kingdom	53.427404	-2.24052	Burton Road, West Didsbury	355167527
229	Chedworth Drive, Newall Green, Wythenshawe, Manchester, Greater Manchester, England, M23 1LW, United Kingdom	53.394268	-2.276926	Rissington Avenue, Manchester	356167527
230	Westway, Fairfield, Droylsden, Tameside, Greater Manchester, England, M43 6FH, United Kingdom	53.474319	-2.145694	Westway, Droylsden, Manchester, Tameside, M43	357167527
231	Chester Road, Old Trafford, Trafford, Greater Manchester, England, M15 4YS, United Kingdom	53.46889	-2.266064	Botanica, Chester Road, Manchester, M15	358167527
232	Ruskin Avenue, Moss Side, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.456805	-2.234442	Ruskin Avenue, Manchester	359167527
233	Ruskin Avenue, Moss Side, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.456777	-2.232907	Ruskin Avenue, Manchester	360167527
234	Deramore Street, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 4DT, United Kingdom	53.455261	-2.231394	Deramore Street, Manchester	361167527
235	314-336, Claremont Road, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7WJ, United Kingdom	53.45262	-2.234525	Claremont Road, Manchester	362167527
236	Ossory Street, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 4BX, United Kingdom	53.455296	-2.230606	Ossory Street, Manchester	363167527
237	Crofton Street, Fallowfield Triangle, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 7WD, United Kingdom	53.455311	-2.232286	Crofton Street, Manchester	364167527
238	Carlton Avenue, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7WL, United Kingdom	53.452397	-2.233204	Carlton Avenue, Manchester	365167527
239	17, Driffield Street, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7HZ, United Kingdom	53.452034	-2.238598	Driffield Street, Manchester	366167527
240	Meridian Place, West Didsbury, Manchester, Greater Manchester, England, M20 2QH, United Kingdom	53.42213	-2.24132	Palatine Road, West Didsbury, M20	367167527
241	Haddon Street, Charlestown, Salford, Greater Manchester, England, M6 6BN, United Kingdom	53.497029	-2.273948	Haddon Street, Salford	368167527
242	Mildred Street, Higher Broughton, Salford, Greater Manchester, England, M7 2HG, United Kingdom	53.499943	-2.268486	Mildred Street, Salford	369167527
243	Gerald Road, Charlestown, Salford, Greater Manchester, England, M6 6DJ, United Kingdom	53.497452	-2.278321	Gerald Road, Salford	370167527
244	Claremont Road, Curry Mile, Rusholme, Manchester, Greater Manchester, England, M14 5XG, United Kingdom	53.452588	-2.23122	Claremont Road, Manchester	371167527
245	Chester Road, Old Trafford, Trafford, Greater Manchester, England, M15 4YS, United Kingdom	53.46889	-2.266064	Botanica, Chester Road, Manchester, M15	372167527
246	Chester Road, Old Trafford, Trafford, Greater Manchester, England, M15 4YS, United Kingdom	53.46889	-2.266064	Botanica, Chester Road, Manchester, M15	373167527
247	Grove House, 35, Skerton Road, Old Trafford, Stretford, Trafford, Greater Manchester, England, M16 0TU, United Kingdom	53.459918	-2.277049	Grove House, Skerton Road, Manchester	374167527
248	Mildred Street, Higher Broughton, Salford, Greater Manchester, England, M7 2HG, United Kingdom	53.500087	-2.268871	Mildred Street, Salford	375167527
249	Chester Road, Old Trafford, Trafford, Greater Manchester, England, M15 4YS, United Kingdom	53.46889	-2.266064	Botanica, Chester Road, Manchester, M15	376167527
250	Romney Street, Charlestown, Salford, Greater Manchester, England, M6 6BT, United Kingdom	53.497946	-2.280074	Romney Street, Salford	377167527
251	Romney Street, Charlestown, Salford, Greater Manchester, England, M6 6BT, United Kingdom	53.498122	-2.279764	Romney Street, Salford	378167527
252	Wallace Avenue, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HH, United Kingdom	53.45206	-2.218628	Wallace Avenue, Rusholme, £120pppw	379167527
253	Hall Grove, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HU, United Kingdom	53.452022	-2.217813	Hall Grove, Rusholme, £130pppw	380167527
254	Seaford Road, Charlestown, Salford, Greater Manchester, England, M6 6DD, United Kingdom	53.496929	-2.273601	Seaford Road, Salford	381167527
255	Gerald Road, Charlestown, Salford, Greater Manchester, England, M6 6DJ, United Kingdom	53.497846	-2.280583	Gerald Road, Salford	382167527
256	Dickenson Road, Victoria Park, Longsight, Manchester, Greater Manchester, England, M13 0YL, United Kingdom	53.455817	-2.203312	Dickenson Road, Manchester	383167527
257	Hall Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HN, United Kingdom	53.452354	-2.217227	Hall Road, Rusholme, £120pppw	384167527
259	Gascoyne Street, Moss Side, Manchester, Greater Manchester, England, M14 4FU, United Kingdom	53.455579	-2.234216	Kippax Street, Manchester	386167527
260	5, Hitchen Street, Brunswick, Ardwick, Manchester, Greater Manchester, England, M13 9EZ, United Kingdom	53.464889	-2.220115	Hitchen Street, Manchester	387167527
261	4-6, Union Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1PT, United Kingdom	53.4834	-2.23763	Union Street, Manchester, M4	388167527
262	Hall Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HN, United Kingdom	53.452224	-2.217235	Hall Road, Rusholme, £120pppw	389167527
263	6, Pollard Street, New Islington, Miles Platting, Manchester, Greater Manchester, England, M4 7BN, United Kingdom	53.479989	-2.22072	Block A Albion Mill, 12 Pollard Street, Ancoats, Manchester, M4	390167527
264	The Christie Day Nursery, 63-65, Palatine Road, Withington, Manchester, Greater Manchester, England, M20 3LJ, United Kingdom	53.42843	-2.23308	The Mayfair, Palatine Road, Didsbury M20 3LS	391167527
265	The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3SP, United Kingdom	53.47407	-2.28847	The Quay Loop Road Harbour City M50	392167527
266	Nuovo Apartments, 59, Great Ancoats Street, Strangeways, Manchester, Greater Manchester, England, M4 5AB, United Kingdom	53.483612	-2.229896	Nuovo, Northern Quarter	393167527
267	The Ainscow Hotel, Trinity Way, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 5HY, United Kingdom	53.482512	-2.258138	The Bridge, 40 Dearmans Place, Salford, Greater Manchester, M3	394167527
268	Parrs Wood High School, Wilmslow Road, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 5PG, United Kingdom	53.411098	-2.215049	Printers Close, Heaton Mersey, Stockport	395167527
269	Water Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4JQ, United Kingdom	53.47841	-2.25722	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	396167527
270	Jackson Street, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M32 8BA, United Kingdom	53.44687	-2.30997	Pinnington Lane, Stretford, Trafford, M32 0AA	397167527
271	Marriott, Water Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4JQ, United Kingdom	53.47902	-2.25643	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	398167527
272	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	399167527
273	Water Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4JQ, United Kingdom	53.47841	-2.25722	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	400167527
274	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47831	-2.25729	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	401167527
275	Cedar Grove, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6YF, United Kingdom	53.439119	-2.21439	Cedar Grove, Manchester, Greater Manchester, M14	402167527
276	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47831	-2.25729	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	403167527
277	Cedric Street, Seedley, Eccles, Salford, Greater Manchester, England, M5 5JY, United Kingdom	53.484592	-2.302856	Cedric Street, Salford, Greater Manchester, M5	404167527
278	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47831	-2.25729	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	405167527
279	Durant Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4AL, United Kingdom	53.48866	-2.23326	100 The Citadel, 15 Ludgate Hill, Manchester	406167527
280	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47831	-2.25729	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	407167527
281	Parkfield Road South, Didsbury, Manchester, Greater Manchester, England, M20 6DB, United Kingdom	53.420983	-2.23655	Elmwood Lodge, 17 Parkfield Road South, Manchester, M20	408167527
282	37, Brompton Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 7GA, United Kingdom	53.449461	-2.232385	Brompton Road, Fallowfield, Manchester, M14	409167527
283	Barlow Moor Road, Didsbury, Manchester, Greater Manchester, England, M20 2GE, United Kingdom	53.4198	-2.23755	Parkfield Court, Didsbury	410167527
284	Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.486826	-2.253024	Bankside, Collier Street, Manchester, M3	411167527
285	Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.486826	-2.253024	Bankside, Collier Street, Manchester, M3	412167527
286	Hulme Street Car Park, Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GH, United Kingdom	53.4721	-2.24356	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	413167527
287	The Ainscow Hotel, Trinity Way, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 5HY, United Kingdom	53.482512	-2.258138	The Bridge, Chapel Wharf, Salford, M3	414167527
288	Jefferson Place, 1, Fernie Street, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4BL, United Kingdom	53.490703	-2.240297	Jefferson Place, Fernie Street, Manchester	415167527
289	Clapham Street, Moston, Manchester, Greater Manchester, England, M40 0BA, United Kingdom	53.5122	-2.18063	Clapham Street, Manchester	416167527
290	Local Block C, 14, Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4ZH, United Kingdom	53.48257	-2.26593	Hulme Street, Manchester, Greater Manchester, M5	417167527
291	Wilmott Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 6AA, United Kingdom	53.4717	-2.24473	Square Gardens,Wilmott Street, Manchester, Greater Manchester, M15	418167527
292	St Hilda's Road, Northenden, Manchester, Greater Manchester, England, M22 4EG, United Kingdom	53.40996	-2.25675	Palatine Road, Northenden, M22 4FW	419167527
293	Flint Building, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5GU, United Kingdom	53.479917	-2.25821	Apartment 2004, Novella	420167527
294	Upper Park Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5RU, United Kingdom	53.456173	-2.219836	Upper Park Road, Manchester, Greater Manchester, M14	421167527
295	The Boulevard, West Didsbury, Manchester, Greater Manchester, England, M20 2EA, United Kingdom	53.430562	-2.24974	The Boulevard, Didsbury, Manchester, Greater Manchester, M20	422167527
296	Ford Lane, Northenden, Manchester, Greater Manchester, England, M22 4WE, United Kingdom	53.40722	-2.254493	Ford Lane, Northenden, Manchester, M22 4WE	423167527
297	Edilom Road, Crumpsall, Manchester, Greater Manchester, England, M8 4HZ, United Kingdom	53.51979	-2.251379	Edilom Road, Manchester	425167527
298	Woodacre, Whalley Range, Manchester, Greater Manchester, England, M16 8QQ, United Kingdom	53.44718	-2.25246	Alexandra Mews, Whalley Range	426167527
299	Block A, 54, Bury Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DH, United Kingdom	53.48601	-2.25329	Bury Street, Manchester, Greater Manchester, M3	427167527
300	The Stile, 17, Aspin Lane, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4GR, United Kingdom	53.48919	-2.23688	The Stile, Meadowside, M4	428167527
301	Kersal Way, Kersal, Salford, Greater Manchester, England, M7 3ST, United Kingdom	53.50942	-2.277479	Kersal Way, Tilehurst Court Kersal Way, M7	429167527
302	Staithes Road, Woodhouse Park, Wythenshawe, Manchester, Greater Manchester, England, M22 0LB, United Kingdom	53.3688	-2.25694	Staithes Road, Manchester, M22 HOUSE SHARE	430167527
303	25-31, William Kay Close, Hulme, Manchester, Greater Manchester, England, M15 5PD, United Kingdom	53.45953	-2.25411	Flat 12, Queen's Brewery Court, 46 Moss Lane West, Manchester, Greater Manchester, M15 5FB	431167527
304	Bendix, 2, Bendix Street, New Cross, Collyhurst, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.48601	-2.2307	Broadside, M4	432167527
305	Meadow Mill, Water Street, Portwood, Stockport, Greater Manchester, England, SK1 2BU, United Kingdom	53.41777	-2.15269	222 Meadow Mill, Stockport, SK1	433167527
306	Bendix, 2, Bendix Street, New Cross, Collyhurst, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.48601	-2.2307	Broadside, M4	434167527
307	City Lofts, 94, The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3SP, United Kingdom	53.47261	-2.29494	City Lofts, Salford Quays	435167527
308	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.48496	-2.23987	8 Dantzic Street, Manchester, Greater Manchester, M4 2AD	436167527
309	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.48496	-2.23987	8 Dantzic Street, Manchester, Greater Manchester, M4 2AD	437167527
310	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.48496	-2.23987	8 Dantzic Street, Manchester, M4 2AD	438167527
311	Oxygen Tower A, 50, Store Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2FS, United Kingdom	53.48031	-2.22493	Store Street, Manchester, M1 2FT	439167527
312	Canal Bank, Monton, Eccles, Salford, Greater Manchester, England, M30 8AA, United Kingdom	53.48988	-2.35806	Canal Bank, Monton, Eccles, M30	440167527
313	Transport House, 1, Crescent, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M5 4JN, United Kingdom	53.483196	-2.264775	Transport House, The Crescent, Salford	441167527
314	Gorton Road, North Reddish, Stockport, Greater Manchester, England, SK5 6QU, United Kingdom	53.450661	-2.157743	Gorton Road, Reddish, Stockport, SK5 6NR	442167527
315	John William Street, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 0BL, United Kingdom	53.484089	-2.337517	Kendal Court, New Lane, Eccles	443167527
316	Aqueduct Way, Havenswood, Barton upon Irwell, Eccles, Salford, Greater Manchester, England, M30 0YT, United Kingdom	53.478057	-2.342417	Havenswood, Eccles, M30	444167527
317	Nicolas Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 9LR, United Kingdom	53.443168	-2.279475	Manchester Road, Chorlton Cum Hardy, Manchester	445167527
318	Mo & Co, 299, Chester Road, Hulme, Manchester, Greater Manchester, England, M15 4EY, United Kingdom	53.46981	-2.26449	Chester Road, Hulme, Manchester, M15 4EY	446167527
319	Hulton Street, Failsworth, Oldham, Greater Manchester, England, M35 0AZ, United Kingdom	53.50746	-2.16717	Hulton Street, Manchester, M35	447167527
320	Goodwood Drive, Swinton Park, Pendlebury, Salford, Greater Manchester, England, M27 4HB, United Kingdom	53.508804	-2.320977	Goodwood Drive, Pendlebury, Swinton, Manchester, M27	448167527
321	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	449167527
322	Danson Street, Miles Platting, Manchester, Greater Manchester, England, M40 7LQ, United Kingdom	53.489261	-2.209977	Danson Street, Manchester	450167527
323	Slug & Lettuce, Leftbank, Spinningfields, City Centre, Manchester, Greater Manchester, England, M3 3AN, United Kingdom	53.480601	-2.254931	12 Leftbank, Spinningfields	451167527
324	2a, Lower Chatham Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5TF, United Kingdom	53.473016	-2.24312	The Foundry, 3a Lower Chatham Street, Southern Gateway, Manchester, M1	452167527
325	Mountside Crescent, Kirkhams, Prestwich, Bury, Greater Manchester, England, M25 3HX, United Kingdom	53.529158	-2.289814	Mountside Crescent, Prestwich, M25	453167527
326	Village Gate, 15, Wilbraham Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 6FG, United Kingdom	53.442544	-2.221123	Wilbraham Road, Manchester, Greater Manchester, M14	454167527
327	Bendix, 2, Bendix Street, New Cross, Collyhurst, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.48601	-2.2307	Broadside, M4	455167527
328	Local Block A, 2, Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4ZH, United Kingdom	53.482543	-2.265051	Local Crescent, Hulme Street, Salford	456167527
329	Eccles New Road, Little Bolton, Eccles, Salford, Greater Manchester, England, M50 1AZ, United Kingdom	53.48368	-2.32606	Ladywell Point, Pilgrims Way, Salford, M50 1AU	457167527
330	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	458167527
331	Pot Kettle Black, Miller Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.48665	-2.23598	Angel Gardens, M4	459167527
332	19, Mason Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5FT, United Kingdom	53.486499	-2.23352	The Cartwright, Spinners Mill	460167527
333	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	461167527
334	Skyhook, Wharf End, Wharfside, Stretford, Trafford, Greater Manchester, England, M17 1HY, United Kingdom	53.46508	-2.28615	No. 1 Old Trafford	463167527
335	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	464167527
336	Wharf End, Wharfside, Stretford, Trafford, Greater Manchester, England, M17 1HY, United Kingdom	53.465323	-2.285723	No. 1 Old Trafford	465167527
337	Wharfside Way, Wharfside, Stretford, Trafford, Greater Manchester, England, M17 1HY, United Kingdom	53.463901	-2.286119	No. 1 Old Trafford	466167527
338	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	467167527
339	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.4722	-2.255811	Elizabeth Tower	468167527
340	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	469167527
341	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47372	-2.28586	Clay, Salford Quays, M50	470167527
342	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	471167527
343	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	472167527
344	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	473167527
345	City Lofts, 94, The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3SP, United Kingdom	53.472755	-2.29469	City Loft, Salford, M50	475167527
346	56, Tan Yard Brow, Reddish Bridge, Gorton, Manchester, Greater Manchester, England, M18 8UJ, United Kingdom	53.46107	-2.164539	Tan Yard Brow, Manchester, M18	476167527
347	3, Cobourg Street, City Centre, Manchester, Greater Manchester, England, M1 3GY, United Kingdom	53.476456	-2.233317	Cobourg Street, Manchester, M1	477167527
348	5, Piccadilly Place, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3BP, United Kingdom	53.477192	-2.233515	The Hub, Manchester, M1	478167527
349	Co-op Food, 4, Angel Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4BR, United Kingdom	53.4874	-2.23548	North Central, Dyche Street, Manchester	479167527
350	Great Ancoats Street, Ardwick, Manchester, Greater Manchester, England, M1 2BJ, United Kingdom	53.479242	-2.222675	Victoria House, Great Ancoats Street	480167527
351	Parsonage Road, Withington, Manchester, Greater Manchester, England, M20 4PL, United Kingdom	53.433926	-2.225947	23 Parsonage Road, Withington, Greater Manchester, M20	481167527
352	24D, Wilbraham Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 6FG, United Kingdom	53.443392	-2.22544	20a Wilbraham Court Two, Fallowfield, Manchester, Greater Manchester, M14	482167527
353	Carrington's, 8a, Tib Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1PQ, United Kingdom	53.48223	-2.237812	Transmission House, 11 Tib Street, Manchester City Centre, Greater Manchester, M4	483167527
354	3, Cobourg Street, City Centre, Manchester, Greater Manchester, England, M1 3GY, United Kingdom	53.476456	-2.233317	Cobourg Street, Manchester, M1	484167527
355	Stockton Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 9FB, United Kingdom	53.439167	-2.280894	Stockton Road, Manchester, M21	485167527
356	3, Joiner Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1PR, United Kingdom	53.48271	-2.237945	Joiner Street, Manchester, M4	486167527
357	Thornfield Street, Weaste, Eccles, Salford, Greater Manchester, England, M5 5FD, United Kingdom	53.482693	-2.306225	Thornfield Street, Salford, Greater Manchester, M5	487167527
358	John Hogan VC Road, Weavers Park, Miles Platting, Manchester, Greater Manchester, England, M40 7QU, United Kingdom	53.491134	-2.214745	John Hogan V C Road, Manchester	488167527
359	190, Water Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M3 4AU, United Kingdom	53.475037	-2.262831	One Regent, 1 Regent Road, Manchester, M3	489167527
360	99, Denmark Road, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M15 6ET, United Kingdom	53.45993	-2.235392	Linen, 99 Denmark Road, Manchester, M15	490167527
361	78, Watts Street, Levenshulme, Manchester, Greater Manchester, England, M19 2TS, United Kingdom	53.43898	-2.182905	Watts Street, Levenshulme	491167527
362	140, Platt Lane, Fallowfield Triangle, Rusholme, Manchester, Greater Manchester, England, M14 7NZ, United Kingdom	53.450035	-2.227997	Platt Lane Manchester, M14 5WH	492167527
363	Talbot Road, Ladybarn, Burnage, Manchester, Greater Manchester, England, M14 6TB, United Kingdom	53.435218	-2.210323	Talbot Road Fallowfield, M14 6TA	493167527
364	X1 The Exchange, 8, Elmira Way, Ordsall, Salford, Greater Manchester, England, M5 3NQ, United Kingdom	53.470467	-2.282321	The Exchange, 8 Elmira Way, Salford Quays, Greater Manchester, M5	494167527
365	Hulton Street, Ordsall, Salford, Greater Manchester, England, M5 3GF, United Kingdom	53.471709	-2.280609	Spinner House, 1A Elmira Way, Salford, M5	495167527
366	Norwood Avenue, Burnage, Manchester, Greater Manchester, England, M20 6EX, United Kingdom	53.420665	-2.216437	Norwood Avenue Manchester, M20 6EX	496167527
367	Wythburn Street, Seedley, Eccles, Salford, Greater Manchester, England, M6 5LB, United Kingdom	53.48559	-2.29989	Seedley Park Road, Salford, M6	497167527
368	Elmira Way, Ordsall, Salford, Greater Manchester, England, M5 3DE, United Kingdom	53.469924	-2.281501	Brindley House, 1 Elmira Way, Salford, M5	498167527
369	Stone Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NE, United Kingdom	53.47603	-2.25414	Duke Street, Manchester, Greater Manchester, M3	499167527
370	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48369	-2.25036	Manchester, Greater Manchester, M3	500167527
371	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48369	-2.25036	Chapel Wharf, Manchester, M3	501167527
372	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48369	-2.25036	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	502167527
373	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48369	-2.25036	Chapel Wharf, Manchester, M3	503167527
374	The Lowry Hotel, 50, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5LH, United Kingdom	53.48332	-2.25029	Chapel Wharf, Manchester, M3	504167527
375	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48381	-2.25044	Chapel Wharf, Manchester, M3	505167527
376	Clowes Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FH, United Kingdom	53.48325	-2.24995	Chapel Wharf, Manchester, M3	506167527
377	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48375	-2.25033	Chapel Wharf, Manchester, M3	507167527
378	Chapman House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48405	-2.25074	Chapel Wharf, Manchester, M3	508167527
379	Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5FA, United Kingdom	53.48368	-2.25102	Chapel Wharf, Manchester, M3	509167527
380	Silk Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6EE, United Kingdom	53.48768	-2.263848	Knightsbridge Court, Salford, M3	510167527
381	New Beech Road, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 3DD, United Kingdom	53.4133	-2.204515	New Beech Court, Heaton Mersey, SK4	511167527
382	Snowdon Road, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 9AT, United Kingdom	53.49085	-2.33154	Snowdon Road, Eccles, M30	512167527
383	Haydn Avenue, Moss Side, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.457022	-2.234	Haydn Avenue, Manchester	513167527
384	Acomb Street, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.455484	-2.233469	Acomb Street, Manchester	514167527
385	Bankfield Avenue, Victoria Park, Longsight, Manchester, Greater Manchester, England, M13 0ZP, United Kingdom	53.455707	-2.207895	Bankfield Avenue, Manchester	515167527
386	Gascoyne Street, Moss Side, Manchester, Greater Manchester, England, M14 4FU, United Kingdom	53.455631	-2.234732	Gascoyne Street, Manchester	516167527
387	Ruskin Avenue, Moss Side, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.456815	-2.234876	Ruskin Avenue, Manchester	517167527
388	314-336, Claremont Road, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7WJ, United Kingdom	53.45262	-2.234525	Claremont Road, Manchester	518167527
389	Langfields, 158, Liverpool Street, Ordsall, Salford, Greater Manchester, England, M5 4LJ, United Kingdom	53.48012	-2.2748	Balmoral House, 17 Windsor Street, M5 4AZ	519167527
390	Meredew Avenue, Dales Brow, Ellesmere Park, Swinton, Salford, Greater Manchester, England, M27 5QX, United Kingdom	53.501579	-2.343443	Maple Road, Swinton, Manchester, Greater Manchester, M27	520167527
391	Fairholme Road, Ladybarn, Withington, Manchester, Greater Manchester, England, M20 4WT, United Kingdom	53.433242	-2.220651	Fairholme Road, Manchester, Greater Manchester, M20	521167527
392	Victoria Road, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 9RG, United Kingdom	53.488472	-2.339407	Sandwich Road, Manchester	522167527
393	Alexandra Lodge Care Centre, 355-357, Wilbraham Road, Whalley Range, Manchester, Greater Manchester, England, M16 8NP, United Kingdom	53.4431	-2.25329	Wilbraham Road, Manchester, Greater Manchester, M16	523167527
394	Warehouse, Goods Yard St, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 3GS, United Kingdom	53.47831	-2.25729	Union East Tower, 19 Water Street, Manchester, Greater Manchester, M3	524167527
395	14, Khartoum Street, Old Trafford, Manchester, Greater Manchester, England, M16 9WE, United Kingdom	53.45803	-2.26442	Milner Street, Manchester, M16 9WF	525167527
396	Crumpsall Lane, Crumpsall, Manchester, Greater Manchester, England, M8 5ST, United Kingdom	53.517298	-2.238088	Crumpsall Lane, Manchester, Greater Manchester, M8	526167527
397	Valley Road, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 2BX, United Kingdom	53.409301	-2.193979	Valley Road, Heaton Mersey, Stockport	527167527
398	Blackburn Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6AS, United Kingdom	53.489549	-2.264227	Blackburn Street, Trinity Riverside, Salford, M3 6AS	528167527
399	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486891	-2.249365	Colliers Yard, M3	626167527
400	Jutland House, 15, Jutland Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2BE, United Kingdom	53.47986	-2.22945	Jutland House, 15 Jutland Street, Manchester, M1 2BE	529167527
401	9, Sterling Avenue, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6GQ, United Kingdom	53.484165	-2.264188	9 Sterling Avenue, Salford M3 6GQ	530167527
402	Affinity Living Riverview, 29, New Bailey Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EU, United Kingdom	53.48215	-2.25312	Affinity Living Riverview, New Bailey Street, Manchester, Greater Manchester, M3	531167527
403	Timber Wharf, Worsley Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4NY, United Kingdom	53.4726	-2.26135	The Base, M15	532167527
404	Droylsden Road, Newton Heath, Manchester, Greater Manchester, England, M40 1GJ, United Kingdom	53.497898	-2.17033	Droylsden Road, Manchester	533167527
405	Patey Street, Belle Vue, Manchester, Greater Manchester, England, M12 5RP, United Kingdom	53.4552	-2.1911	Patey Street, Manchester, M12	534167527
406	Enver Road, Crumpsall, Manchester, Greater Manchester, England, M8 5UN, United Kingdom	53.51363	-2.234304	Ash Tree Road, Manchester, M8	535167527
407	Flint Building, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5GU, United Kingdom	53.47988	-2.25824	Stanley Street, Novella Apartments, M3	536167527
408	Cleminson Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6DH, United Kingdom	53.484573	-2.260823	Trinity Court, Cleminson Street, Salford	537167527
409	Wareham Grove, Patricroft, Worsley, Salford, Greater Manchester, England, M30 8NP, United Kingdom	53.487436	-2.362677	Wareham Grove, Eccles, Manchester, Greater Manchester, M30	538167527
410	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	539167527
411	Transmission House, 11, Tib Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1AF, United Kingdom	53.482655	-2.237032	Tib Street, Transmission House, M4	540167527
412	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47326	-2.28636	Anchorage Quay, Manchester, Greater Manchester, M50	541167527
413	Tuscany House, 19, Dickinson Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M1 4LX, United Kingdom	53.477569	-2.242078	Tuscany House, 19 Dickenson Street, Manchester	542167527
414	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47326	-2.28636	Anchorage Quay, Manchester, Greater Manchester, M50	543167527
415	Gilda Brook Road, Little Bolton, Eccles, Salford, Greater Manchester, England, M30 0DJ, United Kingdom	53.48836	-2.329485	Bedsit Room Gildabrook Road, Salford, Manchester	544167527
416	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	545167527
417	Water Street, Portwood, Stockport, Greater Manchester, England, SK1 2BU, United Kingdom	53.417079	-2.152724	Water Street, Stockport	546167527
418	8, Mayfield Road, Whalley Range, Manchester, Greater Manchester, England, M16 8FT, United Kingdom	53.452212	-2.25332	Mayfield Road, Whalley Range, Manchester, M16 8FT	547167527
419	24, Crescent, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PF, United Kingdom	53.482842	-2.267543	The Crescent, Salford, M5	548167527
420	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486895	-2.249376	Colliers Yard, M3	549167527
421	Bridgewater Point, Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 4UB, United Kingdom	53.472962	-2.269677	Commerce Quay, Merhcants Wharf, 221 Ordsall Lane, Salford, Manchester, M5	550167527
422	41, Beastow Road, Belle Vue, Manchester, Greater Manchester, England, M12 5GS, United Kingdom	53.46828	-2.197997	Beastow Road, Manchester, M12	551167527
423	Blantyre House, 4, Slate Wharf, Castlefield, City Centre, Manchester, Greater Manchester, England, M15 4SY, United Kingdom	53.47357	-2.258194	Egerton House, Manchester, M15	552167527
424	Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 3NG, United Kingdom	53.47087	-2.27233	Ordsall Lane, Manchester, Greater Manchester, M5	553167527
425	190, Water Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M3 4AU, United Kingdom	53.47505	-2.262874	One Regent, 1 Regent Road, Manchester, M3	554167527
426	Victoria Mill Medical Practice, James Street, Miles Platting, Manchester, Greater Manchester, England, M40 8BX, United Kingdom	53.49	-2.21356	Victoria Mill, Lower Vickers Street, Manchester	555167527
427	Stuart Street, Bradford, Manchester, Greater Manchester, England, M11 4TF, United Kingdom	53.48522	-2.19391	Apt 514, 5 Stillwater Drive, Sportcity, Clayton, Manchester M11 4TF	556167527
428	David Street, North Reddish, Reddish, Stockport, Greater Manchester, England, SK5 6HN, United Kingdom	53.439388	-2.161735	David Street Reddish Stockport	557167527
429	Irwell River Park, Ordsall, Salford, Greater Manchester, England, M5 4SU, United Kingdom	53.47408	-2.264337	Riverside, Lowry Wharf, Derwent Street, Salford, M5	558167527
430	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	559167527
431	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	560167527
432	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	561167527
433	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	562167527
434	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487218	-2.249247	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	563167527
435	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487146	-2.249484	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	564167527
436	Block A, 54, Bury Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DH, United Kingdom	53.486062	-2.253458	Local Blackfriars, 54 Bury Street, Salford, M3	565167527
437	Vincent Avenue, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 9GR, United Kingdom	53.44379	-2.2821	Vincent Avenue, Chorlton	566167527
438	The Green Rooms, Blue, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 2AH, United Kingdom	53.47277	-2.30172	Blue, Media City Uk, Manchester, Greater Manchester, M50	567167527
439	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	568167527
440	Adelphi Wharf 3, 7, Adelphi Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6FZ, United Kingdom	53.48518	-2.26519	Adelphi Street, Manchester, Greater Manchester, M3	569167527
441	Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 3NG, United Kingdom	53.47087	-2.27233	Ordsall Lane, Manchester, Greater Manchester, M5	570167527
442	The Blade, 15, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.471739	-2.254987	Blade, 15 Silvercroft Street, Manchester, M15	571167527
443	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47326	-2.28636	Anchorage Quay, Manchester, Greater Manchester, M50	572167527
444	24, Fleeson Street, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5WQ, United Kingdom	53.453136	-2.225976	Fleeson Street, Risholme, Manchester. M14 5NQ	573167527
445	1, Jordan Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 4PY, United Kingdom	53.473464	-2.250035	Jordan Street, Manchester, M15	575167527
446	57, Dale Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 2HS, United Kingdom	53.48039	-2.23231	Dale Street, Manchester, M1	576167527
447	Milford Street, Weaste, Eccles, Salford, Greater Manchester, England, M6 5QG, United Kingdom	53.4825	-2.29546	Milford Street, Salford	577167527
448	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486878	-2.249343	Colliers Yard, M3	627167527
449	TK Maxx, 36, Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 3TP, United Kingdom	53.477199	-2.263491	Ordsall Lane, Salford	578167527
450	Barnsfold Avenue, Fallowfield, Manchester, Greater Manchester, England, M14 6FJ, United Kingdom	53.440456	-2.225492	Barnsfold Avenue, Fallowfield, Manchester, M14 6FJ	580167527
451	Halo, 27, Simpson Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4GB, United Kingdom	53.487949	-2.235143	Simpson Street, Manchester	581167527
452	Meadow Mill, Water Street, Portwood, Stockport, Greater Manchester, England, SK1 2BU, United Kingdom	53.417736	-2.152235	Meadow Mill	582167527
453	1, Bushmoor Walk, Brunswick, Ardwick, Manchester, Greater Manchester, England, M13 9GT, United Kingdom	53.464289	-2.216921	Bushmoor Walk, Manchester, M13	583167527
454	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47326	-2.28636	Clay Salford Quays,Anchorage Quay, Manchester, Greater Manchester, M50	584167527
455	Sandycroft Avenue, Benchill, Wythenshawe, Manchester, Greater Manchester, England, M22 9AQ, United Kingdom	53.3837	-2.25713	Sandycroft Avenue, Manchester, M22	585167527
456	Lawnhurst Avenue, Baguley, Wythenshawe, Manchester, Greater Manchester, England, M23 9RW, United Kingdom	53.40421	-2.29251	Lawnhurst Avenue, Wythenshawe, M23	586167527
457	Felskirk Road, Woodhouse Park, Wythenshawe, Manchester, Greater Manchester, England, M22 1PS, United Kingdom	53.36877	-2.26567	Lincombe Road, Woodhouse Park, Wythenshawe,M22 1PY	587167527
458	Axis Tower, 9, Whitworth Street West, First Street, City Centre, Manchester, Greater Manchester, England, M1 5JB, United Kingdom	53.47451	-2.24855	Whitworth Street West, Manchester, Greater Manchester, M1	588167527
459	Note, 34, Tib Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1LA, United Kingdom	53.483005	-2.236025	Smithfield Buildings, Tib Street, Manchester	589167527
460	esea contemporary, 13, Thomas Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1EU, United Kingdom	53.484727	-2.237475	Market Buildings, 17 Thomas Street, Northern Quarter, Manchester, M4 1EU	590167527
461	Jefferson Place, 1, Fernie Street, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4BL, United Kingdom	53.49074	-2.24024	Jefferson Place, City Centre, M4	591167527
462	Brigadier Road, Brinnington, Stockport, Greater Manchester, England, SK5 8LW, United Kingdom	53.43512	-2.133909	Brigadier Road, Stockport, SK5	592167527
463	Linford Gardens, 114, Boundary Lane, First Street, Hulme, Manchester, Greater Manchester, England, M15 6FD, United Kingdom	53.46599	-2.24067	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	593167527
464	1-3, Davenfield Road, Didsbury, Manchester, Greater Manchester, England, M20 6TL, United Kingdom	53.4172	-2.233869	Churchwood House, Churchwood Road, Didsbury	594167527
465	Leopold Avenue, West Didsbury, Manchester, Greater Manchester, England, M20 1JL, United Kingdom	53.42896	-2.24166	Leopold Avenue, West Didsbury	595167527
466	Lower Vickers Street, Miles Platting, Manchester, Greater Manchester, England, M40 7XG, United Kingdom	53.48978	-2.214437	Victoria Mill, Lower Vickers Street, Manchester	596167527
467	20, Driffield Street, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7HZ, United Kingdom	53.452172	-2.238558	Driffield Street, Rusholme, Manchester, M14	597167527
468	Affinity Living Riverside, 32, Quay Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5AP, United Kingdom	53.48241	-2.25202	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	598167527
469	Great Ancoats Street, Ardwick, Manchester, Greater Manchester, England, M1 2BJ, United Kingdom	53.47924	-2.22284	Victoria House, 250 Great Ancoats Street, M4	599167527
470	Derby Road, Ladybarn, Withington, Manchester, Greater Manchester, England, M14 6UR, United Kingdom	53.436981	-2.214916	Derby Road, Fallowfield, M14	600167527
471	Grundy Street, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 3AX, United Kingdom	53.412086	-2.20787	Grundy Street, Heaton Mersey, Stockport, Cheshire, SK4	601167527
472	31, Tennyson Road, North Reddish, Reddish, Stockport, Greater Manchester, England, SK5 6JQ, United Kingdom	53.444019	-2.167658	Tennyson Road, Reddish, Stockport, SK5	602167527
473	Cromwell Road, Charlestown, Salford, Greater Manchester, England, M6 6DA, United Kingdom	53.49936	-2.27357	Roan Close, Salford	603167527
474	The Drive, Broughton Park, Salford, Greater Manchester, England, M7 3NE, United Kingdom	53.514069	-2.269172	The Mount, Vine Street	604167527
475	Market Street, Fairfield, Droylsden, Tameside, Greater Manchester, England, M43 7EJ, United Kingdom	53.480743	-2.144616	Market Street, Droylsden, M43	605167527
476	Irwell River Park, Ordsall, Salford, Greater Manchester, England, M5 4SU, United Kingdom	53.47408	-2.264337	Riverside, Lowry Wharf, Derwent Street, Salford, M5	606167527
477	The Sorting House, 83, Newton Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 1EP, United Kingdom	53.483012	-2.231784	The Sorting House, 83 Newton Street, Northern Quarter, Manchester, M1 1ER	607167527
478	Old Lansdowne Road, West Didsbury, Manchester, Greater Manchester, England, M20 2WZ, United Kingdom	53.4223	-2.243	83-85 Old Lansdowne Road, Manchester, M20 2NZ	608167527
479	Bankfield Avenue, Victoria Park, Longsight, Manchester, Greater Manchester, England, M13 0ZP, United Kingdom	53.455816	-2.209459	Belgrave Ave	609167527
480	Lodgehall Drive, Failsworth, Oldham, Greater Manchester, England, M35 0PD, United Kingdom	53.507141	-2.172438	Lancaster Lodge, Lodge Hall Drive, Failsworth	611167527
481	3, Barton Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NN, United Kingdom	53.475646	-2.252353	3 Barton Street, Castlefield, Manchester, M3	612167527
482	Adelphi Wharf 2, 9, Adelphi Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6FZ, United Kingdom	53.48579	-2.26506	Adelphi Wharf 2, 9 Adelphi Street, Salford, Greater Manchester, M3	613167527
706	Norwood Road, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M32 8PN, United Kingdom	53.44654	-2.29853	Norwood Road,Stretford,M32 8PN	851167527
483	Parkers Apartments, 115, Corporation Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4HB, United Kingdom	53.488625	-2.239389	Parkers Apartments, Corporation Street, Manchester	614167527
484	Silverdale Road, The Four Heatons, Heaton Chapel, Stockport, Greater Manchester, England, SK4 2RN, United Kingdom	53.421974	-2.173895	Wellington Road North, Heaton Chapel, Stockport, SK4	615167527
485	5, Blantyre Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M15 4JS, United Kingdom	53.473463	-2.258789	City Gate, Blantyre Street, M15 4JS	616167527
486	Fernside Avenue, Ladybarn, Burnage, Manchester, Greater Manchester, England, M20 4TA, United Kingdom	53.428797	-2.215155	Fernside Avenue, Withington	617167527
487	Broadway, Salford Quays, Salford, Greater Manchester, England, M50 2UG, United Kingdom	53.476737	-2.289399	Lexington Court, Broadway, Salford	618167527
488	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.47224	-2.25578	Chester Road, Manchester, M15	619167527
489	Crown Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZP, United Kingdom	53.47207	-2.25471	Three60, 11 Silvercroft Street, M15	620167527
490	The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3SP, United Kingdom	53.474431	-2.287753	The Quays, Salford, Greater Manchester, M50	621167527
491	Hulme Street Car Park, Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GH, United Kingdom	53.47213	-2.24357	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	622167527
492	The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3SP, United Kingdom	53.474487	-2.287773	The Quays, Salford, Greater Manchester, M50	623167527
493	Hulme Street Car Park, Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GH, United Kingdom	53.47213	-2.24352	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	624167527
494	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.472283	-2.255758	Chester Road, Manchester, M15	625167527
495	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.486896	-2.249343	Colliers Yard, M3	628167527
496	Chedworth Drive, Newall Green, Wythenshawe, Manchester, Greater Manchester, England, M23 1LW, United Kingdom	53.39392	-2.276187	Chedworth Drive, Manchester, M23	629167527
497	Elizabeth Tower, 141, Chester Road, St. Johns, City Centre, Manchester, Greater Manchester, England, M15 4ZN, United Kingdom	53.47225	-2.25577	Chester Road, Manchester, M15	630167527
498	Crown Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4ZP, United Kingdom	53.47207	-2.25471	Three60, M15	631167527
499	52, Albert Road, Levenshulme, Manchester, Greater Manchester, England, M19 2AB, United Kingdom	53.44417	-2.196127	Albert Road, Manchester, M19	632167527
500	877, Ashton Old Road, Openshaw, Manchester, Greater Manchester, England, M11 2NL, United Kingdom	53.47364	-2.182043	Ashton Old Road, Openshaw, Manchester	633167527
501	Dickenson Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HJ, United Kingdom	53.45246	-2.2171	Dickenson Road, Fallowfield, Manchester, M14	634167527
502	Sunnyside Road, Fairfield, Droylsden, Tameside, Greater Manchester, England, M43 7GE, United Kingdom	53.489418	-2.15204	Sunnyside Road, Droylsden, Manchester, M43	635167527
503	Whitworth Lane, Fallowfield, Manchester, Greater Manchester, England, M14 6HF, United Kingdom	53.44639	-2.215311	Whitworth Lane, Manchester, M14	636167527
504	Sugar Mill Square, Seedley, Eccles, Salford, Greater Manchester, England, M5 5EB, United Kingdom	53.482693	-2.308151	Sugar Mill Square, Salford, M5	637167527
505	Irwell River Park, Ordsall, Salford, Greater Manchester, England, M5 4SU, United Kingdom	53.474626	-2.264222	403 Silkbank Wharf, 21 Derwent Street, Manchester, M5	638167527
506	Chepstow Street North, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5JQ, United Kingdom	53.475017	-2.244765	Chepstow House, 16-20 Chepstow Street, Manchester	639167527
507	X1 Chapel Street, 272, Chapel Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 5JZ, United Kingdom	53.48338	-2.26277	Chapel Street, Salford, M3	640167527
508	9, Rodney Street, Collyhurst, Manchester, Greater Manchester, England, M4 6JJ, United Kingdom	53.48684	-2.22166	Rodney Street, Manchester, M4	641167527
509	Victoria Road, Little Bolton, Eccles, Salford, Greater Manchester, England, M6 8EF, United Kingdom	53.489772	-2.325831	Victoria House, Victoria Road, Salford	642167527
510	Haçienda Apartments, 11-15, Whitworth Street West, First Street, City Centre, Manchester, Greater Manchester, England, M1 5DB, United Kingdom	53.474338	-2.247511	The Hacienda, 11 - 15 Whitworth Street West, Manchester	643167527
511	Cheltenham Street, Pendleton, Salford, Greater Manchester, England, M6 6WY, United Kingdom	53.49073	-2.27879	Frederick Road, Manchester, Greater Manchester, M6	644167527
512	The Peninsula, 2, Cheetham Hill Road, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4FB, United Kingdom	53.489129	-2.2412	Cheetham Hill Road, Manchester, M4 4	645167527
513	Cavendish Road, West Didsbury, Manchester, Greater Manchester, England, M20 1QE, United Kingdom	53.430533	-2.246229	Cavendish Road, West Didsbury	646167527
514	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.48496	-2.23987	8 Dantzic Street, Manchester, M4 2AD	647167527
515	Devell House, 11, Rusholme Place, Curry Mile, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 5TE, United Kingdom	53.458579	-2.225414	Rusholme Place, Manchester, M14 5TG	648167527
516	Cheltenham Street, Pendleton, Salford, Greater Manchester, England, M6 6WY, United Kingdom	53.49072	-2.27879	Frederick Road, Manchester, Greater Manchester, M6	650167527
517	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.48496	-2.23987	8 Dantzic Street, Manchester, M4 2AD	651167527
518	Bombay Street, Victoria Park, Longsight, Manchester, Greater Manchester, England, M14 5PY, United Kingdom	53.455561	-2.21143	Milverton Road	652167527
519	Bourdon Street, Miles Platting, Manchester, Greater Manchester, England, M40 7DB, United Kingdom	53.48824	-2.21533	Apartments 109A, Victoria Mill, 1 Lower Vickers Street	653167527
520	Bourdon Street, Miles Platting, Manchester, Greater Manchester, England, M40 7DB, United Kingdom	53.48824	-2.21533	Apartments 109A, Victoria Mill, 1 Lower Vickers Street	654167527
521	Block A, 232, Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 3NB, United Kingdom	53.472104	-2.271843	Quay 5, 232 Ordsall Lane	655167527
522	15, Knutsford Street, Weaste, Eccles, Salford, Greater Manchester, England, M6 5QU, United Kingdom	53.48339	-2.29773	Knutsford Street, Manchester, Greater Manchester, M6	656167527
523	Bourdon Street, Miles Platting, Manchester, Greater Manchester, England, M40 7DB, United Kingdom	53.48824	-2.21533	Apartments 109, Victoria Mill, 1 Lower Vickers Street	657167527
524	Horton Road, Fallowfield Triangle, Moss Side, Manchester, Greater Manchester, England, M14 7BX, United Kingdom	53.44847	-2.23741	Horton Road :: Fallowfield	658167527
525	Cheltenham Street, Pendleton, Salford, Greater Manchester, England, M6 6WY, United Kingdom	53.4907	-2.27883	Frederick Road, Manchester, Greater Manchester, M6	659167527
526	1, Blantyre Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M15 4JU, United Kingdom	53.472668	-2.257047	City Gate, Castlefield	660167527
527	Greengate Lane, Kirkhams, Prestwich, Bury, Greater Manchester, England, M25 3HW, United Kingdom	53.531797	-2.287237	Greengate Lane, Prestwich	661167527
528	Victoria Residence, 16, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.47216	-2.25472	Silvercroft Street, Manchester, Greater Manchester, M15	662167527
529	Victoria Residence, 16, Silvercroft Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4AX, United Kingdom	53.47216	-2.25472	Silvercroft Street, Manchester, Greater Manchester, M15	663167527
530	Associated Security Systems Ltd, 25, Addington Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5EU, United Kingdom	53.48596	-2.2331	New Cross Central, M2	664167527
531	Eccles New Road, Little Bolton, Eccles, Salford, Greater Manchester, England, M50 1AZ, United Kingdom	53.48368	-2.32606	Ladywell Point,	665167527
532	Transmission House, 11, Tib Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1AF, United Kingdom	53.48263	-2.23715	Tib Street, Manchester, Greater Manchester, M4	666167527
533	Style Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4BJ, United Kingdom	53.4882	-2.23642	Meadow View, Naples Street, Ancoats, M4	667167527
534	1E, Spinners Way, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4TZ, United Kingdom	53.471598	-2.260534	Spinners Way, Manchester, M15	668167527
535	Great Clowes Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M7 1BU, United Kingdom	53.498962	-2.25951	Apartment 10, Great Clowes Street Manchester M7 2ZS	669167527
536	Michigan Point Tower A, 9, Michigan Avenue, Salford Quays, Salford, Greater Manchester, England, M50 2GY, United Kingdom	53.474315	-2.291545	Michigan Point, Michigan Avenue, Salford	670167527
537	Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8TD, United Kingdom	53.43689	-2.27332	Barlow Moor Road, Chorlton, Manchester	671167527
538	Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8TD, United Kingdom	53.43689	-2.27332	Barlow Moor Road, Chorlton, Manchester	672167527
539	Fifty5ive, 55, Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.48673	-2.25239	Fifty5ive 49B, 55 Queen Street	673167527
540	Fifty5ive, 55, Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.48673	-2.25239	Fifty5ive 49A, 55 Queen Street	675167527
541	Fifty5ive, 55, Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.48673	-2.25239	Fifty5ive 49C, 55 Queen Street	676167527
542	7, Collier Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NA, United Kingdom	53.475746	-2.252964	Collier Street, Manchester	677167527
543	Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 3QW, United Kingdom	53.423824	-2.231757	Ballbrook Avenue, Didsbury, Manchester	678167527
544	Olive Shapley Avenue, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 6QG, United Kingdom	53.41523	-2.226266	Olive Shapley Avenue, Manchester, M20	679167527
545	122, High Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M4 1AB, United Kingdom	53.485277	-2.23526	122 High Street, Northern Quarter	680167527
546	Redburn Road, Benchill, Wythenshawe, Manchester, Greater Manchester, England, M23 1AH, United Kingdom	53.3989	-2.27407	Redburn Road, Manchester, M23	681167527
547	Castle Way, Clifton Green, Pendlebury, Salford, Greater Manchester, England, M27 8HZ, United Kingdom	53.523885	-2.326399	Castleway, Swinton, Manchester, M27	682167527
548	42, Ellesmere Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4RS, United Kingdom	53.47215	-2.26089	Moho, Ellesmere Street, Manchester, M15	683167527
549	14, Blanchard Street, Hulme, Manchester, Greater Manchester, England, M15 5PN, United Kingdom	53.461895	-2.250286	Blanchard Street, Hulme	684167527
550	Fifty5ive, 55, Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DQ, United Kingdom	53.48673	-2.25239	Fifty5ive, Queen Street, Salford, M3	685167527
551	Montonmill Gardens, Patricroft, Worsley, Salford, Greater Manchester, England, M30 8EG, United Kingdom	53.489849	-2.358851	Merchants Quay Court, Montonmill Gardens, Eccles	686167527
552	Co-op Food, 4, Angel Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4BR, United Kingdom	53.48739	-2.23552	Dyche Street, Manchester, M4	687167527
553	Ashworth Street, Failsworth, Oldham, Greater Manchester, England, M35 0JQ, United Kingdom	53.501918	-2.16924	Ashworth Street, Failsworth, Manchester	688167527
554	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	689167527
555	Chuck Gallery, 166, Plymouth Grove, Victoria Park, Ardwick, Manchester, Greater Manchester, England, M13 9AT, United Kingdom	53.462468	-2.2171	Flat 2, 166 Plymouth Grove, Longsight, Manchester	690167527
556	Oxygen Tower C, 50, Store Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2FX, United Kingdom	53.48013	-2.22538	Oxygen Tower, Manchester, M1	691167527
557	Aubrey Road, Ladybarn, Burnage, Manchester, Greater Manchester, England, M14 6SE, United Kingdom	53.433809	-2.209296	Aubrey Road, Manchester, Greater Manchester, M14	692167527
558	Hulme Street Car Park, Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GH, United Kingdom	53.47207	-2.24357	Square Gardens,Wilmott Street, Manchester, Greater Manchester, M15	693167527
559	Leonardo Hotel Manchester Central, 56, Great Bridgewater Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5LE, United Kingdom	53.474872	-2.246849	Viadux, Great Bridgewater Street, Manchester	694167527
560	The Quadrangle, Chester Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5QS, United Kingdom	53.47246	-2.24101	Quadrangle, City Centre	695167527
561	Watson Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M3 4LP, United Kingdom	53.4755	-2.24931	Great Bridgewater Street, Manchester, Greater Manchester, M1	696167527
562	City Road Inn, 14, Albion Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5NZ, United Kingdom	53.474017	-2.248398	Great Bridgewater Street, Manchester, M1	697167527
563	1, Rochdale Road, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 4GG, United Kingdom	53.486496	-2.235791	Angel Gardens, M4	698167527
564	One Silk St, 1, Silk Street, Ancoats, Collyhurst, Manchester, Greater Manchester, England, M4 6LZ, United Kingdom	53.486165	-2.227734	Apt 6.03 :: One Silk Street	700167527
565	59, Chorlton Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GJ, United Kingdom	53.47688	-2.23455	Kampus Apt 301 South Block, 59 Chorlton Street, Manchester, Greater Manchester, M1eet, Manchester, Greater	702167527
566	KAMPUS, Aytoun Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3GP, United Kingdom	53.47733	-2.23425	Kampus, Apt 1001, 44 Aytoun Street, Manchester, Greater Manchester, M1	703167527
567	Red Light, Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47752	-2.2353	Kampus, Apt 104 Minshul House, 4 Little David Street, Manchester, Greater Manchester, M1	704167527
568	Trinity Way, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7GS, United Kingdom	53.48817	-2.25089	2 Marlstone Avenue, Salford, Greater Manchester, M3 7GS	705167527
569	One New Bailey, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5JL, United Kingdom	53.48215	-2.25484	Stanley Street, Manchester, Greater Manchester, M3	706167527
570	Quartz Building, 7, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EX, United Kingdom	53.48043	-2.25687	Stanley Street, Manchester, Greater Manchester, M3	707167527
571	Graphite Building, 9, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5GU, United Kingdom	53.48025	-2.25733	Stanley Street, Manchester, Greater Manchester, M3	708167527
572	Quartz Building, 7, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EX, United Kingdom	53.48043	-2.25687	Stanley Street, Manchester, Greater Manchester, M3	709167527
573	One New Bailey, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5JL, United Kingdom	53.48215	-2.25484	Stanley Street, Manchester, Greater Manchester, M3	710167527
574	Quartz Building, 7, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EX, United Kingdom	53.48043	-2.25687	Stanley Street, Manchester, Greater Manchester, M3	711167527
575	Victoria Bridge, Victoria Bridge Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 1RH, United Kingdom	53.484985	-2.246211	Victoria Bridge Street, Salford, M3 5AS	712167527
576	Longford Cinema, 1122A, Chester Road, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M32 0HA, United Kingdom	53.44602	-2.305764	Edge Lane, Stretford, Manchester, M32	713167527
577	45, Windsor Road, Levenshulme, Manchester, Greater Manchester, England, M19 2EB, United Kingdom	53.444942	-2.196944	Windsor Road, Levenshulme, Manchester, M19	714167527
578	15A, Ellesmere Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4LZ, United Kingdom	53.47174	-2.261475	Ellesmere Street, Manchester	715167527
579	Waverton Avenue, The Four Heatons, Reddish, Stockport, Greater Manchester, England, SK4 5JT, United Kingdom	53.433811	-2.168646	Keswick Road, Heaton Chapel, Stockport, Greater Manchester, SK4	716167527
580	Wilmslow Road, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 2SN, United Kingdom	53.410981	-2.225465	Cedar House, Lakenheath Close, Didsbury, Greater Manchester, M20	717167527
581	Block 3 Spectrum, Blackfriars Road, Trinity, City Centre, Salford, Greater Manchester, England, M3 7BS, United Kingdom	53.486046	-2.25032	Spectrum Block 3, Blackfriars Road, Manchester City Centre, Salford, M3	718167527
582	St. Davids Court, Sherborne Street, Strangeways, Manchester, Greater Manchester, England, M8 8ND, United Kingdom	53.4996	-2.241674	Sherborne Street, Manchester, M8	719167527
583	Kara Street, Weaste, Eccles, Salford, Greater Manchester, England, M6 5GB, United Kingdom	53.48434	-2.298071	Kara Street, Salford, M6	720167527
584	Royal Mail Manchester Sorting & Delivery Office, Oldham Road, Collyhurst, Manchester, Greater Manchester, England, M4 5HD, United Kingdom	53.487411	-2.227484	The Plaza, 1 Every Street, Ancoats, Manchester, M4	721167527
585	NV Building 2, 98, The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3BD, United Kingdom	53.473977	-2.293551	Media City, Michigan Point Tower D, 18 Michigan Avenue, Salford, M50	722167527
586	NV Building 2, 98, The Quays, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 3BD, United Kingdom	53.473994	-2.29355	Media City, Michigan Point Tower D, 18 Michigan Avenue, Salford, M50	723167527
587	Red Light, Little David Street, Gay Village, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.47752	-2.2353	Kampus Apt 103 Minto and Turner, 3 Little David Street, Manchester, Greater Manchester, M1	724167527
588	Michigan Point Tower B, 11, Michigan Avenue, Salford Quays, Salford, Greater Manchester, England, M50 2GY, United Kingdom	53.474473	-2.292378	Media City, Michigan Point Tower B, 11 Michigan Avenue, Salford, M50	725167527
589	University of Manchester Fallowfield Campus, 293, Wilmslow Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 6HD, United Kingdom	53.445805	-2.214957	Redshaw Close, Manchester, M14	726167527
590	South Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47217	-2.25155	Deansgate Square, Owen St, M15 4UG	727167527
591	Rupert Street, Reddish, Stockport, Greater Manchester, England, SK5 6DY, United Kingdom	53.436298	-2.162499	Margaret Street, Reddish	728167527
592	Teneriffe Street, Lower Broughton, Salford, Greater Manchester, England, M7 2XW, United Kingdom	53.49804	-2.25909	Canavan Way, New Broughton, Salford, Manchester, M7	729167527
593	1, Harter Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M1 6HY, United Kingdom	53.476917	-2.239664	Princess Street, Manchester, M1	730167527
594	Leegate Road, The Four Heatons, Heaton Moor, Stockport, Greater Manchester, England, SK4 4BJ, United Kingdom	53.42341	-2.191771	Milwain House, Stockport, SK4	731167527
595	Button Lane Primary School, Sealand Road, Northern Moor, Manchester, Greater Manchester, England, M23 0ND, United Kingdom	53.410896	-2.290244	Greenham Road, Manchester, M23	732167527
596	7, Muslin Street, Ordsall, Salford, Greater Manchester, England, M5 4NF, United Kingdom	53.480442	-2.268483	Muslin Street, Salford, M5	733167527
597	Jefferson Place, 1, Fernie Street, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4BL, United Kingdom	53.490703	-2.240297	Jefferson Place, 1 Fernie Street, Manchester	734167527
598	Great Northern Tower, 1, Watson Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M3 4EE, United Kingdom	53.477455	-2.248207	Watson Street, Manchester, Greater Manchester, M3	735167527
599	190, Water Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M3 4AU, United Kingdom	53.47497	-2.262778	Regent Road, Manchester, M3	736167527
600	Stretton Avenue, Mosley, Stretford, Trafford, Greater Manchester, England, M32 9SD, United Kingdom	53.455247	-2.327109	Stretton Avenue, Stretford, M32 9SD	738167527
601	Sandy Lane, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8TP, United Kingdom	53.438026	-2.270868	Flat 4 Fairhaven Court, 66 Sandy Lane, Manchester	739167527
602	Parkgate Avenue, Withington, Manchester, Greater Manchester, England, M20 3BZ, United Kingdom	53.43137	-2.233425	Parkgate House, Parkgate Avenue, Withington	740167527
603	Goodwin, 41, Potato Wharf, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4AR, United Kingdom	53.47503	-2.25955	Potato Wharf, Manchester, M3	741167527
604	Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 9JY, United Kingdom	53.51923	-2.272012	Bury New Road, Prestwich, Manchester, M25	742167527
605	1, Ellesmere Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 0SR, United Kingdom	53.442876	-2.269758	Egerton Road North, Manchester	743167527
606	Seymour Grove, Old Trafford, Trafford, Greater Manchester, England, M16 0LN, United Kingdom	53.45998	-2.27648	Paragon House 701 , 48 Seymour Grove	744167527
607	Basil Street, The Four Heatons, Heaton Norris, Stockport, Greater Manchester, England, SK4 1QL, United Kingdom	53.418106	-2.16667	Basil Street, Stockport	745167527
608	7, Firbeck Drive, Miles Platting, Manchester, Greater Manchester, England, M4 7JF, United Kingdom	53.485515	-2.21849	Firbeck Drive, Manchester, M4	746167527
609	Brentbridge Road, Withington, Manchester, Greater Manchester, England, M14 6AU, United Kingdom	53.43904	-2.23133	Yew Tree Road, Fallowfield	747167527
610	22, Mirabel Street, Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M3 1DY, United Kingdom	53.488122	-2.246187	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	748167527
611	Trinity Way, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7GS, United Kingdom	53.48817	-2.25089	Enigma, Uptown Riverside, Manchester, M3	749167527
612	Adelphi Wharf 2, 9, Adelphi Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 6FZ, United Kingdom	53.485889	-2.265043	Adelphi Wharf 2, 9 Adelphi Street, Salford, Greater Manchester, M3	750167527
613	Manor Road, Swinton Park, Swinton, Salford, Greater Manchester, England, M27 5GA, United Kingdom	53.502648	-2.337003	Manor Road, Swinton, Manchester, M27	751167527
614	Amos Street, Harpurhey, Manchester, Greater Manchester, England, M9 4WL, United Kingdom	53.509743	-2.205059	Amos Street, Manchester, M9	752167527
615	Ibis Budget Manchester Centre, 2, Pollard Street, New Islington, Miles Platting, Manchester, Greater Manchester, England, M4 7DB, United Kingdom	53.479334	-2.221983	Great Ancoats Street, Manchester, M4	753167527
616	Woden Street, Ordsall, Salford, Greater Manchester, England, M5 4UE, United Kingdom	53.47311	-2.265902	Downtown, Woden Street, Salford	754167527
617	59, School Lane, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 6WL, United Kingdom	53.417259	-2.226519	School Lane, Didsbury	755167527
618	Trinity Way, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7GS, United Kingdom	53.48817	-2.25089	Marlstone Avenu, Manchester, Greater Manchester, M3	756167527
619	Central Road, West Didsbury, Manchester, Greater Manchester, England, M20 4YA, United Kingdom	53.42869	-2.2385	19 Central Road, West Didsbury	757167527
620	Bland Road, Rainsough, Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 9WL, United Kingdom	53.520604	-2.276496	Bland Road, Manchester	758167527
621	Flint Building, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5GU, United Kingdom	53.47988	-2.25824	Novella, 15 Stanley Street	759167527
622	The Gallery, 26, Blackfriars Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5JS, United Kingdom	53.48395	-2.24861	The Gallery, Blackfriars Street, M3	760167527
623	Red Bank, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4HF, United Kingdom	53.491397	-2.238303	Lincoln Gate, 39 Red Bank, Green Quarter	761167527
624	The Manchu Wok, 4-6, Lane End Road, Burnage, Manchester, Greater Manchester, England, M19 1WA, United Kingdom	53.420627	-2.212763	Southpoint, 12 Lane End Road, Burnage	762167527
625	King Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7DZ, United Kingdom	53.486719	-2.25051	Fifty5ive, 55 Queen Street, Salford	763167527
626	Cleworth Street, Hulme, Manchester, Greater Manchester, England, M15 4YX, United Kingdom	53.470133	-2.263661	Oscar House First Floor, 1 Cleworth Street, Manchester	764167527
627	3, Arundel Street, St. Johns, Hulme, Manchester, Greater Manchester, England, M15 4JZ, United Kingdom	53.471923	-2.26009	St George`s Church, Manchester	765167527
628	45, Wyverne Road, Whalley Range, Manchester, Greater Manchester, England, M21 0ZN, United Kingdom	53.44033	-2.2616	Wyverne Road, Chorlton	766167527
629	City South, 39, City Road East, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4TD, United Kingdom	53.47182	-2.24944	City South, City Road East, M15	767167527
630	Prestwich Pharmacy, 40, Fairfax Road, Kirkhams, Prestwich, Bury, Greater Manchester, England, M25 1AY, United Kingdom	53.533668	-2.284184	Cedar Court, Prestwich	768167527
631	Northern Moor, Sale Road / at Sale Circle, Sale Road, Sale Circle, Northern Moor, Manchester, Greater Manchester, England, M23 0BY, United Kingdom	53.411	-2.27645	Sale Road, Northern Moor, Manchester	769167527
632	155, Brailsford Road, Ladybarn, Burnage, Manchester, Greater Manchester, England, M14 6PZ, United Kingdom	53.441202	-2.206642	Brailsford Road, Manchester, Greater Manchester, M14	770167527
633	14, Mayfield Road, Whalley Range, Manchester, Greater Manchester, England, M16 8FT, United Kingdom	53.45221	-2.25369	Mayfield Road, Whalley Range, M16 8FT	771167527
634	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.487146	-2.249484	Bankside Boulevard, Cortland at Colliers Yard, Salford, M3	772167527
635	Meadow Mill, Water Street, Portwood, Stockport, Greater Manchester, England, SK1 2BU, United Kingdom	53.417758	-2.152265	Meadow Mill, Stockport	773167527
636	Abito, 85, Greengate, Trinity, City Centre, Salford, Greater Manchester, England, M3 7ND, United Kingdom	53.48737	-2.24953	Bed - Bankside, M3	774167527
637	Garden Street, Barton upon Irwell, Eccles, Salford, Greater Manchester, England, M30 0EZ, United Kingdom	53.48013	-2.3408	Garden Street, Eccles, Salford, M30	775167527
638	18, Leftbank, Spinningfields, City Centre, Manchester, Greater Manchester, England, M3 3AJ, United Kingdom	53.48043	-2.25537	Leftbank, Spinningfields	776167527
639	William Jessop Court, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2NE, United Kingdom	53.479348	-2.225976	Thomas Telford Basin, Piccadilly, M1 2NH	777167527
640	J2 - Bellows, 12, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YN, United Kingdom	53.480226	-2.263242	Block A Railings, Shale Lane, M5	778167527
641	Hill Quays, 8, Commercial Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 4JQ, United Kingdom	53.472716	-2.250694	Hill Quays, 8 Commercial Road, Manchester, M15	779167527
642	142, Platt Lane, Fallowfield Triangle, Rusholme, Manchester, Greater Manchester, England, M14 7NZ, United Kingdom	53.45002	-2.22808	Platt Lane, Manchester, M14 5WH	780167527
643	Jackson's Moss Apartments, 149-151, Upper Chorlton Road, Old Trafford, Manchester, Greater Manchester, England, M16 7SH, United Kingdom	53.45362	-2.26605	Upper Chorlton Road, Manchester, Greater Manchester, M16	781167527
644	Palatine Road, Withington, Manchester, Greater Manchester, England, M20 3JJ, United Kingdom	53.429246	-2.232826	Palatine Road, Manchester, Greater Manchester, M20	782167527
645	Colebrook Drive, Moston, Manchester, Greater Manchester, England, M40 5LA, United Kingdom	53.50464	-2.19385	Colebrook Drive, Manchester, M40	783167527
646	Egerton Road/Mauldeth Road, Egerton Road, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6UE, United Kingdom	53.436025	-2.214941	Egerton Road, Fallowfield	784167527
647	Eccles Old Road, Seedley, Eccles, Salford, Greater Manchester, England, M6 8RD, United Kingdom	53.491725	-2.299698	Eccles Old Road, Salford	785167527
648	Lila Street, Harpurhey, Manchester, Greater Manchester, England, M9 4PY, United Kingdom	53.509556	-2.20432	Lila Street, Manchester, Greater Manchester, M9	786167527
649	58-106 The Edge, Clowes Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5ND, United Kingdom	53.483616	-2.248861	The Edge, Manchester	787167527
650	4, Greengate West, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7FP, United Kingdom	53.488052	-2.255143	Greengate West, Salford, M3	788167527
651	Affinity Living Riverside, 32, Quay Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5AP, United Kingdom	53.48242	-2.25206	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	789167527
652	Affinity Living Riverside, 32, Quay Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5AP, United Kingdom	53.48241	-2.25202	Affinity Living Riverside, Quay Street, Manchester, Greater Manchester, M3	790167527
653	Hill Street, Higher Broughton, Salford, Greater Manchester, England, M7 2DW, United Kingdom	53.50163	-2.26092	Great Cheetham Street West, Manchester, Greater Manchester, M7	791167527
654	The Briton's Protection, 50, Great Bridgewater Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5LE, United Kingdom	53.47515	-2.2472	Great Bridgewater Street, Manchester, Greater Manchester, M1	792167527
655	J2 - Bellows, 12, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YN, United Kingdom	53.480226	-2.263242	Block B Railings, Shale Lane, M5	793167527
656	Velvet Court, Granby Row, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AB, United Kingdom	53.47535	-2.2362	Salisbury House, Granby Row, Manchester, Greater Manchester, M1	794167527
657	Runcorn Street, Hulme, Manchester, Greater Manchester, England, M15 4YF, United Kingdom	53.46979	-2.26631	Trentham Street, Manchester, Greater Manchester, M15	795167527
658	Queen Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 7HD, United Kingdom	53.48548	-2.24862	Affinity Living Embankment West, New Kings Head Yard, Manchester, M3	796167527
659	Bridgewater Point, Ordsall Lane, Ordsall, Salford, Greater Manchester, England, M5 4UB, United Kingdom	53.47285	-2.26813	Bridgewater Point, Worrall Street, Salford, Greater Manchester, M5	797167527
660	2, Lower Byrom Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4AN, United Kingdom	53.47864	-2.2537	Rossetti Place, Lower Byrom Street Manchester M3	798167527
661	93, Braemar Road, Fallowfield, Manchester, Greater Manchester, England, M14 6PR, United Kingdom	53.4416	-2.20847	Braemar Road, Manchester	800167527
662	Victoria Grove, Withington, Manchester, Greater Manchester, England, M14 6AP, United Kingdom	53.4378	-2.22455	Victoria Road, Fallowfield, Manchester	801167527
663	Rusholme Place, Curry Mile, Chorlton-on-Medlock, Manchester, Greater Manchester, England, M14 5TE, United Kingdom	53.45793	-2.22586	Rusholme Place, Rusholme, Manchester	803167527
664	Sawmill Court, 3, Murray Street, Ancoats, Collyhurst, Manchester, Greater Manchester, England, M4 6BF, United Kingdom	53.484699	-2.22726	NQ North, Northern Quarter, Manchester, M4	805167527
665	J2 - Bellows, 12, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YN, United Kingdom	53.480226	-2.263242	Block B Railings, Shale Lane, M5	806167527
666	Broad Street, Pendleton, Salford, Greater Manchester, England, M6 5BY, United Kingdom	53.48954	-2.28074	Broad Street, Salford	807167527
667	Milton Place, Pendleton, Salford, Greater Manchester, England, M6 5RL, United Kingdom	53.48959	-2.27982	Milton Place, Salford	808167527
668	Milton Place, Pendleton, Salford, Greater Manchester, England, M6 5RL, United Kingdom	53.48959	-2.27982	Milton Place, Salford	809167527
707	35, Henrietta Street, Old Trafford, Trafford, Greater Manchester, England, M16 9JG, United Kingdom	53.46225	-2.26655	Henrietta Street,Manchester,M16 9JG	852167527
669	Grosvenor Casino, 5, Derwent Street, Ordsall, Salford, Greater Manchester, England, M5 4SW, United Kingdom	53.474829	-2.26499	Derwent Street, Salford, Greater Manchester, M5	810167527
670	Greenwood Road, Benchill, Wythenshawe, Manchester, Greater Manchester, England, M22 8NG, United Kingdom	53.396011	-2.266711	71 Greenwood Road, Wythenshawe	811167527
671	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	812167527
672	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	813167527
673	15, Langdale Avenue, Levenshulme, Manchester, Greater Manchester, England, M19 3NT, United Kingdom	53.44218	-2.18845	Langsdale Mews M19	814167527
674	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	815167527
675	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	816167527
676	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	817167527
677	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	818167527
678	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	819167527
679	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	820167527
680	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	821167527
681	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.4823	-2.26638	Hulme Street, Manchester, Greater Manchester, M5	822167527
682	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.4823	-2.26638	Hulme Street, Manchester, Greater Manchester, M5	823167527
683	Gorton Road, North Reddish, Reddish, Stockport, Greater Manchester, England, SK5 6NF, United Kingdom	53.449946	-2.157896	Gorton Road, Stockport, SK5	825167527
684	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	826167527
685	107-172 The Edge, Clowes Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5NE, United Kingdom	53.48377	-2.24951	The Edge, Salford, M3	827167527
686	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48194	-2.26653	Back Hulme Street, Manchester, Greater Manchester, M5	829167527
687	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.4823	-2.26638	Hulme Street, Manchester, Greater Manchester, M5	830167527
688	87, Chorlton Road, Hulme, Manchester, Greater Manchester, England, M15 4AP, United Kingdom	53.466467	-2.25768	Chorlton Road, Hulme, Manchester, M15	831167527
689	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.4823	-2.26638	Hulme Street, Manchester, Greater Manchester, M5	832167527
690	J2 - Bellows, 12, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YN, United Kingdom	53.47959	-2.26336	Bellows, Lockside Lane, M5	833167527
691	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47326	-2.28636	Anchorage Quay, Manchester, Greater Manchester, M50	834167527
692	Springfield Court, 2, Dean Road, Trinity, Lower Broughton, Salford, Greater Manchester, England, M3 7EH, United Kingdom	53.489028	-2.251749	Springfield Court, 2 Dean Road, Salford	835167527
693	Castlefield Viaduct, Castle Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4RU, United Kingdom	53.475231	-2.255339	360 Apartments, Rice Street, Manchester	836167527
694	Spinners Mill, 4, Hatter Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5FZ, United Kingdom	53.486741	-2.234003	Spinners Mill, 4 Hatter Street, Northern Quarter, Manchester, M4	837167527
695	J2 - Bellows, 12, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YN, United Kingdom	53.480226	-2.263242	Block B Railings, Shale Lane, M5	838167527
696	Seven Bro7hers Beerhouse, 1, Lockside Lane, New Maker Yards, Ordsall, Salford, Greater Manchester, England, M5 4YU, United Kingdom	53.4799	-2.262641	Middlewood Locks, M5	839167527
697	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3XE, United Kingdom	53.47389	-2.28591	Anchorage Quay, Manchester, Greater Manchester, M50	840167527
698	Broughton Lane, Lower Broughton, Salford, Greater Manchester, England, M7 1AL, United Kingdom	53.49651	-2.26119	180 Broughton Lane, Manchester, Greater Manchester, M7 1UF	841167527
699	Jones Bootmaker, 47, King Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 7AY, United Kingdom	53.48117	-2.24513	King Street, Manchester, Greater Manchester, M2	842167527
700	Wendover Road, Northern Moor, Wythenshawe, Manchester, Greater Manchester, England, M23 9JL, United Kingdom	53.40283	-2.30664	Wendover Road,M23 9JY	843167527
701	Dickenson Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M14 5HJ, United Kingdom	53.45246	-2.2171	Dickenson Road, Rusholme, Manchester, M14	844167527
702	Victoria Road, Sharston, Wythenshawe, Manchester, Greater Manchester, England, M22 4JS, United Kingdom	53.40654	-2.26004	Palatine Road,Manchester,M22 4JS	845167527
703	Bland Road, Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 9WG, United Kingdom	53.519458	-2.275028	Bland Road, Prestwich, M25	846167527
704	Stone Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NE, United Kingdom	53.47603	-2.25414	Duke Street, Manchester, Greater Manchester, M3	847167527
705	27, Leighton Road, Old Trafford, Manchester, Greater Manchester, England, M16 9WU, United Kingdom	53.45658	-2.27194	Leighton Road,Manchester,M16 9WU	850167527
708	Albert Avenue, Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 0LU, United Kingdom	53.5184	-2.26534	Albert Avenue, Prestwich, Manchester	853167527
709	Royal Mail South West Delivery Office, 11, Norton Street, Old Trafford, Manchester, Greater Manchester, England, M16 7QA, United Kingdom	53.45777	-2.26261	Darnley Street,Lancashire,M16 9NE	854167527
710	Sky Gardens, 7, Spinners Way, Hulme, Manchester, Greater Manchester, England, M15 4UX, United Kingdom	53.47098	-2.26179	Sky Gardens, Spinners Way, M15	855167527
711	5, Cambridge Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5GF, United Kingdom	53.47215	-2.24352	Square Gardens, Wilmott Street, Manchester, Greater Manchester, M15	856167527
712	Urmston Lane, Stretford, Trafford, Greater Manchester, England, M32 9DY, United Kingdom	53.445284	-2.325211	195 Urmston Lane, Manchester, M32	857167527
713	Christabel, 106, Dalton Street, Collyhurst, Manchester, Greater Manchester, England, M40 7EH, United Kingdom	53.493366	-2.226201	Christabel, 106 Dalton Street, Manchester, M40	858167527
714	Ainsdale Avenue, Broughton Park, Salford, Greater Manchester, England, M7 4LD, United Kingdom	53.5181	-2.25911	Ainsdale Avenue, Salford	859167527
715	Rowsley Grove, Reddish, Stockport, Greater Manchester, England, SK5 7AL, United Kingdom	53.435611	-2.161006	Rowsley Grove, Reddish , Stockport, SK5	860167527
716	Ashdale Crescent, Fairfield, Droylsden, Tameside, Greater Manchester, England, M43 6PT, United Kingdom	53.480534	-2.154597	Ashdale Crescent, Droylsden, Manchester, M43	861167527
717	Masson Place, 1, Hornbeam Way, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4AJ, United Kingdom	53.490645	-2.238952	Hornbeam Way, Green Quarter, Manchester, M4	862167527
718	Vox, 1, Trentham Street, Hulme, Manchester, Greater Manchester, England, M15 4YG, United Kingdom	53.46998	-2.266	Trentham Street, Manchester, Greater Manchester, M15	863167527
719	Woden Street, Ordsall, Salford, Greater Manchester, England, M5 4YF, United Kingdom	53.472684	-2.266424	Woden Street, Salford	864167527
720	Alto, 5, Red, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 2AL, United Kingdom	53.47404	-2.29947	High Definition, 5 Red Mediacityuk M50	865167527
721	Reginald Street, Peel Green, Worsley, Salford, Greater Manchester, England, M30 7DJ, United Kingdom	53.475833	-2.36965	Thorp Street, Eccles	866167527
722	Haydn Avenue, Moss Side, Manchester, Greater Manchester, England, M14 4DH, United Kingdom	53.457092	-2.233269	30 Haydn Avenue, ,	867167527
723	Lancaster House, 71, Whitworth Street West, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 6LQ, United Kingdom	53.475436	-2.238704	Lancaster House, Whitworth Street	868167527
724	Redcar Avenue, Withington, Manchester, Greater Manchester, England, M20 3DX, United Kingdom	53.43041	-2.2346	Redcar Avenue, Withington, M20	869167527
725	South Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47217	-2.25155	9 Owen Street Manchester M15	870167527
726	Flint Building, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5GU, United Kingdom	53.480216	-2.258002	Novella, Stanley Street, Salford	871167527
727	Collingwood Drive, Swinton Park, Pendlebury, Salford, Greater Manchester, England, M27 5LE, United Kingdom	53.505162	-2.325356	Collingwood Drive, Swinton, Manchester, Greater Manchester, M27 5LE	872167527
728	Gordon Avenue, Levenshulme, Manchester, Greater Manchester, England, M19 3WT, United Kingdom	53.441982	-2.186971	Langdale Avenue, Manchester	873167527
729	South Tower, 9, Owen Street, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4YB, United Kingdom	53.47217	-2.25155	South Tower, Deansgate Square	875167527
730	Durant Street, Medieval Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4AL, United Kingdom	53.4887	-2.233184	15 Ludgate Hill, Manchester, M4 4AL	876167527
731	Lumiere Building, 38, City Road East, New Jackson, City Centre, Manchester, Greater Manchester, England, M15 4TD, United Kingdom	53.47208	-2.24989	Lumiere, Castlefield, M15	877167527
732	Karak Chaai, 104, Wilmslow Road, Curry Mile, Rusholme, Manchester, Greater Manchester, England, M14 5AJ, United Kingdom	53.453447	-2.223847	Hill Street, Manchester, Greater Manchester, M20	878167527
733	Castlefield Bridge, Trinity Way, Ordsall, Salford, Greater Manchester, England, M5 4XP, United Kingdom	53.47777	-2.262085	Wilburn Basin, Block A, Ordsall Lane, Salford, M5	880167527
734	New Islington Spa, 166, Oldham Road, Collyhurst, Manchester, Greater Manchester, England, M4 6BQ, United Kingdom	53.487227	-2.225958	Oldham Road, Manchester, M4	881167527
735	Castlefield Bridge, Trinity Way, Ordsall, Salford, Greater Manchester, England, M5 4XP, United Kingdom	53.47777	-2.262085	Wilburn Basin, Block A, Ordsall Lane, Salford, M5	882167527
736	BBC, Pink, MediaCityUK, Salford Quays, Eccles, Salford, Greater Manchester, England, M50 2LH, United Kingdom	53.47305	-2.29811	Number One Media City UK Salford Quays M50	883167527
737	Kingsford Street, Seedley, Eccles, Salford, Greater Manchester, England, M5 5HU, United Kingdom	53.486282	-2.30679	Kingsford Street, Manchester, M5	884167527
738	1, Every Street, Ardwick, Manchester, Greater Manchester, England, M4 7LT, United Kingdom	53.478333	-2.218799	The Plaza, Ancoats	885167527
739	Vulcan Works, 2, Malta Street, Miles Platting, Manchester, Greater Manchester, England, M4 7BH, United Kingdom	53.480663	-2.218798	Vulcan Mill, Malta Street	886167527
740	Lausanne Road, Withington, Manchester, Greater Manchester, England, M20 3EU, United Kingdom	53.43626	-2.22816	Lausanne Road, Manchester, Greater Manchester, M20	887167527
741	30, Bendix Street, New Cross, Strangeways, Manchester, Greater Manchester, England, M4 5GJ, United Kingdom	53.48749	-2.23311	Bendix Street, Manchester, Greater Manchester, M4	888167527
742	Weld Road, Ladybarn, Burnage, Manchester, Greater Manchester, England, M14 6SQ, United Kingdom	53.4344	-2.21445	Parrs Wood Road, Manchester, Greater Manchester, M20	889167527
743	Talbot Road, Old Trafford, Stretford, Trafford, Greater Manchester, England, M16 0PG, United Kingdom	53.45942	-2.28581	Alexander House, Talbot road, Manchester, Greater Manchester, M16	890167527
744	86, St Ives Road, Fallowfield Triangle, Fallowfield, Manchester, Greater Manchester, England, M14 5WH, United Kingdom	53.45047	-2.22808	St. Ives Road, Manchester, Greater Manchester, M14	891167527
745	Stuart Street, Bradford, Manchester, Greater Manchester, England, M11 4TF, United Kingdom	53.485802	-2.19417	Stillwater Drive, Sport City, Manchester, M11	892167527
746	Trafford Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5JD, United Kingdom	53.47459	-2.248522	Whitworth Street West, Manchester	893167527
747	145, Butler Street, Miles Platting, Manchester, Greater Manchester, England, M4 7JD, United Kingdom	53.485752	-2.217881	Butler Street, Miles Platting	894167527
748	Block 6 Spectrum, Blackfriars Road, Trinity, City Centre, Salford, Greater Manchester, England, M3 7BS, United Kingdom	53.48575	-2.25073	Block 6 Spectrum, M3	895167527
749	Abberton Road, West Didsbury, Manchester, Greater Manchester, England, M20 1HQ, United Kingdom	53.43031	-2.23987	Abberton Road, M20	896167527
750	St Andrews Avenue, Barton upon Irwell, Eccles, Salford, Greater Manchester, England, M30 0FD, United Kingdom	53.481796	-2.341837	St Andrews Gardens, Eccles Fold, Manchester	897167527
751	Edale Street, Charlestown, Salford, Greater Manchester, England, M6 6BT, United Kingdom	53.497868	-2.279087	Romney Street, Salford,	898167527
752	Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M4 4LJ, United Kingdom	53.48748	-2.24073	New Vic, 103 Corporation Street, Manchester M4	899167527
753	Newcastle Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 6AE, United Kingdom	53.471124	-2.24562	Wilmott Street, Manchester, Greater Manchester, M15	900167527
754	Armitage Street, Barton upon Irwell, Eccles, Salford, Greater Manchester, England, M30 0GG, United Kingdom	53.480202	-2.355132	Armitage Street, Manchester	901167527
755	Granby House, Granby Row, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 7AR, United Kingdom	53.47499	-2.2359	Granby House, Granby Row, Manchester, M1	902167527
756	Parrs Wood Road, Ladybarn, Burnage, Manchester, Greater Manchester, England, M20 4RR, United Kingdom	53.428707	-2.216506	Parrs Wood Road, Fallowfield, Manchester, M20 4RQ	903167527
757	Cypress Place, 9, New Century Park, Green Quarter, Strangeways, Manchester, Greater Manchester, England, M4 4EE, United Kingdom	53.489762	-2.240247	Cypress Place, 9 New Century Park, Manchester, M4	904167527
758	Boundary Row, Bankside, Elephant and Castle, London Borough of Southwark, London, Greater London, England, SE1 8HP, United Kingdom	51.502168382426554	-0.10535915173487147	2-6 Boundary Row, London, SE1 8HP	\N
759	Via Massimo D'Azeglio, None, Torino, Piemonte, Italia	44.933143	7.540121	Web based Estate Agent	\N
760	Hills, Albert Street, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 0NJ, United Kingdom	53.484266	-2.3391974	Sentinel House, Albert Street, Eccles, Manchester, M30 0SS	\N
761	Stamford Street, Hale, Altrincham, Trafford, Greater Manchester, England, WA14 1EY, United Kingdom	53.38911	-2.34842	Kings House Stamford Street Altrincham WA14 1EX	\N
762	575-577, Stockport Road, Longsight, Manchester, Greater Manchester, England, M13 0RG, United Kingdom	53.45607334769262	-2.1994493668832895	588 Stockport Road Longsight Manchester M13 0RQ	\N
763	West Tower, 371, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LB, United Kingdom	53.47299	-2.25251	West Tower, Deansgate Square 371 Deansgate Manchester M15 4UP	\N
764	Monarch Solicitors, 156, Chapel Street, Blackfriars, City Centre, Manchester, Greater Manchester, England, M3 6BF, United Kingdom	53.48363	-2.25685	Citypoint 2, 156 Chapel Street, Manchester M3 6ES	\N
765	The Battered Cod, 4, Church Road, Gatley, Stockport, Greater Manchester, England, SK8 4NQ, United Kingdom	53.3927652	-2.2351292000000003	53a Church Road, Gatley, Cheadle, SK8 4NG	\N
766	Worsley Road/Moorside Road, Worsley Road, Dales Brow, Moorside, Swinton, Salford, Greater Manchester, England, M27 0AS, United Kingdom	53.5038399	-2.35539	Bank Chambers Worsley Road Worsley Manchester M27 0FW	\N
767	104, Stretford Road, First Street, Hulme, Manchester, Greater Manchester, England, M15 5JH, United Kingdom	53.46779979649123	-2.2479680789473684	Meridian Square Stretford Road Hulme Manchester M15 5JH	\N
768	St Peter's House, 233, Ashley Road, Hale, Altrincham, Trafford, Greater Manchester, England, WA15 9SS, United Kingdom	53.37556815345	-2.342941721622758	175 Ashley Road Hale WA15 9SD	\N
769	Co-op Food, 756, Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 2DW, United Kingdom	53.416421190181026	-2.231728105375664	722 Wilmslow Road, Didsbury, Manchester, M20 2DW	\N
770	Burgerum, 365, Chapel Street, Blackfriars, Lower Broughton, Salford, Greater Manchester, England, M3 5JT, United Kingdom	53.482848	-2.2639531	365 Chapel Street, Salford, M3 5JT	\N
771	Reeds Rains, 29, Whitworth Street West, First Street, City Centre, Manchester, Greater Manchester, England, M1 5ND, United Kingdom	53.4741096	-2.2451714	29 Whitworth Street West Manchester M1 5ND	\N
772	44, Aytoun Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 3GL, United Kingdom	53.4777430035588	-2.2338778368283165	Aytoun Street, Manchester, M1 3GL	\N
773	Porta Delivery, 20, Wenlock Road, Hoxton, London Borough of Hackney, London, Greater London, England, N1 7GU, United Kingdom	51.5305527	-0.0936459	20 Wenlock Road, London, N1 7GU	\N
774	One St Peter's Square, 1, St Peter's Square, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 3AE, United Kingdom	53.4774635	-2.243006846990335	One St Peter's Square Manchester M2 3DE	\N
775	Moorside Road, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 4DT, United Kingdom	53.415585928719295	-2.189786826961357	14 Moorside Road, Heaton Moor, Stockport, SK4 4DT	\N
776	NEXIS, 361, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LG, United Kingdom	53.4736826	-2.2515121	361 Deansgate, Manchester, M3 4LG	\N
777	3, Cambridge Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5BZ, United Kingdom	53.4726341	-2.24355025	B2 Chorlton Mill, Cambridge Street, Manchester, M1 5BY	\N
778	283, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4EW, United Kingdom	53.476220177777776	-2.2505764777777775	Goodwin Fish 261-263 Deansgate Manchester M3 4EW	\N
779	Costa, 306, Wilmslow Road, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6NS, United Kingdom	53.4411436	-2.2192412	306 Wilmslow Road, Manchester, M14 6LF	\N
780	Jordan Fishwick, 410-412, Barlow Moor Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8AD, United Kingdom	53.4415136	-2.2760625	410-412 Barlow Moor Road, Chorlton, Manchester, M21 8AD	\N
781	\N	\N	\N	7a Howick Place London SW1P 1DZ	\N
782	WeWork, 30, Churchill Place, Canary Wharf, London Borough of Tower Hamlets, London, Greater London, England, E14 5EU, United Kingdom	51.5040521	-0.0148848	30 Churchill Place, London, E14 5RE	\N
783	Castlefield Locks, 62, Ellesmere Street, Hulme, Manchester, Greater Manchester, England, M15 4QR, United Kingdom	53.4706721853277	-2.2644207733278665	27 Ellesmere Street, Hulme, Manchester, M15 4RU	\N
784	285, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4EW, United Kingdom	53.476148409963415	-2.2508423326028244	289 - 291 Deansgate, Manchester, M3 4EW	\N
785	Broadway, White Gate, Failsworth, Oldham, Greater Manchester, England, OL9 9NF, United Kingdom	53.521724250000005	-2.16570085	582 Broadway, Chadderton, Oldham OL9 9NF	\N
786	Jactin House, 24, Hood Street, Ancoats, Collyhurst, Manchester, Greater Manchester, England, M4 6WX, United Kingdom	53.484394449999996	-2.22796473147313	Jactin house 24 Hood Street Manchester M46WX	\N
787	Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 6UH, United Kingdom	53.41463	-2.23286	Suite 97, 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	\N
788	921,923,925a,927, Stockport Road, Levenshulme, Manchester, Greater Manchester, England, M19 3PZ, United Kingdom	53.44247843156818	-2.1903510378372752	967 Stockport Road, Levenshulme, Manchester, M19 3NP	\N
789	Oxid House, 78, Newton Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 1AL, United Kingdom	53.4832934	-2.2305887	Ground Floor, Oxid House, 78 Newton St, Manchester, M1 1AL	\N
790	Thornley Grove, 25, Whitworth Street West, First Street, City Centre, Manchester, Greater Manchester, England, M1 5ND, United Kingdom	53.4741183	-2.2453979	25 Whitworth Street West, Manchester, M1 5ND	\N
791	admove, 197-201, Manchester Road, Broadheath, Altrincham, Trafford, Greater Manchester, England, WA14 5NU, United Kingdom	53.4010546	-2.3526665	197-201 Manchester Road, Altrincham, WA14 5NU	\N
792	Black Sheep Coffee, 60, Spring Gardens, Central Retail District, City Centre, Manchester, Greater Manchester, England, M2 2BQ, United Kingdom	53.48012996	-2.24174336	Northspring Building, 70 Spring Gardens, Manchester, M2 2BQ	\N
793	Middlewood Street, Ordsall, Salford, Greater Manchester, England, M5 4YW, United Kingdom	53.47884101360276	-2.262658504229584	15 Middlewood Street, Salford, M5 4YW	\N
794	Smithdown Road, Allerton, Liverpool, Liverpool City Region, England, L15 5BA, United Kingdom	53.3890223798539	-2.915418068583713	605 Smithdown Road, Allerton, Liverpool, L15 5AG	\N
795	St James House, Pendleton Way, Pendleton, Salford, Greater Manchester, England, M6 5FW, United Kingdom	53.4906486	-2.2878759	Suite 11, 8th Floor, St James House, Pendleton Way, Salford, M6 5FW	\N
796	M&S Foodhall, 462, Bury New Road, Kirkhams, Prestwich, Bury, Greater Manchester, England, M25 3AN, United Kingdom	53.53397963978541	-2.286123589844378	503-505 Bury New Road, Prestwich, Manchester M25 1AD	\N
797	Us&Co Stratford, 11, Burford Road, Mill Meads, Stratford, London Borough of Newham, London, Greater London, England, E15 2ST, United Kingdom	51.5372847	-0.0006803	CityZEN Property Group, 11 Burford Road, London, E15 2ST	\N
798	Lucky Mama's, 565, Barlow Moor Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8AE, United Kingdom	53.44160561646268	-2.2764010972930278	424 Barlow Moor Road, Chorlton Cum Hardy, Manchester, M21 8AD	\N
799	22, St John Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4EB, United Kingdom	53.4778681	-2.2515156	22 St John Street, Manchester, Greater Manchester, M3 4EB	\N
800	The Anchorage, 1-4, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3YW, United Kingdom	53.47409138441552	-2.286061513838992	Anchorage Quay, Salford, M50 3BX	\N
801	Victoria Baths, Hathersage Road, Victoria Park, Rusholme, Manchester, Greater Manchester, England, M13 0FE, United Kingdom	53.4601468	-2.2164245	Flat 1, 32 Hathersage Road, Manchester, M13 0FE	\N
802	Lotus Thai Spa, 58, Swan Street, NOMA, Strangeways, Manchester, Greater Manchester, England, M4 5JU, United Kingdom	53.48601381428571	-2.2351422285714286	Swan Street House, Swan Street, Ancoats, Manchester, M4 5JU	\N
803	7, Nobel Way, Circle Square, City Centre, Manchester, Greater Manchester, England, M1 7FU, United Kingdom	53.4732566	-2.2381164	7 Nobel Way, Oxford Road, Manchester, M1 7FU	\N
804	The Royal Oak, 729, Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 6WF, United Kingdom	53.41628565	-2.2315142400694445	731 Wilmslow Road, Didsbury, Manchester, M20 6WF	\N
805	Cortland at Colliers Yard, 7, Bankside Boulevard, Trinity, City Centre, Salford, Greater Manchester, England, M3 7NB, United Kingdom	53.487280274517325	-2.2495817749064955	5 Bankside Boulevard, Salford, M3 7HD	\N
806	Spaces, 125, Deansgate, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M3 2BY, United Kingdom	53.48022805	-2.248032890777097	125 Deansgate, Manchester, M3 2LH	\N
807	Bridgfords, 21, Albion Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5DA, United Kingdom	53.4743476	-2.2477549	The Hacienda 21 Albion Street Manchester M1 5DA	\N
808	Rodwell Tower, 111, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2HY, United Kingdom	53.47937185	-2.2326337961255307	111 Piccadilly, Manchester, M1 2HY	\N
809	Wilmslow Road, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6NL, United Kingdom	53.44056121651332	-2.2195271064639854	314 Wilmslow Road Fallowfield Manchester M14 6XQ	\N
810	Roger Dean, 218, Finney Lane, Heald Green, Stockport, Greater Manchester, England, SK8 3QA, United Kingdom	53.3701077	-2.232292	218 Finney Lane, Heald Green, SK8 3QA	\N
811	Stockport Homes, 2, Edward Street, Shaw Heath, Stockport, Greater Manchester, England, SK1 3NQ, United Kingdom	53.40556035	-2.157757899761906	2 Edward Street, Stockport, SK1 3NQ	\N
812	Rose Lane, Mossley Hill, Liverpool, Liverpool City Region, England, L18 8AD, United Kingdom	53.379204599999994	-2.9154017	183 - 185 Rose Lane, Mossley Hill, Liverpool, L18 5EA	\N
813	Peter House, Oxford Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M1 5AN, United Kingdom	53.4770258	-2.2437623	3, 28 spaces, Peter House, Oxford Street, Manchester, M1 5AN	\N
814	Elkington Way, Horseshoe Farm, Alderley Edge, Cheshire East, England, SK9 7QW, United Kingdom	53.30785	-2.2349	Horseshoe Farm, Elkington Way, Alderley Edge, SK9 7GU	\N
815	Ascend, 241, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4EN, United Kingdom	53.4773874	-2.2499035	241 Deansgate Manchester M3 4EN	\N
816	50, Barton Road, Winton, Worsley, Salford, Greater Manchester, England, M28 2EA, United Kingdom	53.49803	-2.37821	Suite 4, The Granary, Worsley, Manchester, M28 2EB	\N
817	Wilmslow Road, Withington, Manchester, Greater Manchester, England, M20 4BW, United Kingdom	53.433543900000004	-2.2286931	416 Wilmslow Road, Withington, Manchester M20 3BW	\N
818	Reside, 249, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4EN, United Kingdom	53.4771436	-2.25005	249 Deansgate, Manchester, M3 4EN	\N
819	Kabel House, 15, Quay Street, Spinningfields, City Centre, Manchester, Greater Manchester, England, M3 3HN, United Kingdom	53.47844578	-2.2510693600000002	St John's Court 19B Quay Street, Manchester, M3 3HN	\N
820	52, Port Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 2EQ, United Kingdom	53.4818346	-2.2320209	52 Port Street, Northern Quarter, Manchester, M1 2EQ	\N
821	Stevenson Whyte, 3-9, Duke Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4NF, United Kingdom	53.476207548828064	-2.2543061669638926	3-5 Duke Street, Manchester, M3 4NF	\N
822	896, Stockport Road, Levenshulme, Manchester, Greater Manchester, England, M19 3BP, United Kingdom	53.44529225	-2.191779913200717	896 Stockport Road, Levenshulme, Manchester, M19 3AD	\N
823	Kingsdene, 257, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4EN, United Kingdom	53.4769024	-2.2501879	257 Deansgate, Manchester, M3 4EN	\N
824	Viceroy Court, Grange Lane, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 6RW, United Kingdom	53.41544445	-2.2317171	757 to 759, Wilmslow Road, Manchester, Lancashire, M20 6RN	\N
825	Peter, 45, Ashby Square, Loughborough, Charnwood, Leicestershire, England, LE11 5AA, United Kingdom	52.77220821086562	-1.2093841264909808	202 Ashby Square, Loughborough, LE11 5AA	\N
826	Hulme Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 6AA, United Kingdom	53.47143	-2.2449	5 Botanic Avenue, Manchester, M15 6AA	\N
827	Gloucester Street, First Street, City Centre, Manchester, Greater Manchester, England, M1 5NG, United Kingdom	53.4738789	-2.24467485	68 Arches Whitworth Street West Manchester M1 5WQ	\N
828	321, Deansgate, St. Johns, City Centre, Manchester, Greater Manchester, England, M3 4LQ, United Kingdom	53.474995593476855	-2.2515231839928407	332-334 Deansgate, Manchester, M3 4LY	\N
829	Co-op Food, 756, Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 2DW, United Kingdom	53.416421190181026	-2.231728105375664	764b Wilmslow Road, Didsbury, Manchester, M20 2DR	\N
830	The Chu's, 436, Palatine Road, Northenden, Manchester, Greater Manchester, England, M22 4JS, United Kingdom	53.40680844868527	-2.2603503385321524	372 Palatine Road, Manchester, M22 4FZ	\N
831	Lapwing Lane, West Didsbury, Manchester, Greater Manchester, England, M20 2NS, United Kingdom	53.42666399859903	-2.2388286915022286	20a Lapwing Lane, West Didsbury, Manchester, M20 2WS	\N
832	One Cutting Room Square, 16, Hood Street, Ancoats, Collyhurst, Manchester, Greater Manchester, England, M4 6WX, United Kingdom	53.48420563333333	-2.2285280333333333	Jactin House 24 Hood Street Ancoats Urban Village Manchester M4 6WX	\N
833	Manchester Town Hall, Albert Square, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 5DB, United Kingdom	53.4794892	-2.2451148	Manchester	\N
834	The Tanning Shop, 49, Pinfold Street, Chinese Quarter, Edgbaston, Park Central, Birmingham, West Midlands, England, B2 4AY, United Kingdom	52.479231	-1.9019561833333332	Suite 142 51 Pinfold Street Birmingham B2 4AY	\N
835	Monton Green, Dales Brow, Monton, Eccles, Salford, Greater Manchester, England, M30 9LW, United Kingdom	53.493114938454674	-2.3517462220064345	25-27 Monton Green, Monton, Eccles, Manchester, M30 9LL	\N
836	Garden Lane, Trinity, City Centre, Salford, Greater Manchester, England, M3 7FJ, United Kingdom	53.4860354345943	-2.2530564021796637	Unit 1 2 Garden Lane Salford M3 7FJ	\N
837	The Greenfinch, 108, Palatine Road, West Didsbury, Manchester, Greater Manchester, England, M20 3ZA, United Kingdom	53.4252581	-2.2370429	Wren House 108 Palatine Road, Didsbury, Manchester, M20 3ZA	\N
838	Bytemark Hosting, 5, Archway, Hulme, Manchester, Greater Manchester, England, M15 5RL, United Kingdom	53.4644814	-2.24634135	Karsons Lettings Innospace, 2nd Floor, Turing House, 5 Archway, Manchester M15 5RL	\N
839	Market Street, Cheetham Fold, Hyde, Tameside, Greater Manchester, England, SK14 1ES, United Kingdom	53.450069799999994	-2.0785246500000003	104-106 Market Street, Hyde, SK14 1ES	\N
840	Marriott, Water Street, Castlefield, City Centre, Manchester, Greater Manchester, England, M3 4JQ, United Kingdom	53.478987123676596	-2.2568586019381467	Water Street, Manchester, M3 4JQ	\N
841	AcuSpa, 50, Bridge Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M3 3BW, United Kingdom	53.4810024	-2.2495638	50 Bridge Street, Manchester, M3 3BW	\N
842	Viceroy Court, Grange Lane, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 6RW, United Kingdom	53.41544445	-2.2317171	Elm House, 739 Wilmslow Road, Manchester, M20 6RN	\N
843	Aubergine Distinctive Catering, 53, Church Road, Gatley, Stockport, Greater Manchester, England, SK8 4NG, United Kingdom	53.391234684727216	-2.237920324161755	46 Church Road Gatley SK8 4NQ	\N
844	Chapel Street, Dukinfield, Tameside, Greater Manchester, England, SK16 4DW, United Kingdom	53.47745	-2.09174	Suite 2, The Old Court House, Chapel Street, Dukinfield, SK16 4DT	\N
845	Chester Road, Old Trafford, Trafford, Greater Manchester, England, M15 4EX, United Kingdom	53.46948726333746	-2.265813029810347	Chester Road Manchester, M15 4YH	\N
846	Via Massimo D'Azeglio, None, Torino, Piemonte, Italia	44.933143	7.540121	Covering Manchester	\N
847	Dickenson Road, Victoria Park, Longsight, Manchester, Greater Manchester, England, M13 0YL, United Kingdom	53.453889275	-2.212203625	Anson Parade, 161a Dickenson Road, Rusholme, Manchester, M14 5HZ	\N
848	Bishops Corner, 321, Stretford Road, First Street, Hulme, Manchester, Greater Manchester, England, M15 4UW, United Kingdom	53.46702953333333	-2.249969683333333	Unit 1, Bishops Corner 32 Stretford Road, Hulme, Manchester, M15 4UW	\N
849	Lower Burnham Road, Purleigh, Maldon, Essex, England, CM3 6HQ, United Kingdom	51.65579	0.69952	Marsh Farm House Lower Burnham Road Latchingdon CM3 6HQ	\N
850	The Quays, Salford Quays, Salford, Greater Manchester, England, M50 3BT, United Kingdom	53.475522691047104	-2.286658415021554	The Quays, Salford, M50 3SF	\N
851	Travelodge, 22, Great Ancoats Street, Central Retail District, Strangeways, Manchester, Greater Manchester, England, M4 5AZ, United Kingdom	53.484247422708634	-2.231924472678766	6-14 Great Ancoats Street, Manchester, M4 5AZ	\N
852	Didsbury Road, The Four Heatons, Heaton Mersey, Cheadle, Stockport, Greater Manchester, England, SK4 3BT, United Kingdom	53.41235185419524	-2.2047535331954746	450 Didsbury Road Stockport SK4 3BS	\N
853	Jordan Fishwick, 95-97, School Road, Brooklands, Sale, Trafford, Greater Manchester, England, M33 7XA, United Kingdom	53.425586590252145	-2.3247970807881257	81-83 School Road, Sale, M33 7XA	\N
854	Back Hulme Street, Blackfriars, Ordsall, Salford, Greater Manchester, England, M5 4PL, United Kingdom	53.48212596946871	-2.2666734825253143	11 Back Hulme Street, Salford, M5 4QT	\N
855	One Stop, 180-182, Langworthy Road, Seedley, Eccles, Salford, Greater Manchester, England, M6 5PP, United Kingdom	53.48684844668365	-2.29482537092201	167 Langworthy Road, Salford, M6 5PW	\N
856	Bridgfords, 561, Barlow Moor Road, Chorlton-cum-Hardy, Manchester, Greater Manchester, England, M21 8AN, United Kingdom	53.441265200000004	-2.276378682002538	561 Barlow Moor Road, Chorlton, Manchester, M21 8AN	\N
857	Bury Old Road, Sedgley Park, Prestwich, Manchester, Greater Manchester, England, M25 0EX, United Kingdom	53.51636	-2.25222	Suite 8 Broadhurst House Bury Old Road, Salford, M7 4QX	\N
858	Poulton and Pulford, Chester, Cheshire West and Chester, England, CH4 9EP, United Kingdom	53.13657	-2.9211	First Fl, Kinnerton House Bell Meadow Business Park Park Lane Pulford CH4 9EP	\N
859	Co-op Food, 756, Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 2DW, United Kingdom	53.416421190181026	-2.231728105375664	713 Wilmslow Road, Didsbury, Manchester, M20 6RE	\N
860	Cousins Estate Agents, 754, Oldham Road, Hollinwood, Failsworth, Manchester, Greater Manchester, England, M35 9FE, United Kingdom	53.5169342	-2.1475018	754 Oldham Road, Failsworth, Oldham, M35 9FE	\N
861	Prestbury Court, Bridgewater Road, Walkden, Salford, Greater Manchester, England, M28 3JA, United Kingdom	53.52270808521865	-2.399516306849213	1 Bridgewater Road, Worsley, M28 3JE	\N
862	60, Moss Lane West, Hulme, Manchester, Greater Manchester, England, M15 5PD, United Kingdom	53.46000678829159	-2.2532759254569186	46 Moss Lane West Manchester M15 5FB	\N
863	Broadway, Weaste, Eccles, Salford, Greater Manchester, England, M50 2UE, United Kingdom	53.47529	-2.30593	Suite A, 2nd Floor, The Nest, Broadway, Salford, M50 2UE	\N
864	Northern Monkey, 8, Dantzic Street, Central Retail District, City Centre, Manchester, Greater Manchester, England, M4 2AD, United Kingdom	53.4849242	-2.2398917	8 Dantzic Street, Manchester, M4 2AD	\N
865	\N	\N	\N	1 Northumberland Avenue, Trafalgar Square, London, WC2N 5BW	\N
866	Northwood, 55-57, Mesnes Street, Scholes Village, Swinley, Wigan, Greater Manchester, England, WN1 1QX, United Kingdom	53.549374	-2.6318544	55-57 Mesnes Street, Wigan, WN1 1QX	\N
867	Cotton Tree Street, Shaw Heath, Stockport, Greater Manchester, England, SK4 1BS, United Kingdom	53.40973	-2.16336	Suite B, 7th Floor, Beckwith House 1-3 Wellington Road Stockport SK4 1AF	\N
868	Brogden Terrace, Brooklands, Sale, Trafford, Greater Manchester, England, M33 7UF, United Kingdom	53.42	-2.33117	Simple Life Stafford Court, 145 Washway Road Sale M33 7PE	\N
869	Cheetham Street, Wardleworth, Rochdale, Greater Manchester, England, OL16 1DG, United Kingdom	53.61948703938918	-2.156843670955583	15b Cheetham Street, Rochdale, OL16 1DG	\N
870	66, Quay Street, Spinningfields, City Centre, Manchester, Greater Manchester, England, M3 3EJ, United Kingdom	53.4790613	-2.2533179	The Good Estate Agency, 68 Quay Street, Manchester, M3 3EJ	\N
871	22, Lloyd Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 5WA, United Kingdom	53.4790287	-2.2466045	22 Lloyd Street, Manchester, M2 5WA	\N
872	Vitalspace, 22, Flixton Road, Davyhulme, Urmston, Trafford, Greater Manchester, England, M41 5AA, United Kingdom	53.4485774	-2.3543878	22 Flixton Road Urmston M41 5AA	\N
873	Michigan Point Tower A, 9, Michigan Avenue, Salford Quays, Salford, Greater Manchester, England, M50 2GY, United Kingdom	53.4743883	-2.291680407682188	9 Michigan Avenue, Salford, M50 2HA	\N
874	Manchester Apartments, 60, Oxford Street, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 5EE, United Kingdom	53.4750152	-2.2417109	60 Oxford Street, Manchester, M1 5EE	\N
875	Alcock House, Dearmans Place, Trinity, City Centre, Salford, Greater Manchester, England, M3 5DZ, United Kingdom	53.4841466	-2.2515864	Alcock House, 99 Chapel Street, Salford, M3 5DZ	\N
876	323, Wilmslow Road, Fallowfield, Manchester, Greater Manchester, England, M14 6NW, United Kingdom	53.441613849999996	-2.2184498784504143	323 Wilmslow Road, Fallowfield, Manchester, M14 6NW	\N
877	Roger + Grahame Hairdressing, 10a, Newton Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2AN, United Kingdom	53.481096019999995	-2.23371356	2nd Floor, 8-16 Newton Street, Manchester, M1 2AN	\N
878	M&S Foodhall, 462, Bury New Road, Kirkhams, Prestwich, Bury, Greater Manchester, England, M25 3AN, United Kingdom	53.53397963978541	-2.286123589844378	493 Bury New Road, Prestwich, Manchester, M25 1AD	\N
879	The Real Camera Co, 7, Dale Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 1JA, United Kingdom	53.4821306	-2.2346353	Sevendale House, 7 Dale Street, Manchester, M1 1JA	\N
880	Poundstretcher, 16, Saltergate, Stonegravels, Tapton, Chesterfield, Derbyshire, East Midlands, England, S40 1UT, United Kingdom	53.2371719	-1.4264825	Office 4, Northern Gateway, Enterprise Centre, Saltergate, Chesterfield, S40 1UT	\N
881	Heywood Way, Pendleton, Salford, Greater Manchester, England, M6 5RQ, United Kingdom	53.4877463	-2.2891921	Salford	\N
882	The Eccles Cross, 13, Regent Street, Ellesmere Park, Eccles, Manchester, Greater Manchester, England, M30 0BP, United Kingdom	53.48322309669741	-2.334340513032393	52 Regent Street, Eccles, Manchester, M30 0BP	\N
883	Village News, 138, Ford Road, Overchurch Hill, Upton, Wirral, Liverpool City Region, England, CH49 0TQ, United Kingdom	53.38505425	-3.0982668899999997	118 Ford Road, Upton Village, Wirral CH49 0TQ	\N
884	Main & Main, 198, Finney Lane, Heald Green, Stockport, Greater Manchester, England, SK8 3QA, United Kingdom	53.3700333	-2.2312749	198 Finney Lane, Heald Green, Cheadle, SK8 3QA	\N
885	The Green Rooms, Blue, MediaCityUK, Weaste, Eccles, Salford, Greater Manchester, England, M50 2AH, United Kingdom	53.4728	-2.30165	Leader House, Blue Media City, Salford, M50 2AG	\N
886	Manchester Metropolitan University – All Saints Campus, Moran Walk, Hulme, Manchester, Greater Manchester, England, M15 6GA, United Kingdom	53.47199355	-2.241583	Office 2,8 Chester Street, Manchester, M1 5GE	\N
887	Apex House, 266, Moseley Road, Levenshulme, Manchester, Greater Manchester, England, M19 2LH, United Kingdom	53.4424222997565	-2.2029112599936775	268 Moseley Road, Levenshulme, Manchester, M19 2LH	\N
888	Merchants Quay, Ordsall, Salford, Greater Manchester, England, M50 3ST, United Kingdom	53.4688042	-2.284183	Unit 301 The Junction Merchants Quay, Salford, M50 3SG	\N
889	Gooey, 37, Ducie Street, Piccadilly, City Centre, Manchester, Greater Manchester, England, M1 2JW, United Kingdom	53.480467275	-2.22871675	Townhouse, 117 Ducie House, Ducie Street, Manchester, M1 2JW	\N
890	Oakland House, Talbot Road, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M16 0PQ, United Kingdom	53.460035	-2.2837841	209-210 Oakland House Talbot Road, Stretford, Manchester, M16 0PQ	\N
891	The Real Camera Co, 7, Dale Street, Northern Quarter, City Centre, Manchester, Greater Manchester, England, M1 1JA, United Kingdom	53.4821306	-2.2346353	Sevendale house, 7 Dale Street, Manchester, M1 1JA	\N
892	Julian Wadden, 81-83, Wellington Road South, Shaw Heath, Stockport, Greater Manchester, England, SK1 3SL, United Kingdom	53.4068083	-2.1594652	81-83 Wellington Road South, Stockport, SK1 3SL	\N
893	The Local Launderette, 20, Bury New Road, Sedgley Park, Prestwich, Salford, Greater Manchester, England, M25 0LD, United Kingdom	53.518133366813395	-2.271700383511482	39, Bury New Road, Prestwich, Manchester, M25 9JY	\N
894	Market Street, Fairfield, Droylsden, Tameside, Greater Manchester, England, M43 7AR, United Kingdom	53.48021032487156	-2.145173703605485	116 Market Street, Droylsden, Manchester, M43 7AA	\N
895	Elm Grove, Parrs Wood, Didsbury, Manchester, Greater Manchester, England, M20 6PL, United Kingdom	53.416035557380496	-2.2308795994628268	3 Elm Grove, Didsbury, Manchester, M20 6PL	\N
896	Carpe diem, 27, Castle Street, St. Mildred's, Harbledown, Canterbury, Kent, England, CT1 2QD, United Kingdom	51.2760366	1.0757608	27 Castle Street, Canterbury, CT1 2PX	\N
897	John William Street, Ellesmere Park, Eccles, Salford, Greater Manchester, England, M30 0BL, United Kingdom	53.48522	-2.33763	7th floor, 1 City Approach, Albert Street, Eccles, M30 0BG	\N
898	Beis Mordechai, 90, King's Road, Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 0LQ, United Kingdom	53.51965	-2.26443	S&S Property Group 78a Kings Road Manchester M25 0FY	\N
899	BLANCONERO, 2, Anchorage Quay, Salford Quays, Salford, Greater Manchester, England, M50 3YJ, United Kingdom	53.4740901	-2.286663	2 Anchorage Quay, Salford, M50 3YW	\N
900	Costa, 306, Wilmslow Road, Ladybarn, Fallowfield, Manchester, Greater Manchester, England, M14 6NS, United Kingdom	53.44095231936922	-2.219172107127625	351 Wilmslow Road, Ladybarn, Manchester, M14 6XS	\N
901	Franco Manca, 37-43, King Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 7AT, United Kingdom	53.4812162	-2.2453696	37 King Street, Manchester, M2 7AT	\N
902	Colchester Business Park, Highwoods, Colchester, Essex, England, CO4 9YQ, United Kingdom	51.9236762	0.9214518	Purplebricks, 650 The Crescent Colchester Business Park, Colchester, United Kingdom CO4 9YQ	\N
903	Monton Road, Monton, Eccles, Salford, Greater Manchester, England, M30 9LF, United Kingdom	53.4920707991793	-2.353574673031767	222 Monton Road, Eccles, Manchester, M30 9LJ	\N
904	170, Holliday Street, Attwood Green, Calthorpe Fields, Park Central, Birmingham, West Midlands, England, B1 1TJ, United Kingdom	52.47520945	-1.9090963333333333	Ground Floor, 176 Holliday Street, Birmingham, B1 1TJ	\N
905	Spaces, 125, Deansgate, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M3 2BY, United Kingdom	53.48022805	-2.248032890777097	125 Deansgate, Manchester, M3 2LH	\N
906	Wags and Whiskers, Isle Lane, Calcott, Bicton, Shrewsbury, Shropshire, England, SY3 8DY, United Kingdom	52.7294483	-2.8099846	Unit 5, Bicton Business Park, Shrewsbury, SY3 8DY	\N
907	Randall Way, Hallcroft, Retford, Bassetlaw, Nottinghamshire, East Midlands, England, DN22 7GR, United Kingdom	53.3346858	-0.9614444809270528	Retford Enterprise Centre, Randall Way, Retford, DN22 7GR	\N
908	Building 2, 2, Exchange Quay, Ordsall, Salford, Greater Manchester, England, M5 3EB, United Kingdom	53.4664234	-2.2832514	Imperial Court 2 Exchange Quay Salford M5 3EB	\N
909	Speedwell Motorcycles, 79, Church Street West, Outwood Gate, Radcliffe, Bury, Greater Manchester, England, M26 2SX, United Kingdom	53.56049560457867	-2.3229355197418613	10-12 Church Street West, Radcliffe, Manchester M26 2SQ	\N
910	Delisa Miller, 44, Hulme High Street, Hulme, Manchester, Greater Manchester, England, M15 5JP, United Kingdom	53.4613097	-2.2484536	44 Hulme High Street, Hulme, Manchester, M15 5JP	\N
911	Ashton Road East, Holt Lane End, Hollins, Woodhouses, Oldham, Greater Manchester, England, M35 9PG, United Kingdom	53.50997342112695	-2.1482578182639416	61 Ashton Road East, Failsworth, Manchester, M35 9PW	\N
912	Carrera 10, Galán, Comunera, Santander, RAP Gran Santander, Colombia	6.6390723000000005	-73.29076293275591	Holland House 1-5, Oakfield, Sale, Cheshire, M33 6TT	\N
913	Jactin House, 24, Hood Street, Ancoats, Collyhurst, Manchester, Greater Manchester, England, M4 6WX, United Kingdom	53.484394449999996	-2.22796473147313	Jactin House, 24 Hood Street, Manchester, M4 6WX	\N
914	Liveridge Hill, Beaudesert, Henley-in-Arden, Stratford-on-Avon, Warwickshire, England, B95 5QR, United Kingdom	52.30976125	-1.775956875	Brook House, Birmingham Road, Henley in Arden, B95 5QR	\N
915	Quartz Building, 7, Stanley Street, Trinity, City Centre, Salford, Greater Manchester, England, M3 5EX, United Kingdom	53.4804831	-2.256886216203922	7 Stanley Street, Salford, M3 5GB	\N
916	INTO Manchester, 58-60, Whitworth Street West, Petersfield, City Centre, Manchester, Greater Manchester, England, M1 6LT, United Kingdom	53.47515503333333	-2.240214933333333	58-60 Whitworth Street, Bridgewater House Manchester, M1 6LT	\N
917	SDL Group, 17, Regan Way, Chetwynd Business Park, Chilwell, City of Nottingham, Nottinghamshire, East Midlands, England, NG9 6RZ, United Kingdom	52.9080183	-1.2487087206360905	17 Regan Way, Toton, Nottingham, NG9 6RZ	\N
918	Barton Road, Gorse Hill, Stretford, Trafford, Greater Manchester, England, M32 8DN, United Kingdom	53.445538844268775	-2.313810428114241	133 Barton Road, Stretford, Manchester, M32 8DN	\N
919	Hyde Road, Crown Point, Kingston, Denton, Tameside, Greater Manchester, England, M34 3AF, United Kingdom	53.4562366	-2.1123616	66 Hyde Road, Denton, M34 3AG	\N
920	Hamza's, 920, Stockport Road, Levenshulme, Manchester, Greater Manchester, England, M19 3AB, United Kingdom	53.4446026813571	-2.1916058220655694	918 Stockport Road, Levenshulme, Manchester, M19 3AB	\N
921	Jones and Co Styling Opticians, 82, King Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 4WQ, United Kingdom	53.4808166	-2.243669	82 King Street, Manchester, M2 4WQ	\N
922	Woden Street, Ordsall, Salford, Greater Manchester, England, M5 4YE, United Kingdom	53.47334774936026	-2.266188188919014	Woden Street M5 4YE	\N
923	Jordan Fishwick, 95-97, School Road, Brooklands, Sale, Trafford, Greater Manchester, England, M33 7XA, United Kingdom	53.425586590252145	-2.3247970807881257	91-93 School Road, Sale, M33 7XA	\N
924	Olympic Way, Olympic Park, Poulton-with-Fearnhead, Warrington, England, WA2 0YL, United Kingdom	53.41191	-2.53727	12b Olympic Way Birchwood Warrington WA2 0YL	\N
925	Greggs, 45, School Road, Brooklands, Sale, Trafford, Greater Manchester, England, M33 7YE, United Kingdom	53.425248732807404	-2.322916825132502	98 School Road, Sale, M33 7XB	\N
926	Empress Business Park, Old Trafford, Trafford, Greater Manchester, England, M16 9EB, United Kingdom	53.46617	-2.26762	AiHOMES LTD, Empress Business Centre, 380 Chester Road, Manchester, M16 9EA	\N
927	Premier Residential Lettings, 16, Commercial Street, First Street, City Centre, Manchester, Greater Manchester, England, M15 4PZ, United Kingdom	53.4728222	-2.2503957	16 Commercial Street, Manchester, M15 4PZ	\N
928	Blackburn Street, Outwood Gate, Radcliffe, Bury, Greater Manchester, England, M26 1NQ, United Kingdom	53.55948562736968	-2.325754766107109	44 Blackburn Street, Radcliffe, M26 1NQ	\N
929	Kingsway, Ladybarn, Burnage, Manchester, Greater Manchester, England, M19 1AL, United Kingdom	53.432362219204016	-2.208053539558955	249 Kingsway, Burnage, Manchester, M19 1AL	\N
930	Leicester Road, Broughton Park, Salford, Greater Manchester, England, M7 4DA, United Kingdom	53.51012117635641	-2.252972865466485	19 Leicester Road Salford M7 4AS	\N
931	Smile Stylist, 53, King Street, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M2 4LQ, United Kingdom	53.481125	-2.2444198	53 King Street, Manchester, M2 4LQ	\N
932	Stony Dry Cleaners, 7 Swinfens Yard, High Street, Calverton End, Milton Keynes, City of Milton Keynes, England, MK11 1SY, United Kingdom	52.0557964	-0.8511345	19 London House, High Street, Stony Stratford, Milton Keynes, MK11 1SY	\N
933	Blackburn Street, Outwood Gate, Radcliffe, Bury, Greater Manchester, England, M26 1NQ, United Kingdom	53.55948562736968	-2.325754766107109	43 Blackburn Street, Radcliffe, M26 1NR	\N
934	Manchester Muslim Preparatory School, 551, Wilmslow Road, Withington, Manchester, Greater Manchester, England, M20 4BA, United Kingdom	53.43004564994718	-2.2281452569598184	509 Wilmslow Road, Withington, Manchester, M20 4BA	\N
935	\N	53.4800153	-2.2517994	No1 Spinningfields, Manchester, M3 3JE	\N
936	\N	53.46997945	-2.265949423048932	1 Trentham Street, Hulme, Manchester, M15 4YG	\N
937	\N	53.4759623	-2.2524863	33 Liverpool Road, Manchester, M3 4NQ	\N
938	\N	53.409545208263985	-2.161032161605044	2a Mersey Square Stockport SK1 1NU	\N
939	Fir Road, Bramhall Green, Woodsmoor, Bramhall, Stockport, Greater Manchester, England, SK7 2NP, United Kingdom	53.37235218048781	-2.159189850999666	8A Fir Road, Bramhall, SK7 2NP	\N
940	39, Great Ancoats Street, Strangeways, Manchester, Greater Manchester, England, M4 5AE, United Kingdom	53.48378351341219	-2.230821159406311	61 Great Ancoats Street, Manchester, M4 5AB	\N
941	Rochdale Road, Charlestown, Manchester, Greater Manchester, England, M9 6ER, United Kingdom	53.532033679648265	-2.2085035307747583	1170 Rochdale Road, Blackley, Manchester M9 6ER	\N
942	4-6, Anderson Place, Pilrig, Leith, City of Edinburgh, Alba / Scotland, EH6 5NP, United Kingdom	55.9708147	-3.181241475	Bonnington Bond, 2 Anderson Place, Edinburgh, EH6 5NP	\N
943	Bury New Road, Besses o' th' Barn, Whitefield, Bury, Greater Manchester, England, M45 6AA, United Kingdom	53.54617872546642	-2.2921433623184884	114 Bury New Road, Whitefield, M45 6AD	\N
944	Wilmslow Road, Heald Green, Stockport, Greater Manchester, England, SK8 3NP, United Kingdom	53.36089	-2.21754	Southgate Centre Two, 321 Wilmslow Road, Heald Green, Cheadle, SK8 3PW	\N
945	21, Bury Old Road, Sedgley Park, Prestwich, Bury, Greater Manchester, England, M25 0EX, United Kingdom	53.51882	-2.25911	2a Park Hill, Bury Old Road, Prestwich, Manchester, M25 0FX	\N
946	Reddish Road, Reddish, Stockport, Greater Manchester, England, SK5 7AQ, United Kingdom	53.4364326	-2.1591549	410 Reddish Road, Reddish, Stockport, SK5 7AA	\N
947	The Dragonfly, 60-62, Bradshawgate, Springfield, The Haulgh, Bolton, Greater Manchester, England, BL1 1DP, United Kingdom	53.578239955393634	-2.4265890562430643	2 - 10 Bradshawgate Bolton BL1 1DG	\N
948	\N	\N	\N	Covering London	\N
949	Wilmslow Road, Didsbury, Manchester, Greater Manchester, England, M20 6UH, United Kingdom	53.41463	-2.23286	Suite 47 792 Wilmslow Road, Didsbury, Manchester, M20 6UG	\N
950	Spaces, 125, Deansgate, Civic Quarter, City Centre, Manchester, Greater Manchester, England, M3 2BY, United Kingdom	53.48018095	-2.24802165	Unit 415 Spaces, 125 Deansgate, Manchester, M3 2BY	\N
951	Medieval Quarter, City Centre, Manchester, Greater Manchester, England, M4 4LJ, United Kingdom	53.48748	-2.24073	New Victoria, 103 Corporation Street, Manchester, M4 4DZ	\N
\.


--
-- Data for Name: properties_df; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."properties_df" ("id", "property_type", "bedrooms", "bathrooms", "rowid", "locations_df_sil_id", "agents_df_sil_id") FROM stdin;
1	Flat	2	1	1167527	1	1
2	Terraced	2	1	2167527	2	2
3	Terraced	2	1	3167527	3	3
4	Apartment	2	1	4167527	4	4
5	Terraced	2	1	5167527	5	5
6	Flat	2	1	6167527	6	6
7	Apartment	2	2	7167527	7	7
8	House Share	3	2	8167527	8	8
9	Apartment	2	2	9167527	9	9
10	Apartment	2	2	10167527	10	10
11	Apartment	3	3	11167527	11	11
12	Apartment	2	2	12167527	12	12
13	Penthouse	4	4	13167527	13	13
14	Terraced	2	1	14167527	14	14
15	Flat	1	1	15167527	15	15
16	Semi-Detached	4	3	16167527	16	16
17	Town House	3	2	17167527	17	17
18	Flat	1	1	18167527	18	18
19	Semi-Detached	3	1	19167527	19	19
20	Apartment	2	2	20167527	20	20
21	Semi-Detached	2	2	21167527	21	21
22	Flat	2	1	22167527	22	22
23	Flat	3	2	23167527	23	23
24	Flat	1	1	24167527	24	24
25	Flat	3	2	25167527	25	25
26	Unknown	1	1	126167527	26	26
27	Flat	1	1	127167527	27	27
28	Flat	1	1	128167527	28	28
29	Apartment	2	1	129167527	29	29
30	Semi-Detached	3	1	130167527	30	30
31	Apartment	2	2	131167527	31	31
32	Apartment	2	2	132167527	32	32
33	Flat	2	2	133167527	33	33
34	Apartment	2	2	134167527	34	34
35	Apartment	1	1	151167527	35	35
36	Flat	1	1	160167527	36	36
37	Flat	2	2	161167527	37	37
38	Studio	0	1	162167527	38	38
39	Flat	1	1	163167527	39	39
40	Flat	2	2	164167527	40	40
41	Flat	2	1	165167527	41	41
42	Flat	1	1	166167527	42	42
43	Flat	1	1	167167527	43	43
44	Semi-Detached	2	0	168167527	44	44
45	Apartment	1	1	169167527	45	45
46	Ground Flat	1	1	170167527	46	46
47	Apartment	0	1	171167527	47	47
48	Apartment	1	1	172167527	48	48
49	Apartment	1	1	173167527	49	49
50	Apartment	2	2	174167527	50	50
51	Apartment	2	2	175167527	51	51
52	Apartment	1	1	176167527	52	52
53	House Share	1	1	177167527	53	53
54	Semi-Detached	4	1	178167527	54	54
55	Semi-Detached	3	1	179167527	55	55
56	Apartment	2	1	180167527	56	56
57	Apartment	1	1	181167527	57	57
58	Apartment	1	1	182167527	58	58
59	Apartment	1	1	183167527	59	59
60	Terraced	3	3	184167527	60	60
61	Flat	2	2	185167527	61	61
62	Ground Flat	1	1	186167527	62	62
63	Apartment	1	1	187167527	63	63
64	Apartment	2	1	188167527	64	64
65	Apartment	2	2	189167527	65	65
66	Semi-Detached	3	1	190167527	66	66
67	Terraced	2	1	191167527	67	67
68	Apartment	2	2	192167527	68	68
69	Apartment	2	1	193167527	69	69
70	Apartment	1	1	194167527	70	70
71	Apartment	2	2	195167527	71	71
72	Flat	2	2	196167527	72	72
73	Semi-Detached	5	3	197167527	73	73
74	Flat	2	2	198167527	74	74
75	Apartment	2	1	199167527	75	75
76	Apartment	2	2	200167527	76	76
77	Apartment	2	2	201167527	77	77
78	Apartment	2	2	202167527	78	78
79	Apartment	2	2	203167527	79	79
80	Apartment	1	1	204167527	80	80
81	Apartment	1	1	205167527	81	81
82	Apartment	1	1	206167527	82	82
83	Apartment	2	2	207167527	83	83
84	Apartment	1	1	208167527	84	84
85	Flat	2	2	209167527	85	85
86	Terraced	6	6	210167527	86	86
87	Apartment	1	1	211167527	87	87
88	House	8	7	212167527	88	88
89	Apartment	1	1	213167527	89	89
90	Apartment	2	2	214167527	90	90
91	Flat	1	1	215167527	91	91
92	Semi-Detached	4	3	216167527	92	92
93	Apartment	2	1	217167527	93	93
94	Apartment	1	1	218167527	94	94
95	Studio	0	0	219167527	95	95
96	Flat	1	1	220167527	96	96
97	Flat	1	0	221167527	97	97
98	Flat	3	2	222167527	98	98
99	Flat	2	2	223167527	99	99
100	Flat	1	1	224167527	100	100
101	Flat	3	2	225167527	101	101
102	Apartment	2	2	226167527	102	102
103	Flat	3	2	227167527	103	103
104	Flat	2	2	228167527	104	104
105	Flat	2	2	229167527	105	105
106	Flat	2	1	230167527	106	106
107	Flat	2	2	231167527	107	107
108	Apartment	2	1	232167527	108	108
109	Flat	1	1	233167527	109	109
110	Flat	1	1	234167527	110	110
111	Flat	1	1	235167527	111	111
112	Apartment	3	2	236167527	112	112
113	Apartment	3	2	237167527	113	113
114	Apartment	2	2	238167527	114	114
115	Flat	1	1	239167527	115	115
116	Apartment	2	2	240167527	116	116
117	Flat	2	1	241167527	117	117
118	Detached	9	4	242167527	118	118
119	Apartment	2	0	243167527	119	119
120	Semi-Detached	2	0	244167527	120	120
121	Terraced	2	1	245167527	121	121
122	Apartment	2	2	246167527	122	122
123	Detached	10	4	247167527	123	123
124	Apartment	1	1	248167527	124	124
125	Flat	2	1	249167527	125	125
126	Apartment	2	2	250167527	126	126
127	Flat	1	1	251167527	127	127
128	Apartment	1	1	252167527	128	128
129	Terraced	3	2	253167527	129	129
130	Flat	2	2	254167527	130	130
131	Flat	2	2	255167527	131	131
132	Apartment	0	1	256167527	132	132
133	Flat	1	1	257167527	133	133
134	Apartment	2	2	258167527	134	134
135	Flat	2	2	259167527	135	135
136	Flat	2	2	260167527	136	136
137	Apartment	2	1	261167527	137	137
138	Terraced	2	1	262167527	138	138
139	House	2	1	263167527	139	139
140	Flat	1	1	264167527	140	140
141	Apartment	3	2	265167527	141	141
142	Flat	1	1	266167527	142	142
143	Apartment	1	1	267167527	143	143
144	Flat	3	2	268167527	144	144
145	Apartment	3	2	269167527	145	145
146	Flat	2	2	270167527	146	146
147	Apartment	2	1	271167527	147	147
148	Apartment	2	1	272167527	148	148
149	Apartment	2	2	273167527	149	149
150	Flat	2	2	274167527	150	150
151	Apartment	2	2	275167527	151	151
152	Apartment	1	1	276167527	152	152
153	House Share	1	2	277167527	153	153
154	Apartment	1	1	278167527	154	154
155	Apartment	2	2	279167527	155	155
156	House	2	1	280167527	156	156
157	Flat	2	2	281167527	157	157
158	Apartment	2	2	282167527	158	158
159	Flat	1	1	283167527	159	159
160	House	5	0	284167527	160	160
161	Apartment	1	1	285167527	161	161
162	Apartment	2	2	286167527	162	162
163	Apartment	2	2	287167527	163	163
164	Apartment	2	2	288167527	164	164
165	Apartment	1	1	289167527	165	165
166	Studio	0	1	290167527	166	166
167	Apartment	1	1	291167527	167	167
168	Apartment	1	1	292167527	168	168
169	Apartment	2	2	293167527	169	169
170	Flat	1	1	295167527	170	170
171	Apartment	2	2	296167527	171	171
172	Apartment	1	1	297167527	172	172
173	Apartment	3	2	298167527	173	173
174	Flat	1	1	299167527	174	174
175	Apartment	1	1	300167527	175	175
176	Studio	0	1	301167527	176	176
177	Apartment	2	2	302167527	177	177
178	Apartment	2	0	303167527	178	178
179	Flat	1	1	304167527	179	179
180	Flat	3	2	305167527	180	180
181	Flat	2	1	306167527	181	181
182	Flat	2	1	307167527	182	182
183	Flat	3	2	308167527	183	183
184	Flat	1	1	309167527	184	184
185	Flat	1	1	310167527	185	185
186	Apartment	1	1	311167527	186	186
187	Terraced	3	1	312167527	187	187
188	Apartment	2	1	313167527	188	188
189	Apartment	2	2	314167527	189	189
190	Flat	2	1	315167527	190	190
191	Semi-Detached	3	2	316167527	191	191
192	Semi-Detached	7	0	317167527	192	192
193	Apartment	2	0	318167527	193	193
194	Flat	2	2	319167527	194	194
195	Flat	2	1	320167527	195	195
196	Semi-Detached	3	1	321167527	196	196
197	Apartment	2	2	322167527	197	197
198	Apartment	1	1	323167527	198	198
199	Apartment	2	0	324167527	199	199
200	Flat	2	2	325167527	200	200
201	Semi-Detached	3	1	327167527	201	201
202	Apartment	2	2	328167527	202	202
203	Apartment	2	2	329167527	203	203
204	Apartment	2	2	330167527	204	204
205	Apartment	2	2	331167527	205	205
206	Apartment	2	2	332167527	206	206
207	Apartment	2	2	333167527	207	207
208	Apartment	3	3	334167527	208	208
209	Apartment	2	2	335167527	209	209
210	Apartment	1	1	337167527	210	210
211	Studio	0	1	338167527	211	211
212	Apartment	2	2	339167527	212	212
213	Apartment	2	2	340167527	213	213
214	Apartment	2	2	341167527	214	214
215	Apartment	2	0	342167527	215	215
216	Apartment	2	0	343167527	216	216
217	Studio	0	0	344167527	217	217
218	Studio	0	0	345167527	218	218
219	Studio	0	0	346167527	219	219
220	Apartment	2	2	347167527	220	220
221	Apartment	1	1	348167527	221	221
222	Apartment	2	1	349167527	222	222
223	Apartment	1	1	350167527	223	223
224	Apartment	2	1	351167527	224	224
225	Apartment	2	2	352167527	225	225
226	Apartment	2	2	353167527	226	226
227	Flat	1	1	354167527	227	227
228	Apartment	3	2	355167527	228	228
229	Terraced	2	1	356167527	229	229
230	Terraced	3	1	357167527	230	230
231	Apartment	2	2	358167527	231	231
232	House	6	2	359167527	232	232
233	House	6	2	360167527	233	233
234	House	6	2	361167527	234	234
235	House	1	1	362167527	235	235
236	House	6	2	363167527	236	236
237	House	5	2	364167527	237	237
238	House	3	1	365167527	238	238
239	House	5	2	366167527	239	239
240	Flat	4	2	367167527	240	240
241	House	3	1	368167527	241	241
242	House	4	2	369167527	242	242
243	House	3	1	370167527	243	243
244	House	5	2	371167527	244	244
245	Apartment	2	2	372167527	245	245
246	Apartment	1	1	373167527	246	246
247	Flat	2	1	374167527	247	247
248	House	4	2	375167527	248	248
249	Apartment	1	1	376167527	249	249
250	House	3	1	377167527	250	250
251	House	3	1	378167527	251	251
252	House	4	0	379167527	252	252
253	House	4	0	380167527	253	253
254	House	3	1	381167527	254	254
255	House	3	1	382167527	255	255
256	House	3	1	383167527	256	256
257	House	4	0	384167527	257	257
258	Apartment	2	2	385167527	258	258
259	House	7	2	386167527	259	259
260	House	3	2	387167527	260	260
261	Flat	1	1	388167527	261	261
262	House	4	0	389167527	262	262
263	Apartment	2	2	390167527	263	263
264	Apartment	2	1	391167527	264	264
265	Flat	2	2	392167527	265	265
266	Apartment	1	1	393167527	266	266
267	Flat	2	2	394167527	267	267
268	Flat	2	2	395167527	268	268
269	Flat Share	1	1	396167527	269	269
270	Terraced	3	1	397167527	270	270
271	Flat Share	1	1	398167527	271	271
272	Apartment	1	1	399167527	272	272
273	Flat Share	1	1	400167527	273	273
274	Flat Share	1	1	401167527	274	274
275	House	4	0	402167527	275	275
276	Flat Share	1	1	403167527	276	276
277	Terraced	3	1	404167527	277	277
278	Flat Share	1	1	405167527	278	278
279	Flat	2	2	406167527	279	279
280	Flat Share	1	1	407167527	280	280
281	Apartment	3	2	408167527	281	281
282	Terraced	2	1	409167527	282	282
283	Flat	2	1	410167527	283	283
284	Apartment	1	1	411167527	284	284
285	Apartment	1	1	412167527	285	285
286	Apartment	1	1	413167527	286	286
287	Flat	1	1	414167527	287	287
288	Apartment	2	2	415167527	288	288
289	Terraced	2	1	416167527	289	289
290	Apartment	1	0	417167527	290	290
291	Flat Share	1	1	418167527	291	291
292	Apartment	2	1	419167527	292	292
293	Apartment	2	2	420167527	293	293
294	Apartment	2	2	421167527	294	294
295	Apartment	2	1	422167527	295	295
296	Flat	1	1	423167527	296	296
297	Semi-Detached	3	1	425167527	297	297
298	Flat	1	1	426167527	298	298
299	Apartment	2	0	427167527	299	299
300	Apartment	2	2	428167527	300	300
301	Apartment	2	1	429167527	301	301
302	Semi-Detached	1	2	430167527	302	302
303	Apartment	1	1	431167527	303	303
304	Flat	1	1	432167527	304	304
305	Apartment	1	1	433167527	305	305
306	Flat	2	1	434167527	306	306
307	Apartment	2	2	435167527	307	307
308	Flat	2	2	436167527	308	308
309	Flat	2	2	437167527	309	309
310	Flat	2	1	438167527	310	310
311	Apartment	2	2	439167527	311	311
312	Terraced	3	1	440167527	312	312
313	Duplex	2	1	441167527	313	313
314	Terraced	2	1	442167527	314	314
315	Flat	2	1	443167527	315	315
316	Terraced	3	2	444167527	316	316
317	Duplex	3	1	445167527	317	317
318	Studio	0	1	446167527	318	318
319	Semi-Detached	5	5	447167527	319	319
320	Semi-Detached	3	1	448167527	320	320
321	Flat	1	1	449167527	321	321
322	House	4	2	450167527	322	322
323	Apartment	2	2	451167527	323	323
324	Flat	2	2	452167527	324	324
325	Apartment	2	1	453167527	325	325
326	Flat	2	1	454167527	326	326
327	Flat	2	1	455167527	327	327
328	Apartment	2	2	456167527	328	328
329	Apartment	3	2	457167527	329	329
330	Flat	3	2	458167527	330	330
331	Flat	0	1	459167527	331	331
332	Apartment	2	2	460167527	332	332
333	Flat	1	1	461167527	333	333
334	Apartment	2	2	463167527	334	334
335	Flat	1	1	464167527	335	335
336	Apartment	2	2	465167527	336	336
337	Apartment	1	1	466167527	337	337
338	Flat	2	2	467167527	338	338
339	Apartment	2	2	468167527	339	339
340	Studio	0	1	469167527	340	340
341	Flat	3	3	470167527	341	341
342	Flat	2	2	471167527	342	342
343	Flat	2	2	472167527	343	343
344	Flat	1	1	473167527	344	344
345	Flat	1	1	475167527	345	345
346	End of Terrace	2	1	476167527	346	346
347	Studio	0	1	477167527	347	347
348	Penthouse	1	1	478167527	348	348
349	Apartment	2	2	479167527	349	349
350	Apartment	2	2	480167527	350	350
351	Apartment	1	1	481167527	351	351
352	Apartment	1	1	482167527	352	352
353	Apartment	2	2	483167527	353	353
354	Studio	0	1	484167527	354	354
355	Flat	1	1	485167527	355	355
356	Flat	2	2	486167527	356	356
357	Terraced	2	1	487167527	357	357
358	Terraced	2	1	488167527	358	358
359	Apartment	2	2	489167527	359	359
360	Apartment	2	2	490167527	360	360
361	Terraced	3	1	491167527	361	361
362	House	3	1	492167527	362	362
363	Terraced	7	3	493167527	363	363
364	Flat	2	2	494167527	364	364
365	Flat	1	1	495167527	365	365
366	Terraced	4	2	496167527	366	366
367	End of Terrace	4	1	497167527	367	367
368	Flat	1	1	498167527	368	368
369	Apartment	1	1	499167527	369	369
370	Apartment	1	1	500167527	370	370
371	Apartment	1	1	501167527	371	371
372	Apartment	1	1	502167527	372	372
373	Apartment	1	1	503167527	373	373
374	Apartment	2	2	504167527	374	374
375	Apartment	2	2	505167527	375	375
376	Apartment	2	2	506167527	376	376
377	Apartment	2	2	507167527	377	377
378	Apartment	2	2	508167527	378	378
379	Duplex	3	2	509167527	379	379
380	Flat	2	2	510167527	380	380
381	Flat	2	2	511167527	381	381
382	Semi-Detached	6	2	512167527	382	382
383	House	2	1	513167527	383	383
384	House	6	2	514167527	384	384
385	House	6	2	515167527	385	385
386	House	7	2	516167527	386	386
387	House	7	2	517167527	387	387
388	House	4	1	518167527	388	388
389	Apartment	2	1	519167527	389	389
390	Semi-Detached	3	1	520167527	390	390
391	House	3	0	521167527	391	391
392	Flat	2	2	522167527	392	392
393	Penthouse	2	1	523167527	393	393
394	Flat Share	1	1	524167527	394	394
395	House	3	1	525167527	395	395
396	Semi-Detached	4	2	526167527	396	396
397	Semi-Detached	3	1	527167527	397	397
398	Apartment	2	1	528167527	398	398
399	Flat	1	1	626167527	399	399
400	Apartment	1	1	529167527	400	400
401	Town House	4	2	530167527	401	401
402	Apartment	2	2	531167527	402	402
403	1	1	1	532167527	403	403
404	Terraced	3	1	533167527	404	404
405	Terraced	2	1	534167527	405	405
406	Studio	0	1	535167527	406	406
407	Flat	2	2	536167527	407	407
408	Apartment	2	2	537167527	408	408
409	Semi-Detached	3	1	538167527	409	409
410	Studio	0	1	539167527	410	410
411	Flat	2	2	540167527	411	411
412	Apartment	3	3	541167527	412	412
413	Flat	2	2	542167527	413	413
414	Apartment	2	2	543167527	414	414
415	Studio	0	0	544167527	415	415
416	Apartment	2	2	545167527	416	416
417	Apartment	1	1	546167527	417	417
418	Apartment	3	1	547167527	418	418
419	House Share	1	1	548167527	419	419
420	Flat	3	2	549167527	420	420
421	Flat	3	2	550167527	421	421
422	Detached	3	2	551167527	422	422
423	Penthouse	3	3	552167527	423	423
424	Apartment	2	2	553167527	424	424
425	Apartment	1	1	554167527	425	425
426	Apartment	2	2	555167527	426	426
427	Apartment	2	0	556167527	427	427
428	Terraced	2	1	557167527	428	428
429	Apartment	3	2	558167527	429	429
430	Apartment	3	2	559167527	430	430
431	Apartment	3	2	560167527	431	431
432	Duplex	1	1	561167527	432	432
433	Apartment	3	2	562167527	433	433
434	Apartment	2	2	563167527	434	434
435	Apartment	1	1	564167527	435	435
436	Apartment	2	2	565167527	436	436
437	Flat	2	1	566167527	437	437
438	Apartment	1	1	567167527	438	438
439	Duplex	1	1	568167527	439	439
440	Apartment	1	1	569167527	440	440
441	Apartment	2	0	570167527	441	441
442	Apartment	2	2	571167527	442	442
443	Apartment	1	1	572167527	443	443
444	Terraced	3	2	573167527	444	444
445	Apartment	2	2	575167527	445	445
446	Apartment	1	1	576167527	446	446
447	Terraced	4	1	577167527	447	447
448	Flat	2	1	627167527	448	448
449	Apartment	2	2	578167527	449	449
450	Semi-Detached	6	2	580167527	450	450
451	House	2	2	581167527	451	451
452	Apartment	2	1	582167527	452	452
453	Terraced	2	3	583167527	453	453
454	Apartment	1	1	584167527	454	454
455	Terraced	2	2	585167527	455	455
456	Apartment	3	2	586167527	456	456
457	Semi-Detached	3	2	587167527	457	457
458	Flat	2	0	588167527	458	458
459	Duplex	2	2	589167527	459	459
460	Apartment	1	1	590167527	460	460
461	Apartment	1	1	591167527	461	461
462	Semi-Detached	3	1	592167527	462	462
463	Studio	0	1	593167527	463	463
464	Apartment	1	1	594167527	464	464
465	Apartment	1	0	595167527	465	465
466	Apartment	2	1	596167527	466	466
467	Terraced	2	1	597167527	467	467
468	Apartment	2	2	598167527	468	468
469	Flat	2	2	599167527	469	469
470	Terraced	2	1	600167527	470	470
471	Terraced	2	1	601167527	471	471
472	Semi-Detached	2	1	602167527	472	472
473	Detached	4	4	603167527	473	473
474	Apartment	2	1	604167527	474	474
475	Flat	0	0	605167527	475	475
476	Apartment	2	2	606167527	476	476
477	Apartment	2	2	607167527	477	477
478	Flat	1	0	608167527	478	478
479	House Share	6	0	609167527	479	479
480	Flat	2	2	611167527	480	480
481	Flat	2	2	612167527	481	481
482	Flat	2	2	613167527	482	482
483	Flat	1	1	614167527	483	483
484	Flat	2	1	615167527	484	484
485	Apartment	2	1	616167527	485	485
486	Apartment	2	1	617167527	486	486
487	Apartment	1	1	618167527	487	487
488	Flat	2	2	619167527	488	488
489	Flat	2	2	620167527	489	489
490	Apartment	1	1	621167527	490	490
491	Studio	0	1	622167527	491	491
492	Apartment	1	1	623167527	492	492
493	Studio	0	1	624167527	493	493
494	Flat	2	2	625167527	494	494
495	Flat	2	1	628167527	495	495
496	Semi-Detached	3	1	629167527	496	496
497	Flat	2	2	630167527	497	497
498	Flat	2	2	631167527	498	498
499	Flat	1	1	632167527	499	499
500	Apartment	1	1	633167527	500	500
501	Apartment	4	2	634167527	501	501
502	Semi-Detached	2	1	635167527	502	502
503	Semi-Detached	3	1	636167527	503	503
504	Flat	3	1	637167527	504	504
505	Apartment	1	1	638167527	505	505
506	Apartment	2	2	639167527	506	506
507	Apartment	1	0	640167527	507	507
508	Semi-Detached	4	3	641167527	508	508
509	Flat	3	1	642167527	509	509
510	Flat	1	0	643167527	510	510
511	Apartment	0	1	644167527	511	511
512	Apartment	1	1	645167527	512	512
513	Apartment	1	1	646167527	513	513
514	Flat	1	1	647167527	514	514
515	Apartment	2	1	648167527	515	515
516	Apartment	0	1	650167527	516	516
517	Flat	1	1	651167527	517	517
518	House Share	6	0	652167527	518	518
519	Apartment	1	1	653167527	519	519
520	Apartment	1	1	654167527	520	520
521	Flat	1	1	655167527	521	521
522	Terraced	3	1	656167527	522	522
523	Apartment	1	1	657167527	523	523
524	Terraced	2	1	658167527	524	524
525	Apartment	0	1	659167527	525	525
526	Apartment	2	2	660167527	526	526
527	House	2	1	661167527	527	527
528	Apartment	2	2	662167527	528	528
529	Apartment	2	2	663167527	529	529
530	Apartment	2	2	664167527	530	530
531	Flat	2	1	665167527	531	531
532	Apartment	2	0	666167527	532	532
533	Flat	2	1	667167527	533	533
534	Apartment	2	2	668167527	534	534
535	Flat	2	1	669167527	535	535
536	Apartment	1	1	670167527	536	536
537	House Share	1	2	671167527	537	537
538	House Share	1	1	672167527	538	538
539	Apartment	1	1	673167527	539	539
540	Apartment	1	1	675167527	540	540
541	Apartment	1	1	676167527	541	541
542	Apartment	2	1	677167527	542	542
543	Flat	2	1	678167527	543	543
544	Flat	1	1	679167527	544	544
545	Apartment	1	1	680167527	545	545
546	Semi-Detached	3	1	681167527	546	546
547	House	3	1	682167527	547	547
548	Apartment	1	1	683167527	548	548
549	Terraced	2	1	684167527	549	549
550	Apartment	1	1	685167527	550	550
551	Flat	1	1	686167527	551	551
552	Apartment	2	2	687167527	552	552
553	Terraced	2	1	688167527	553	553
554	Flat	1	1	689167527	554	554
555	Flat	2	1	690167527	555	555
556	Apartment	2	2	691167527	556	556
557	Semi-Detached	7	3	692167527	557	557
558	Flat Share	1	1	693167527	558	558
559	Apartment	1	0	694167527	559	559
560	Apartment	2	2	695167527	560	560
561	Apartment	2	2	696167527	561	561
562	Apartment	1	1	697167527	562	562
563	Flat	2	2	698167527	563	563
564	Apartment	1	1	700167527	564	564
565	Apartment	2	2	702167527	565	565
566	Apartment	1	1	703167527	566	566
567	Apartment	2	2	704167527	567	567
568	Apartment	1	1	705167527	568	568
569	Apartment	1	1	706167527	569	569
570	Apartment	1	1	707167527	570	570
571	Apartment	1	1	708167527	571	571
572	Apartment	1	1	709167527	572	572
573	Apartment	1	1	710167527	573	573
574	Apartment	1	1	711167527	574	574
575	Apartment	2	1	712167527	575	575
576	Flat	1	2	713167527	576	576
577	Flat	1	1	714167527	577	577
578	Town House	3	2	715167527	578	578
579	Semi-Detached	3	1	716167527	579	579
580	Apartment	1	1	717167527	580	580
581	Apartment	1	1	718167527	581	581
582	Flat	2	1	719167527	582	582
583	Terraced	2	1	720167527	583	583
584	Flat	3	2	721167527	584	584
585	Flat	2	2	722167527	585	585
586	Flat	2	2	723167527	586	586
587	Apartment	1	1	724167527	587	587
588	Flat	0	1	725167527	588	588
589	Terraced	7	4	726167527	589	589
590	Apartment	2	2	727167527	590	590
591	Terraced	2	1	728167527	591	591
592	Semi-Detached	3	2	729167527	592	592
593	Flat	2	1	730167527	593	593
594	Flat	1	1	731167527	594	594
595	Semi-Detached	3	1	732167527	595	595
596	Flat Share	1	2	733167527	596	596
597	Apartment	2	2	734167527	597	597
598	Apartment	2	2	735167527	598	598
599	Apartment	2	2	736167527	599	599
600	Semi-Detached	3	1	738167527	600	600
601	Ground Flat	1	1	739167527	601	601
602	Apartment	2	1	740167527	602	602
603	Town House	2	2	741167527	603	603
604	Flat	2	1	742167527	604	604
605	Apartment	1	1	743167527	605	605
606	Apartment	1	1	744167527	606	606
607	Terraced	2	1	745167527	607	607
608	Flat	2	1	746167527	608	608
609	Semi-Detached	5	2	747167527	609	609
610	Apartment	3	2	748167527	610	610
611	Apartment	2	2	749167527	611	611
612	Flat	1	1	750167527	612	612
613	Semi-Detached	3	1	751167527	613	613
614	Terraced	3	1	752167527	614	614
615	Apartment	2	2	753167527	615	615
616	Apartment	1	1	754167527	616	616
617	Terraced	2	1	755167527	617	617
618	Apartment	2	0	756167527	618	618
619	Flat	1	0	757167527	619	619
620	Bungalow	3	1	758167527	620	620
621	Apartment	1	1	759167527	621	621
622	Apartment	1	1	760167527	622	622
623	Studio	0	1	761167527	623	623
624	Apartment	2	2	762167527	624	624
625	Flat	1	1	763167527	625	625
626	Flat	1	1	764167527	626	626
627	Apartment	2	1	765167527	627	627
628	Semi-Detached	3	1	766167527	628	628
629	Apartment	2	2	767167527	629	629
630	Apartment	1	1	768167527	630	630
631	Flat	2	1	769167527	631	631
632	Terraced	4	1	770167527	632	632
633	Apartment	1	1	771167527	633	633
634	Apartment	1	1	772167527	634	634
635	Apartment	2	1	773167527	635	635
636	Apartment	1	1	774167527	636	636
637	Terraced	2	1	775167527	637	637
638	Apartment	2	2	776167527	638	638
639	Apartment	2	1	777167527	639	639
640	Apartment	2	2	778167527	640	640
641	Flat	2	0	779167527	641	641
642	4	4	1	780167527	642	642
643	Apartment	3	2	781167527	643	643
644	Flat	1	1	782167527	644	644
645	Flat	1	1	783167527	645	645
646	Terraced	9	2	784167527	646	646
647	House Share	1	1	785167527	647	647
648	Terraced	4	1	786167527	648	648
649	Apartment	2	2	787167527	649	649
650	House	3	1	788167527	650	650
651	Apartment	2	2	789167527	651	651
652	Apartment	2	2	790167527	652	652
653	Apartment	2	2	791167527	653	653
654	Apartment	2	2	792167527	654	654
655	Flat	1	1	793167527	655	655
656	Studio	0	1	794167527	656	656
657	Apartment	1	1	795167527	657	657
658	Apartment	3	1	796167527	658	658
659	Flat	3	2	797167527	659	659
660	Apartment	2	1	798167527	660	660
661	Terraced	6	2	800167527	661	661
662	Semi-Detached	8	3	801167527	662	662
663	Terraced	6	2	803167527	663	663
664	Apartment	2	1	805167527	664	664
665	Apartment	2	2	806167527	665	665
666	Apartment	5	5	807167527	666	666
667	Apartment	5	5	808167527	667	667
668	Apartment	5	5	809167527	668	668
669	Apartment	1	1	810167527	669	669
670	Apartment	2	1	811167527	670	670
671	Apartment	1	1	812167527	671	671
672	Apartment	2	2	813167527	672	672
673	Apartment	1	1	814167527	673	673
674	Apartment	1	1	815167527	674	674
675	Apartment	1	1	816167527	675	675
676	Apartment	2	2	817167527	676	676
677	Apartment	2	2	818167527	677	677
678	Apartment	2	2	819167527	678	678
679	Apartment	1	1	820167527	679	679
680	Apartment	2	2	821167527	680	680
681	Apartment	2	2	822167527	681	681
682	Apartment	2	2	823167527	682	682
683	Apartment	2	1	825167527	683	683
684	Apartment	1	1	826167527	684	684
685	Studio	0	1	827167527	685	685
686	Apartment	1	1	829167527	686	686
687	Apartment	1	1	830167527	687	687
688	Semi-Detached	3	2	831167527	688	688
689	Apartment	1	1	832167527	689	689
690	Flat	2	2	833167527	690	690
691	Apartment	2	2	834167527	691	691
692	Apartment	2	1	835167527	692	692
693	Apartment	1	1	836167527	693	693
694	Flat	2	2	837167527	694	694
695	Apartment	1	1	838167527	695	695
696	House	2	2	839167527	696	696
697	Apartment	3	3	840167527	697	697
698	House Share	3	0	841167527	698	698
699	Apartment	1	0	842167527	699	699
700	Semi-Detached	4	1	843167527	700	700
701	Flat	6	2	844167527	701	701
702	House	4	2	845167527	702	702
703	House	3	2	846167527	703	703
704	Apartment	1	1	847167527	704	704
705	Semi-Detached	4	2	850167527	705	705
706	Semi-Detached	3	1	851167527	706	706
707	End of Terrace	3	1	852167527	707	707
708	Semi-Detached	3	1	853167527	708	708
709	House	3	1	854167527	709	709
710	Apartment	2	2	855167527	710	710
711	Flat Share	1	1	856167527	711	711
712	Flat	0	1	857167527	712	712
713	Flat	1	1	858167527	713	713
714	Apartment	2	1	859167527	714	714
715	Terraced	2	1	860167527	715	715
716	Semi-Detached	3	1	861167527	716	716
717	Apartment	2	2	862167527	717	717
718	Apartment	3	2	863167527	718	718
719	Apartment	2	2	864167527	719	719
720	Apartment	2	2	865167527	720	720
721	Terraced	2	1	866167527	721	721
722	House Share	4	0	867167527	722	722
723	Apartment	1	1	868167527	723	723
724	Terraced	4	1	869167527	724	724
725	Apartment	3	2	870167527	725	725
726	Apartment	2	2	871167527	726	726
727	Semi-Detached	3	1	872167527	727	727
728	Apartment	1	1	873167527	728	728
729	Apartment	2	2	875167527	729	729
730	Apartment	2	2	876167527	730	730
731	Apartment	1	1	877167527	731	731
732	Terraced	4	1	878167527	732	732
733	Flat	2	2	880167527	733	733
734	Apartment	2	1	881167527	734	734
735	Flat	2	2	882167527	735	735
736	Apartment	2	2	883167527	736	736
737	Terraced	3	1	884167527	737	737
738	Apartment	2	2	885167527	738	738
739	Apartment	2	2	886167527	739	739
740	Terraced	6	1	887167527	740	740
741	Apartment	2	1	888167527	741	741
742	Semi-Detached	4	0	889167527	742	742
743	Apartment	1	0	890167527	743	743
744	End of Terrace	4	0	891167527	744	744
745	Apartment	1	1	892167527	745	745
746	Apartment	2	1	893167527	746	746
747	Terraced	3	1	894167527	747	747
748	Apartment	2	1	895167527	748	748
749	Detached	10	3	896167527	749	749
750	Apartment	1	1	897167527	750	750
751	House Share	3	0	898167527	751	751
752	Flat	2	2	899167527	752	752
753	Apartment	0	1	900167527	753	753
754	Terraced	2	1	901167527	754	754
755	Apartment	1	1	902167527	755	755
756	Semi-Detached	6	2	903167527	756	756
757	Apartment	2	2	904167527	757	757
\.


--
-- Data for Name: listings_df; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."listings_df" ("id", "parsed_post_date", "parsed_available_date", "monthly_price", "listing_id", "url", "rowid", "properties_df_sil_id") FROM stdin;
1	2025-02-12	2025-03-05 00:00:00	1815	158160542	https://www.rightmove.co.uk/properties/158160542#/?channel=RES_LET	1167527	1
2	2025-03-05	2025-02-24 00:00:00	950	158316575	https://www.rightmove.co.uk/properties/158316575#/?channel=RES_LET	2167527	2
3	2025-03-05	2025-03-17 00:00:00	995	158316059	https://www.rightmove.co.uk/properties/158316059#/?channel=RES_LET	3167527	3
4	2025-03-05	2025-02-28 00:00:00	1150	158315960	https://www.rightmove.co.uk/properties/158315960#/?channel=RES_LET	4167527	4
5	2025-03-05	2025-03-05 00:00:00	1200	158315822	https://www.rightmove.co.uk/properties/158315822#/?channel=RES_LET	5167527	5
6	2025-03-05	2025-03-05 00:00:00	995	158314349	https://www.rightmove.co.uk/properties/158314349#/?channel=RES_LET	6167527	6
7	2025-03-05	2025-03-03 00:00:00	1930	158314298	https://www.rightmove.co.uk/properties/158314298#/?channel=RES_LET	7167527	7
8	2025-03-05	2025-02-28 00:00:00	997	158272538	https://www.rightmove.co.uk/properties/158272538#/?channel=RES_LET	8167527	8
9	2025-03-05	2025-03-05 00:00:00	1750	158314154	https://www.rightmove.co.uk/properties/158314154#/?channel=RES_LET	9167527	9
10	2025-03-05	2025-03-03 00:00:00	2220	158314031	https://www.rightmove.co.uk/properties/158314031#/?channel=RES_LET	10167527	10
11	2025-03-05	2025-03-23 00:00:00	2405	158313977	https://www.rightmove.co.uk/properties/158313977#/?channel=RES_LET	11167527	11
12	2025-03-05	2025-03-03 00:00:00	2790	158313941	https://www.rightmove.co.uk/properties/158313941#/?channel=RES_LET	12167527	12
13	2025-03-05	2025-03-01 00:00:00	12530	158313899	https://www.rightmove.co.uk/properties/158313899#/?channel=RES_LET	13167527	13
14	2025-03-05	2025-03-05 00:00:00	1200	158313851	https://www.rightmove.co.uk/properties/158313851#/?channel=RES_LET	14167527	14
15	2025-03-05	2025-03-05 00:00:00	850	157325948	https://www.rightmove.co.uk/properties/157325948#/?channel=RES_LET	15167527	15
16	2025-03-05	2025-08-19 00:00:00	2380	158313419	https://www.rightmove.co.uk/properties/158313419#/?channel=RES_LET	16167527	16
17	2025-03-05	2025-03-05 00:00:00	1550	156027971	https://www.rightmove.co.uk/properties/156027971#/?channel=RES_LET	17167527	17
18	2025-03-05	1900-01-01 00:00:00	975	157711934	https://www.rightmove.co.uk/properties/157711934#/?channel=RES_LET	18167527	18
19	2025-03-05	2025-03-05 00:00:00	1600	156922322	https://www.rightmove.co.uk/properties/156922322#/?channel=RES_LET	19167527	19
20	2025-03-05	2025-03-05 00:00:00	1300	158311145	https://www.rightmove.co.uk/properties/158311145#/?channel=RES_LET	20167527	20
21	2025-03-05	2025-03-21 00:00:00	1200	158310608	https://www.rightmove.co.uk/properties/158310608#/?channel=RES_LET	21167527	21
22	2025-03-05	2025-03-05 00:00:00	2000	158310464	https://www.rightmove.co.uk/properties/158310464#/?channel=RES_LET	22167527	22
23	2025-03-05	2025-03-05 00:00:00	2775	158310455	https://www.rightmove.co.uk/properties/158310455#/?channel=RES_LET	23167527	23
24	2025-03-05	2025-03-05 00:00:00	1405	158310443	https://www.rightmove.co.uk/properties/158310443#/?channel=RES_LET	24167527	24
25	2025-03-05	2025-03-05 00:00:00	3000	158310425	https://www.rightmove.co.uk/properties/158310425#/?channel=RES_LET	25167527	25
26	2025-02-13	2025-03-05 00:00:00	1525	158195420	https://www.rightmove.co.uk/properties/158195420#/?channel=RES_LET	126167527	26
27	2025-03-05	2025-03-05 00:00:00	975	158001974	https://www.rightmove.co.uk/properties/158001974#/?channel=RES_LET	127167527	27
28	2025-03-05	2025-02-22 00:00:00	1100	157381079	https://www.rightmove.co.uk/properties/157381079#/?channel=RES_LET	128167527	28
29	2025-03-05	2025-03-05 00:00:00	1300	154848287	https://www.rightmove.co.uk/properties/154848287#/?channel=RES_LET	129167527	29
30	2025-03-05	2025-03-17 00:00:00	1450	157463765	https://www.rightmove.co.uk/properties/157463765#/?channel=RES_LET	130167527	30
31	2025-03-05	2025-03-05 00:00:00	1250	157631504	https://www.rightmove.co.uk/properties/157631504#/?channel=RES_LET	131167527	31
32	2025-03-05	2025-03-05 00:00:00	1200	156543662	https://www.rightmove.co.uk/properties/156543662#/?channel=RES_LET	132167527	32
33	2025-03-05	2025-02-21 00:00:00	1875	157655816	https://www.rightmove.co.uk/properties/157655816#/?channel=RES_LET	133167527	33
34	2025-03-05	2025-03-05 00:00:00	1250	156348833	https://www.rightmove.co.uk/properties/156348833#/?channel=RES_LET	134167527	34
35	2025-02-11	2025-05-03 00:00:00	1000	158119919	https://www.rightmove.co.uk/properties/158119919#/?channel=RES_LET	151167527	35
36	2025-03-05	2025-03-05 00:00:00	1610	158310404	https://www.rightmove.co.uk/properties/158310404#/?channel=RES_LET	160167527	36
37	2025-03-05	2025-03-05 00:00:00	1504	158309528	https://www.rightmove.co.uk/properties/158309528#/?channel=RES_LET	161167527	37
38	2025-03-05	2025-03-05 00:00:00	1079	158309519	https://www.rightmove.co.uk/properties/158309519#/?channel=RES_LET	162167527	38
39	2025-03-05	2025-03-05 00:00:00	1484	158309399	https://www.rightmove.co.uk/properties/158309399#/?channel=RES_LET	163167527	39
40	2025-03-05	2025-03-05 00:00:00	1689	158309366	https://www.rightmove.co.uk/properties/158309366#/?channel=RES_LET	164167527	40
41	2025-03-05	2025-03-05 00:00:00	1475	158309345	https://www.rightmove.co.uk/properties/158309345#/?channel=RES_LET	165167527	41
42	2025-03-05	2025-03-05 00:00:00	1139	158309138	https://www.rightmove.co.uk/properties/158309138#/?channel=RES_LET	166167527	42
43	2025-03-05	2025-03-05 00:00:00	1250	158308970	https://www.rightmove.co.uk/properties/158308970#/?channel=RES_LET	167167527	43
44	2025-03-05	2025-03-24 00:00:00	1400	158308538	https://www.rightmove.co.uk/properties/158308538#/?channel=RES_LET	168167527	44
45	2025-03-05	2025-03-05 00:00:00	1100	156763559	https://www.rightmove.co.uk/properties/156763559#/?channel=RES_LET	169167527	45
46	2025-03-05	2025-03-14 00:00:00	1050	158308289	https://www.rightmove.co.uk/properties/158308289#/?channel=RES_LET	170167527	46
47	2025-03-05	2025-03-05 00:00:00	1150	158307581	https://www.rightmove.co.uk/properties/158307581#/?channel=RES_LET	171167527	47
48	2025-03-05	2025-03-05 00:00:00	1250	158307503	https://www.rightmove.co.uk/properties/158307503#/?channel=RES_LET	172167527	48
49	2025-03-05	2025-03-05 00:00:00	1225	158307461	https://www.rightmove.co.uk/properties/158307461#/?channel=RES_LET	173167527	49
50	2025-03-05	2025-03-05 00:00:00	1275	158307557	https://www.rightmove.co.uk/properties/158307557#/?channel=RES_LET	174167527	50
51	2025-03-05	2025-03-05 00:00:00	1275	156565448	https://www.rightmove.co.uk/properties/156565448#/?channel=RES_LET	175167527	51
52	2025-02-12	1900-01-01 00:00:00	1230	158178989	https://www.rightmove.co.uk/properties/158178989#/?channel=RES_LET	176167527	52
53	2025-03-05	2025-07-01 00:00:00	650	158307095	https://www.rightmove.co.uk/properties/158307095#/?channel=RES_LET	177167527	53
54	2025-03-05	2025-03-05 00:00:00	1400	158306813	https://www.rightmove.co.uk/properties/158306813#/?channel=RES_LET	178167527	54
55	2025-03-05	2025-03-05 00:00:00	1350	158306603	https://www.rightmove.co.uk/properties/158306603#/?channel=RES_LET	179167527	55
56	2025-03-05	2025-03-05 00:00:00	1240	158305355	https://www.rightmove.co.uk/properties/158305355#/?channel=RES_LET	180167527	56
57	2025-03-05	2025-02-17 00:00:00	1165	158305322	https://www.rightmove.co.uk/properties/158305322#/?channel=RES_LET	181167527	57
58	2025-03-05	2025-03-06 00:00:00	1135	158305292	https://www.rightmove.co.uk/properties/158305292#/?channel=RES_LET	182167527	58
59	2025-03-05	2025-02-28 00:00:00	1060	158305172	https://www.rightmove.co.uk/properties/158305172#/?channel=RES_LET	183167527	59
60	2025-03-05	2025-03-09 00:00:00	2700	158305124	https://www.rightmove.co.uk/properties/158305124#/?channel=RES_LET	184167527	60
61	2025-03-05	2025-03-11 00:00:00	1450	157406669	https://www.rightmove.co.uk/properties/157406669#/?channel=RES_LET	185167527	61
62	2025-03-05	2025-04-01 00:00:00	1035	158305055	https://www.rightmove.co.uk/properties/158305055#/?channel=RES_LET	186167527	62
63	2025-03-05	2025-02-21 00:00:00	1015	158304878	https://www.rightmove.co.uk/properties/158304878#/?channel=RES_LET	187167527	63
64	2025-03-05	2025-03-21 00:00:00	1250	158304671	https://www.rightmove.co.uk/properties/158304671#/?channel=RES_LET	188167527	64
65	2025-03-05	2025-03-05 00:00:00	1100	155659016	https://www.rightmove.co.uk/properties/155659016#/?channel=RES_LET	189167527	65
66	2025-03-05	2025-02-17 00:00:00	1500	158300357	https://www.rightmove.co.uk/properties/158300357#/?channel=RES_LET	190167527	66
67	2025-03-05	2025-03-28 00:00:00	950	158300015	https://www.rightmove.co.uk/properties/158300015#/?channel=RES_LET	191167527	67
68	2025-03-05	2025-03-31 00:00:00	1200	158300012	https://www.rightmove.co.uk/properties/158300012#/?channel=RES_LET	192167527	68
69	2025-03-05	2025-02-18 00:00:00	1050	156992240	https://www.rightmove.co.uk/properties/156992240#/?channel=RES_LET	193167527	69
70	2025-03-04	2025-02-25 00:00:00	1150	156195479	https://www.rightmove.co.uk/properties/156195479#/?channel=RES_LET	194167527	70
71	2025-03-04	2025-03-05 00:00:00	2250	146165039	https://www.rightmove.co.uk/properties/146165039#/?channel=RES_LET	195167527	71
72	2025-03-04	2025-03-05 00:00:00	1400	157429919	https://www.rightmove.co.uk/properties/157429919#/?channel=RES_LET	196167527	72
73	2025-03-04	2025-03-05 00:00:00	2500	158298329	https://www.rightmove.co.uk/properties/158298329#/?channel=RES_LET	197167527	73
74	2025-03-04	2025-03-04 00:00:00	1250	158297354	https://www.rightmove.co.uk/properties/158297354#/?channel=RES_LET	198167527	74
75	2025-03-04	1900-01-01 00:00:00	1075	158296610	https://www.rightmove.co.uk/properties/158296610#/?channel=RES_LET	199167527	75
76	2025-03-04	1900-01-01 00:00:00	1925	158296607	https://www.rightmove.co.uk/properties/158296607#/?channel=RES_LET	200167527	76
77	2025-01-10	2025-02-19 00:00:00	1300	156167261	https://www.rightmove.co.uk/properties/156167261#/?channel=RES_LET	201167527	77
78	2025-03-04	2025-03-05 00:00:00	2100	158296595	https://www.rightmove.co.uk/properties/158296595#/?channel=RES_LET	202167527	78
79	2025-03-04	1900-01-01 00:00:00	2150	158296568	https://www.rightmove.co.uk/properties/158296568#/?channel=RES_LET	203167527	79
80	2025-03-04	2025-03-05 00:00:00	1495	158296529	https://www.rightmove.co.uk/properties/158296529#/?channel=RES_LET	204167527	80
81	2025-03-04	2025-03-05 00:00:00	1490	158296457	https://www.rightmove.co.uk/properties/158296457#/?channel=RES_LET	205167527	81
82	2025-03-04	2025-03-05 00:00:00	1550	158296424	https://www.rightmove.co.uk/properties/158296424#/?channel=RES_LET	206167527	82
83	2025-03-04	2025-03-05 00:00:00	1925	158296382	https://www.rightmove.co.uk/properties/158296382#/?channel=RES_LET	207167527	83
84	2025-03-04	2025-05-07 00:00:00	1320	158296091	https://www.rightmove.co.uk/properties/158296091#/?channel=RES_LET	208167527	84
85	2025-03-04	2025-03-05 00:00:00	1850	157926821	https://www.rightmove.co.uk/properties/157926821#/?channel=RES_LET	209167527	85
86	2025-03-04	2025-07-01 00:00:00	780	144682514	https://www.rightmove.co.uk/properties/144682514#/?channel=RES_LET	210167527	86
87	2025-03-04	1900-01-01 00:00:00	850	157213397	https://www.rightmove.co.uk/properties/157213397#/?channel=RES_LET	211167527	87
88	2025-03-04	2025-07-11 00:00:00	1600	157773698	https://www.rightmove.co.uk/properties/157773698#/?channel=RES_LET	212167527	88
89	2025-03-04	2025-03-08 00:00:00	725	158294474	https://www.rightmove.co.uk/properties/158294474#/?channel=RES_LET	213167527	89
90	2025-03-04	2025-03-05 00:00:00	1350	158294417	https://www.rightmove.co.uk/properties/158294417#/?channel=RES_LET	214167527	90
91	2025-03-04	2025-03-05 00:00:00	975	155350376	https://www.rightmove.co.uk/properties/155350376#/?channel=RES_LET	215167527	91
92	2025-03-04	2025-05-01 00:00:00	2500	158293460	https://www.rightmove.co.uk/properties/158293460#/?channel=RES_LET	216167527	92
93	2025-03-04	2025-03-05 00:00:00	1150	156896657	https://www.rightmove.co.uk/properties/156896657#/?channel=RES_LET	217167527	93
94	2025-03-04	2025-03-05 00:00:00	1267	158291408	https://www.rightmove.co.uk/properties/158291408#/?channel=RES_LET	218167527	94
95	2025-03-04	2025-07-01 00:00:00	795	42944848	https://www.rightmove.co.uk/properties/42944848#/?channel=RES_LET	219167527	95
96	2025-03-04	2025-07-01 00:00:00	855	42883612	https://www.rightmove.co.uk/properties/42883612#/?channel=RES_LET	220167527	96
97	2025-03-04	2025-07-01 00:00:00	825	56971487	https://www.rightmove.co.uk/properties/56971487#/?channel=RES_LET	221167527	97
98	2025-03-04	1900-01-01 00:00:00	2600	158290445	https://www.rightmove.co.uk/properties/158290445#/?channel=RES_LET	222167527	98
99	2025-03-04	1900-01-01 00:00:00	1800	158290364	https://www.rightmove.co.uk/properties/158290364#/?channel=RES_LET	223167527	99
100	2025-03-04	1900-01-01 00:00:00	1500	158290199	https://www.rightmove.co.uk/properties/158290199#/?channel=RES_LET	224167527	100
101	2025-03-04	1900-01-01 00:00:00	2300	158290139	https://www.rightmove.co.uk/properties/158290139#/?channel=RES_LET	225167527	101
102	2025-03-04	2025-03-05 00:00:00	1991	158271701	https://www.rightmove.co.uk/properties/158271701#/?channel=RES_LET	226167527	102
103	2025-03-04	1900-01-01 00:00:00	2300	158290061	https://www.rightmove.co.uk/properties/158290061#/?channel=RES_LET	227167527	103
104	2025-03-04	1900-01-01 00:00:00	1600	158289947	https://www.rightmove.co.uk/properties/158289947#/?channel=RES_LET	228167527	104
105	2025-03-04	1900-01-01 00:00:00	1500	158289860	https://www.rightmove.co.uk/properties/158289860#/?channel=RES_LET	229167527	105
106	2025-03-04	1900-01-01 00:00:00	1600	158289782	https://www.rightmove.co.uk/properties/158289782#/?channel=RES_LET	230167527	106
107	2025-03-04	1900-01-01 00:00:00	1500	158289668	https://www.rightmove.co.uk/properties/158289668#/?channel=RES_LET	231167527	107
108	2025-03-04	2025-03-05 00:00:00	1000	157456400	https://www.rightmove.co.uk/properties/157456400#/?channel=RES_LET	232167527	108
109	2025-03-04	1900-01-01 00:00:00	1300	158289575	https://www.rightmove.co.uk/properties/158289575#/?channel=RES_LET	233167527	109
110	2025-03-04	1900-01-01 00:00:00	1250	158289491	https://www.rightmove.co.uk/properties/158289491#/?channel=RES_LET	234167527	110
111	2025-03-04	1900-01-01 00:00:00	1300	158289398	https://www.rightmove.co.uk/properties/158289398#/?channel=RES_LET	235167527	111
112	2025-03-04	2025-03-05 00:00:00	4290	158288924	https://www.rightmove.co.uk/properties/158288924#/?channel=RES_LET	236167527	112
113	2025-03-04	2025-03-05 00:00:00	3000	158288423	https://www.rightmove.co.uk/properties/158288423#/?channel=RES_LET	237167527	113
114	2025-03-04	2025-03-05 00:00:00	2850	158288036	https://www.rightmove.co.uk/properties/158288036#/?channel=RES_LET	238167527	114
115	2025-03-04	2025-09-23 00:00:00	1700	158287994	https://www.rightmove.co.uk/properties/158287994#/?channel=RES_LET	239167527	115
116	2025-03-04	2025-03-05 00:00:00	1100	141910406	https://www.rightmove.co.uk/properties/141910406#/?channel=RES_LET	240167527	116
117	2025-03-04	2025-03-19 00:00:00	1300	144952919	https://www.rightmove.co.uk/properties/144952919#/?channel=RES_LET	241167527	117
118	2025-03-04	2025-07-01 00:00:00	5070	155965412	https://www.rightmove.co.uk/properties/155965412#/?channel=RES_LET	242167527	118
119	2025-03-04	1900-01-01 00:00:00	1100	158287175	https://www.rightmove.co.uk/properties/158287175#/?channel=RES_LET	243167527	119
120	2025-03-04	1900-01-01 00:00:00	1200	157578236	https://www.rightmove.co.uk/properties/157578236#/?channel=RES_LET	244167527	120
121	2025-03-04	2025-03-28 00:00:00	945	158287163	https://www.rightmove.co.uk/properties/158287163#/?channel=RES_LET	245167527	121
122	2025-03-04	2025-03-05 00:00:00	2035	158286842	https://www.rightmove.co.uk/properties/158286842#/?channel=RES_LET	246167527	122
123	2025-03-04	2025-07-01 00:00:00	5633	155387444	https://www.rightmove.co.uk/properties/155387444#/?channel=RES_LET	247167527	123
124	2025-03-04	2025-03-05 00:00:00	1685	158286374	https://www.rightmove.co.uk/properties/158286374#/?channel=RES_LET	248167527	124
125	2025-03-04	2025-08-01 00:00:00	1000	158286383	https://www.rightmove.co.uk/properties/158286383#/?channel=RES_LET	249167527	125
126	2025-03-04	2025-03-05 00:00:00	1840	158286386	https://www.rightmove.co.uk/properties/158286386#/?channel=RES_LET	250167527	126
127	2024-12-09	2025-03-01 00:00:00	1200	155798354	https://www.rightmove.co.uk/properties/155798354#/?channel=RES_LET	251167527	127
128	2025-03-04	2025-03-05 00:00:00	1660	158286365	https://www.rightmove.co.uk/properties/158286365#/?channel=RES_LET	252167527	128
129	2025-03-04	2025-03-05 00:00:00	2100	158285987	https://www.rightmove.co.uk/properties/158285987#/?channel=RES_LET	253167527	129
130	2025-03-04	2025-09-24 00:00:00	2200	158285924	https://www.rightmove.co.uk/properties/158285924#/?channel=RES_LET	254167527	130
131	2025-03-04	2025-09-11 00:00:00	2250	158285582	https://www.rightmove.co.uk/properties/158285582#/?channel=RES_LET	255167527	131
132	2025-03-04	2025-02-17 00:00:00	925	157526585	https://www.rightmove.co.uk/properties/157526585#/?channel=RES_LET	256167527	132
133	2025-03-04	2025-08-29 00:00:00	1700	158284877	https://www.rightmove.co.uk/properties/158284877#/?channel=RES_LET	257167527	133
134	2025-03-04	2025-04-01 00:00:00	2205	158283800	https://www.rightmove.co.uk/properties/158283800#/?channel=RES_LET	258167527	134
135	2025-03-04	2025-03-10 00:00:00	1300	158284034	https://www.rightmove.co.uk/properties/158284034#/?channel=RES_LET	259167527	135
136	2025-03-04	2025-09-30 00:00:00	2300	158284007	https://www.rightmove.co.uk/properties/158284007#/?channel=RES_LET	260167527	136
137	2025-03-04	2025-02-24 00:00:00	1200	158283899	https://www.rightmove.co.uk/properties/158283899#/?channel=RES_LET	261167527	137
138	2025-03-04	2025-03-17 00:00:00	1100	158283767	https://www.rightmove.co.uk/properties/158283767#/?channel=RES_LET	262167527	138
139	2025-03-04	2025-03-05 00:00:00	1200	157586192	https://www.rightmove.co.uk/properties/157586192#/?channel=RES_LET	263167527	139
140	2025-03-04	2025-09-19 00:00:00	1750	158283446	https://www.rightmove.co.uk/properties/158283446#/?channel=RES_LET	264167527	140
141	2025-03-04	2025-03-05 00:00:00	1595	155165555	https://www.rightmove.co.uk/properties/155165555#/?channel=RES_LET	265167527	141
142	2025-03-04	2025-03-17 00:00:00	895	158283005	https://www.rightmove.co.uk/properties/158283005#/?channel=RES_LET	266167527	142
143	2025-03-04	2025-02-25 00:00:00	1180	158282960	https://www.rightmove.co.uk/properties/158282960#/?channel=RES_LET	267167527	143
144	2025-03-04	2025-09-23 00:00:00	2300	158283011	https://www.rightmove.co.uk/properties/158283011#/?channel=RES_LET	268167527	144
145	2025-03-04	2025-03-05 00:00:00	1350	158282651	https://www.rightmove.co.uk/properties/158282651#/?channel=RES_LET	269167527	145
146	2025-03-04	2025-03-21 00:00:00	1100	158282405	https://www.rightmove.co.uk/properties/158282405#/?channel=RES_LET	270167527	146
147	2025-03-04	2025-02-21 00:00:00	1450	158282063	https://www.rightmove.co.uk/properties/158282063#/?channel=RES_LET	271167527	147
148	2025-03-04	2025-03-05 00:00:00	1300	157263494	https://www.rightmove.co.uk/properties/157263494#/?channel=RES_LET	272167527	148
149	2025-03-04	2025-04-28 00:00:00	1850	158281466	https://www.rightmove.co.uk/properties/158281466#/?channel=RES_LET	273167527	149
150	2025-03-04	2025-09-28 00:00:00	2350	158284127	https://www.rightmove.co.uk/properties/158284127#/?channel=RES_LET	274167527	150
151	2025-03-04	2025-02-17 00:00:00	1350	157705121	https://www.rightmove.co.uk/properties/157705121#/?channel=RES_LET	275167527	151
152	2025-03-04	2025-04-15 00:00:00	1250	158279801	https://www.rightmove.co.uk/properties/158279801#/?channel=RES_LET	276167527	152
153	2025-03-04	2025-03-05 00:00:00	700	158281001	https://www.rightmove.co.uk/properties/158281001#/?channel=RES_LET	277167527	153
154	2025-03-04	2025-03-03 00:00:00	1150	158280959	https://www.rightmove.co.uk/properties/158280959#/?channel=RES_LET	278167527	154
155	2025-03-04	2025-04-28 00:00:00	1750	158280617	https://www.rightmove.co.uk/properties/158280617#/?channel=RES_LET	279167527	155
156	2025-03-04	2025-03-05 00:00:00	1200	157314830	https://www.rightmove.co.uk/properties/157314830#/?channel=RES_LET	280167527	156
157	2025-03-04	2025-09-16 00:00:00	2400	158283245	https://www.rightmove.co.uk/properties/158283245#/?channel=RES_LET	281167527	157
158	2025-03-04	2025-03-06 00:00:00	1225	158280080	https://www.rightmove.co.uk/properties/158280080#/?channel=RES_LET	282167527	158
159	2025-03-04	2025-09-05 00:00:00	1700	158279861	https://www.rightmove.co.uk/properties/158279861#/?channel=RES_LET	283167527	159
160	2025-03-04	2025-09-09 00:00:00	589	158279843	https://www.rightmove.co.uk/properties/158279843#/?channel=RES_LET	284167527	160
161	2025-03-04	2025-04-01 00:00:00	1125	158279828	https://www.rightmove.co.uk/properties/158279828#/?channel=RES_LET	285167527	161
162	2025-03-04	2025-04-21 00:00:00	1800	158279825	https://www.rightmove.co.uk/properties/158279825#/?channel=RES_LET	286167527	162
163	2025-03-04	2025-04-15 00:00:00	2200	158279822	https://www.rightmove.co.uk/properties/158279822#/?channel=RES_LET	287167527	163
164	2025-03-04	2025-04-07 00:00:00	1600	158279816	https://www.rightmove.co.uk/properties/158279816#/?channel=RES_LET	288167527	164
165	2025-03-04	2025-04-08 00:00:00	1350	158279813	https://www.rightmove.co.uk/properties/158279813#/?channel=RES_LET	289167527	165
166	2025-03-04	1900-01-01 00:00:00	1755	87084207	https://www.rightmove.co.uk/properties/87084207#/?channel=RES_LET	290167527	166
167	2025-03-04	2025-04-22 00:00:00	1050	158279807	https://www.rightmove.co.uk/properties/158279807#/?channel=RES_LET	291167527	167
168	2025-03-04	2025-04-23 00:00:00	1150	158279786	https://www.rightmove.co.uk/properties/158279786#/?channel=RES_LET	292167527	168
169	2025-03-04	2025-03-07 00:00:00	1850	158279789	https://www.rightmove.co.uk/properties/158279789#/?channel=RES_LET	293167527	169
170	2025-03-04	2025-03-20 00:00:00	1100	157885685	https://www.rightmove.co.uk/properties/157885685#/?channel=RES_LET	295167527	170
171	2025-03-04	2025-03-07 00:00:00	1250	157643099	https://www.rightmove.co.uk/properties/157643099#/?channel=RES_LET	296167527	171
172	2025-03-04	2025-02-26 00:00:00	1100	158278553	https://www.rightmove.co.uk/properties/158278553#/?channel=RES_LET	297167527	172
173	2025-03-04	2025-04-10 00:00:00	2850	152968910	https://www.rightmove.co.uk/properties/152968910#/?channel=RES_LET	298167527	173
174	2025-03-04	2025-03-05 00:00:00	1685	158278022	https://www.rightmove.co.uk/properties/158278022#/?channel=RES_LET	299167527	174
175	2025-03-04	2025-02-24 00:00:00	1000	143585015	https://www.rightmove.co.uk/properties/143585015#/?channel=RES_LET	300167527	175
176	2025-02-13	2025-03-05 00:00:00	1211	158225144	https://www.rightmove.co.uk/properties/158225144#/?channel=RES_LET	301167527	176
177	2025-03-04	2025-03-05 00:00:00	2535	158176907	https://www.rightmove.co.uk/properties/158176907#/?channel=RES_LET	302167527	177
178	2025-03-04	2025-03-21 00:00:00	1450	158277278	https://www.rightmove.co.uk/properties/158277278#/?channel=RES_LET	303167527	178
179	2025-03-04	2025-03-05 00:00:00	1405	158277263	https://www.rightmove.co.uk/properties/158277263#/?channel=RES_LET	304167527	179
180	2025-03-04	2025-03-05 00:00:00	3250	158277236	https://www.rightmove.co.uk/properties/158277236#/?channel=RES_LET	305167527	180
181	2025-03-04	2025-03-05 00:00:00	1690	158277227	https://www.rightmove.co.uk/properties/158277227#/?channel=RES_LET	306167527	181
182	2025-03-04	2025-02-19 00:00:00	1050	158277053	https://www.rightmove.co.uk/properties/158277053#/?channel=RES_LET	307167527	182
183	2025-03-04	2025-03-05 00:00:00	2775	158276894	https://www.rightmove.co.uk/properties/158276894#/?channel=RES_LET	308167527	183
184	2025-03-04	2025-03-05 00:00:00	1610	158276648	https://www.rightmove.co.uk/properties/158276648#/?channel=RES_LET	309167527	184
185	2025-03-04	2025-03-24 00:00:00	575	158276459	https://www.rightmove.co.uk/properties/158276459#/?channel=RES_LET	310167527	185
186	2025-03-04	2025-02-17 00:00:00	1250	158276135	https://www.rightmove.co.uk/properties/158276135#/?channel=RES_LET	311167527	186
187	2025-03-04	2025-07-01 00:00:00	1950	158276084	https://www.rightmove.co.uk/properties/158276084#/?channel=RES_LET	312167527	187
188	2025-03-04	2025-03-20 00:00:00	1100	158275970	https://www.rightmove.co.uk/properties/158275970#/?channel=RES_LET	313167527	188
189	2025-03-04	2025-03-03 00:00:00	1450	158275703	https://www.rightmove.co.uk/properties/158275703#/?channel=RES_LET	314167527	189
190	2025-03-04	2025-03-17 00:00:00	1200	158275487	https://www.rightmove.co.uk/properties/158275487#/?channel=RES_LET	315167527	190
191	2025-03-04	2025-02-24 00:00:00	1350	156122393	https://www.rightmove.co.uk/properties/156122393#/?channel=RES_LET	316167527	191
192	2025-03-04	2025-03-05 00:00:00	2500	158201399	https://www.rightmove.co.uk/properties/158201399#/?channel=RES_LET	317167527	192
193	2025-03-04	2025-03-05 00:00:00	1900	158275064	https://www.rightmove.co.uk/properties/158275064#/?channel=RES_LET	318167527	193
194	2025-03-04	2025-03-21 00:00:00	1150	158274281	https://www.rightmove.co.uk/properties/158274281#/?channel=RES_LET	319167527	194
195	2025-03-04	2025-03-05 00:00:00	1200	157157366	https://www.rightmove.co.uk/properties/157157366#/?channel=RES_LET	320167527	195
196	2025-03-04	2025-03-05 00:00:00	1500	158273477	https://www.rightmove.co.uk/properties/158273477#/?channel=RES_LET	321167527	196
197	2025-03-04	2025-03-05 00:00:00	1400	157294841	https://www.rightmove.co.uk/properties/157294841#/?channel=RES_LET	322167527	197
198	2025-03-04	2025-03-21 00:00:00	1350	158272955	https://www.rightmove.co.uk/properties/158272955#/?channel=RES_LET	323167527	198
199	2025-03-04	1900-01-01 00:00:00	1350	132736481	https://www.rightmove.co.uk/properties/132736481#/?channel=RES_LET	324167527	199
200	2025-03-04	2025-03-13 00:00:00	1300	158272796	https://www.rightmove.co.uk/properties/158272796#/?channel=RES_LET	325167527	200
201	2025-03-04	2025-03-01 00:00:00	1275	157100198	https://www.rightmove.co.uk/properties/157100198#/?channel=RES_LET	327167527	201
202	2025-03-04	1900-01-01 00:00:00	2162	158272484	https://www.rightmove.co.uk/properties/158272484#/?channel=RES_LET	328167527	202
203	2025-03-04	1900-01-01 00:00:00	2129	158272460	https://www.rightmove.co.uk/properties/158272460#/?channel=RES_LET	329167527	203
204	2025-03-04	1900-01-01 00:00:00	2316	158272424	https://www.rightmove.co.uk/properties/158272424#/?channel=RES_LET	330167527	204
205	2025-03-04	2025-03-19 00:00:00	1500	157040021	https://www.rightmove.co.uk/properties/157040021#/?channel=RES_LET	331167527	205
206	2025-03-04	1900-01-01 00:00:00	2050	158272223	https://www.rightmove.co.uk/properties/158272223#/?channel=RES_LET	332167527	206
207	2025-03-04	1900-01-01 00:00:00	2075	158272094	https://www.rightmove.co.uk/properties/158272094#/?channel=RES_LET	333167527	207
208	2025-03-04	1900-01-01 00:00:00	2983	158271899	https://www.rightmove.co.uk/properties/158271899#/?channel=RES_LET	334167527	208
209	2025-03-04	1900-01-01 00:00:00	1908	158271809	https://www.rightmove.co.uk/properties/158271809#/?channel=RES_LET	335167527	209
210	2025-03-04	1900-01-01 00:00:00	1600	158271590	https://www.rightmove.co.uk/properties/158271590#/?channel=RES_LET	337167527	210
211	2025-03-04	1900-01-01 00:00:00	1498	158271461	https://www.rightmove.co.uk/properties/158271461#/?channel=RES_LET	338167527	211
212	2025-03-04	1900-01-01 00:00:00	1975	158271338	https://www.rightmove.co.uk/properties/158271338#/?channel=RES_LET	339167527	212
213	2025-03-04	1900-01-01 00:00:00	2050	158271215	https://www.rightmove.co.uk/properties/158271215#/?channel=RES_LET	340167527	213
214	2025-03-04	1900-01-01 00:00:00	2058	158271152	https://www.rightmove.co.uk/properties/158271152#/?channel=RES_LET	341167527	214
215	2025-03-04	2025-03-01 00:00:00	1175	31399351	https://www.rightmove.co.uk/properties/31399351#/?channel=RES_LET	342167527	215
216	2025-03-04	2025-03-05 00:00:00	1000	157818002	https://www.rightmove.co.uk/properties/157818002#/?channel=RES_LET	343167527	216
217	2025-03-04	1900-01-01 00:00:00	1316	158270537	https://www.rightmove.co.uk/properties/158270537#/?channel=RES_LET	344167527	217
218	2025-03-04	1900-01-01 00:00:00	1170	158270483	https://www.rightmove.co.uk/properties/158270483#/?channel=RES_LET	345167527	218
219	2025-03-04	1900-01-01 00:00:00	1120	158270402	https://www.rightmove.co.uk/properties/158270402#/?channel=RES_LET	346167527	219
220	2025-03-04	2025-03-26 00:00:00	1400	157729610	https://www.rightmove.co.uk/properties/157729610#/?channel=RES_LET	347167527	220
221	2025-03-04	2025-03-05 00:00:00	1100	158270375	https://www.rightmove.co.uk/properties/158270375#/?channel=RES_LET	348167527	221
222	2025-03-04	2025-03-15 00:00:00	1100	158269553	https://www.rightmove.co.uk/properties/158269553#/?channel=RES_LET	349167527	222
223	2025-02-10	2025-03-05 00:00:00	1150	158038433	https://www.rightmove.co.uk/properties/158038433#/?channel=RES_LET	350167527	223
224	2025-03-04	2025-03-21 00:00:00	1130	158269310	https://www.rightmove.co.uk/properties/158269310#/?channel=RES_LET	351167527	224
225	2025-03-04	2025-03-05 00:00:00	1400	146750435	https://www.rightmove.co.uk/properties/146750435#/?channel=RES_LET	352167527	225
226	2025-03-04	2025-03-05 00:00:00	1900	152724128	https://www.rightmove.co.uk/properties/152724128#/?channel=RES_LET	353167527	226
227	2025-03-04	2025-03-05 00:00:00	850	158268506	https://www.rightmove.co.uk/properties/158268506#/?channel=RES_LET	354167527	227
228	2025-03-04	2025-03-05 00:00:00	1750	156598532	https://www.rightmove.co.uk/properties/156598532#/?channel=RES_LET	355167527	228
229	2025-03-04	1900-01-01 00:00:00	1200	158268254	https://www.rightmove.co.uk/properties/158268254#/?channel=RES_LET	356167527	229
230	2025-03-04	1900-01-01 00:00:00	1250	158268101	https://www.rightmove.co.uk/properties/158268101#/?channel=RES_LET	357167527	230
231	2025-03-04	2025-02-19 00:00:00	1530	158267954	https://www.rightmove.co.uk/properties/158267954#/?channel=RES_LET	358167527	231
232	2025-03-04	1900-01-01 00:00:00	4345	158267945	https://www.rightmove.co.uk/properties/158267945#/?channel=RES_LET	359167527	232
233	2025-03-04	2025-08-05 00:00:00	4525	158267807	https://www.rightmove.co.uk/properties/158267807#/?channel=RES_LET	360167527	233
234	2025-03-04	1900-01-01 00:00:00	4782	158267816	https://www.rightmove.co.uk/properties/158267816#/?channel=RES_LET	361167527	234
235	2025-03-04	2025-07-15 00:00:00	981	158267798	https://www.rightmove.co.uk/properties/158267798#/?channel=RES_LET	362167527	235
236	2025-03-04	1900-01-01 00:00:00	4217	158267564	https://www.rightmove.co.uk/properties/158267564#/?channel=RES_LET	363167527	236
237	2025-03-04	1900-01-01 00:00:00	3621	158267561	https://www.rightmove.co.uk/properties/158267561#/?channel=RES_LET	364167527	237
238	2025-03-04	2025-09-12 00:00:00	2494	158267555	https://www.rightmove.co.uk/properties/158267555#/?channel=RES_LET	365167527	238
239	2025-03-04	1900-01-01 00:00:00	3621	158267552	https://www.rightmove.co.uk/properties/158267552#/?channel=RES_LET	366167527	239
240	2025-03-04	2025-03-14 00:00:00	1950	158267537	https://www.rightmove.co.uk/properties/158267537#/?channel=RES_LET	367167527	240
241	2025-03-04	2025-09-05 00:00:00	2172	158267501	https://www.rightmove.co.uk/properties/158267501#/?channel=RES_LET	368167527	241
242	2025-03-04	1900-01-01 00:00:00	3068	158267492	https://www.rightmove.co.uk/properties/158267492#/?channel=RES_LET	369167527	242
243	2025-03-04	2029-09-05 00:00:00	2301	158267498	https://www.rightmove.co.uk/properties/158267498#/?channel=RES_LET	370167527	243
244	2025-03-04	2025-09-05 00:00:00	3557	158267489	https://www.rightmove.co.uk/properties/158267489#/?channel=RES_LET	371167527	244
245	2025-03-04	2025-02-19 00:00:00	1730	158267393	https://www.rightmove.co.uk/properties/158267393#/?channel=RES_LET	372167527	245
246	2025-03-04	2025-02-19 00:00:00	1225	158267384	https://www.rightmove.co.uk/properties/158267384#/?channel=RES_LET	373167527	246
247	2025-02-13	2025-03-05 00:00:00	1343	158215868	https://www.rightmove.co.uk/properties/158215868#/?channel=RES_LET	374167527	247
248	2025-03-04	2025-09-05 00:00:00	2982	158267363	https://www.rightmove.co.uk/properties/158267363#/?channel=RES_LET	375167527	248
249	2025-03-04	2025-02-19 00:00:00	1275	158267375	https://www.rightmove.co.uk/properties/158267375#/?channel=RES_LET	376167527	249
250	2025-03-04	2025-09-08 00:00:00	2108	158267294	https://www.rightmove.co.uk/properties/158267294#/?channel=RES_LET	377167527	250
251	2025-03-04	2025-09-05 00:00:00	2301	158267150	https://www.rightmove.co.uk/properties/158267150#/?channel=RES_LET	378167527	251
252	2025-03-04	2025-08-02 00:00:00	520	158267078	https://www.rightmove.co.uk/properties/158267078#/?channel=RES_LET	379167527	252
253	2025-03-04	2025-08-02 00:00:00	563	158267057	https://www.rightmove.co.uk/properties/158267057#/?channel=RES_LET	380167527	253
254	2025-03-04	2025-09-08 00:00:00	2301	158267054	https://www.rightmove.co.uk/properties/158267054#/?channel=RES_LET	381167527	254
255	2025-03-04	2025-09-05 00:00:00	2172	158267051	https://www.rightmove.co.uk/properties/158267051#/?channel=RES_LET	382167527	255
256	2025-03-04	2025-09-08 00:00:00	2430	158267048	https://www.rightmove.co.uk/properties/158267048#/?channel=RES_LET	383167527	256
257	2025-03-04	2025-08-02 00:00:00	520	158267027	https://www.rightmove.co.uk/properties/158267027#/?channel=RES_LET	384167527	257
258	2025-03-04	2025-03-19 00:00:00	1250	158267006	https://www.rightmove.co.uk/properties/158267006#/?channel=RES_LET	385167527	258
259	2025-03-04	2025-09-06 00:00:00	4920	158266991	https://www.rightmove.co.uk/properties/158266991#/?channel=RES_LET	386167527	259
260	2025-03-04	2025-07-07 00:00:00	1600	158266865	https://www.rightmove.co.uk/properties/158266865#/?channel=RES_LET	387167527	260
261	2025-03-04	2025-03-24 00:00:00	1150	158266790	https://www.rightmove.co.uk/properties/158266790#/?channel=RES_LET	388167527	261
262	2025-03-04	2025-08-02 00:00:00	520	158266736	https://www.rightmove.co.uk/properties/158266736#/?channel=RES_LET	389167527	262
263	2025-03-04	2025-02-28 00:00:00	1550	158266088	https://www.rightmove.co.uk/properties/158266088#/?channel=RES_LET	390167527	263
264	2025-03-04	2025-03-21 00:00:00	1100	158266040	https://www.rightmove.co.uk/properties/158266040#/?channel=RES_LET	391167527	264
265	2025-03-04	2025-03-05 00:00:00	1355	158265791	https://www.rightmove.co.uk/properties/158265791#/?channel=RES_LET	392167527	265
266	2025-03-04	2025-05-01 00:00:00	1150	158265692	https://www.rightmove.co.uk/properties/158265692#/?channel=RES_LET	393167527	266
267	2025-03-04	2025-03-20 00:00:00	1295	158265038	https://www.rightmove.co.uk/properties/158265038#/?channel=RES_LET	394167527	267
268	2025-03-04	2025-02-21 00:00:00	1100	158264861	https://www.rightmove.co.uk/properties/158264861#/?channel=RES_LET	395167527	268
269	2025-03-04	1900-01-01 00:00:00	975	158264147	https://www.rightmove.co.uk/properties/158264147#/?channel=RES_LET	396167527	269
270	2025-03-04	2025-03-05 00:00:00	1200	158264132	https://www.rightmove.co.uk/properties/158264132#/?channel=RES_LET	397167527	270
271	2025-03-04	2025-03-05 00:00:00	990	158264075	https://www.rightmove.co.uk/properties/158264075#/?channel=RES_LET	398167527	271
272	2025-02-12	2025-03-06 00:00:00	1135	158159300	https://www.rightmove.co.uk/properties/158159300#/?channel=RES_LET	399167527	272
273	2025-03-04	1900-01-01 00:00:00	1014	158263850	https://www.rightmove.co.uk/properties/158263850#/?channel=RES_LET	400167527	273
274	2025-03-04	1900-01-01 00:00:00	1009	158263799	https://www.rightmove.co.uk/properties/158263799#/?channel=RES_LET	401167527	274
275	2025-03-04	2025-07-01 00:00:00	2080	155183024	https://www.rightmove.co.uk/properties/155183024#/?channel=RES_LET	402167527	275
276	2025-03-04	1900-01-01 00:00:00	1062	158263727	https://www.rightmove.co.uk/properties/158263727#/?channel=RES_LET	403167527	276
277	2025-03-04	2025-03-03 00:00:00	1200	157621739	https://www.rightmove.co.uk/properties/157621739#/?channel=RES_LET	404167527	277
278	2025-03-04	1900-01-01 00:00:00	970	158263607	https://www.rightmove.co.uk/properties/158263607#/?channel=RES_LET	405167527	278
279	2025-03-04	2025-04-12 00:00:00	1300	158263586	https://www.rightmove.co.uk/properties/158263586#/?channel=RES_LET	406167527	279
280	2025-03-04	1900-01-01 00:00:00	970	158263568	https://www.rightmove.co.uk/properties/158263568#/?channel=RES_LET	407167527	280
281	2025-03-04	2025-03-01 00:00:00	1600	158263526	https://www.rightmove.co.uk/properties/158263526#/?channel=RES_LET	408167527	281
282	2025-03-04	2025-08-09 00:00:00	1385	158263496	https://www.rightmove.co.uk/properties/158263496#/?channel=RES_LET	409167527	282
283	2025-03-04	2025-03-05 00:00:00	1050	158263436	https://www.rightmove.co.uk/properties/158263436#/?channel=RES_LET	410167527	283
284	2025-03-04	2025-04-28 00:00:00	1550	158263469	https://www.rightmove.co.uk/properties/158263469#/?channel=RES_LET	411167527	284
285	2025-03-04	2025-04-28 00:00:00	1400	157285700	https://www.rightmove.co.uk/properties/157285700#/?channel=RES_LET	412167527	285
286	2025-03-04	2025-03-05 00:00:00	2167	158262866	https://www.rightmove.co.uk/properties/158262866#/?channel=RES_LET	413167527	286
287	2025-03-04	2025-02-25 00:00:00	1195	158262617	https://www.rightmove.co.uk/properties/158262617#/?channel=RES_LET	414167527	287
288	2025-03-04	2025-02-19 00:00:00	1300	158262536	https://www.rightmove.co.uk/properties/158262536#/?channel=RES_LET	415167527	288
289	2025-03-04	2025-03-05 00:00:00	1100	158261732	https://www.rightmove.co.uk/properties/158261732#/?channel=RES_LET	416167527	289
290	2025-03-04	1900-01-01 00:00:00	1200	131300669	https://www.rightmove.co.uk/properties/131300669#/?channel=RES_LET	417167527	290
291	2025-03-04	1900-01-01 00:00:00	1148	158260952	https://www.rightmove.co.uk/properties/158260952#/?channel=RES_LET	418167527	291
292	2025-03-04	2025-03-05 00:00:00	1000	156575117	https://www.rightmove.co.uk/properties/156575117#/?channel=RES_LET	419167527	292
293	2025-03-04	2025-03-05 00:00:00	1500	154638344	https://www.rightmove.co.uk/properties/154638344#/?channel=RES_LET	420167527	293
294	2025-03-04	1900-01-01 00:00:00	1250	154667126	https://www.rightmove.co.uk/properties/154667126#/?channel=RES_LET	421167527	294
295	2025-03-04	2025-02-20 00:00:00	1250	158259101	https://www.rightmove.co.uk/properties/158259101#/?channel=RES_LET	422167527	295
296	2025-03-04	2025-03-06 00:00:00	800	158259119	https://www.rightmove.co.uk/properties/158259119#/?channel=RES_LET	423167527	296
297	2025-03-04	2025-03-05 00:00:00	1200	158258942	https://www.rightmove.co.uk/properties/158258942#/?channel=RES_LET	425167527	297
298	2025-03-04	2025-02-21 00:00:00	875	158314370	https://www.rightmove.co.uk/properties/158314370#/?channel=RES_LET	426167527	298
299	2025-03-04	1900-01-01 00:00:00	1450	115758911	https://www.rightmove.co.uk/properties/115758911#/?channel=RES_LET	427167527	299
300	2025-03-04	2025-02-26 00:00:00	1650	158258726	https://www.rightmove.co.uk/properties/158258726#/?channel=RES_LET	428167527	300
301	2025-03-04	2025-03-24 00:00:00	850	158258666	https://www.rightmove.co.uk/properties/158258666#/?channel=RES_LET	429167527	301
302	2025-03-04	2025-03-05 00:00:00	675	64888845	https://www.rightmove.co.uk/properties/64888845#/?channel=RES_LET	430167527	302
303	2025-03-04	2025-03-31 00:00:00	950	73350572	https://www.rightmove.co.uk/properties/73350572#/?channel=RES_LET	431167527	303
304	2025-03-04	2025-03-05 00:00:00	1250	158258558	https://www.rightmove.co.uk/properties/158258558#/?channel=RES_LET	432167527	304
305	2025-03-04	2025-03-20 00:00:00	800	158258492	https://www.rightmove.co.uk/properties/158258492#/?channel=RES_LET	433167527	305
306	2025-03-04	2025-03-05 00:00:00	1500	158258033	https://www.rightmove.co.uk/properties/158258033#/?channel=RES_LET	434167527	306
307	2025-03-04	2025-03-24 00:00:00	1400	158258036	https://www.rightmove.co.uk/properties/158258036#/?channel=RES_LET	435167527	307
308	2025-03-04	1900-01-01 00:00:00	1820	158257481	https://www.rightmove.co.uk/properties/158257481#/?channel=RES_LET	436167527	308
309	2025-03-04	1900-01-01 00:00:00	1647	158257460	https://www.rightmove.co.uk/properties/158257460#/?channel=RES_LET	437167527	309
310	2025-03-04	1900-01-01 00:00:00	1603	158257403	https://www.rightmove.co.uk/properties/158257403#/?channel=RES_LET	438167527	310
311	2025-03-04	2025-02-17 00:00:00	1700	158257181	https://www.rightmove.co.uk/properties/158257181#/?channel=RES_LET	439167527	311
312	2025-03-04	2025-03-07 00:00:00	1100	158256971	https://www.rightmove.co.uk/properties/158256971#/?channel=RES_LET	440167527	312
313	2025-03-04	2025-02-27 00:00:00	1250	157104650	https://www.rightmove.co.uk/properties/157104650#/?channel=RES_LET	441167527	313
314	2025-03-04	2025-02-17 00:00:00	1100	158256833	https://www.rightmove.co.uk/properties/158256833#/?channel=RES_LET	442167527	314
315	2025-03-04	2025-03-05 00:00:00	900	158256656	https://www.rightmove.co.uk/properties/158256656#/?channel=RES_LET	443167527	315
316	2025-03-04	2025-04-08 00:00:00	1400	158256332	https://www.rightmove.co.uk/properties/158256332#/?channel=RES_LET	444167527	316
317	2025-03-04	2025-02-24 00:00:00	1750	158306684	https://www.rightmove.co.uk/properties/158306684#/?channel=RES_LET	445167527	317
318	2025-03-04	2025-03-05 00:00:00	795	158255801	https://www.rightmove.co.uk/properties/158255801#/?channel=RES_LET	446167527	318
319	2025-03-04	2025-03-05 00:00:00	650	156536360	https://www.rightmove.co.uk/properties/156536360#/?channel=RES_LET	447167527	319
320	2025-03-04	1900-01-01 00:00:00	1250	158254568	https://www.rightmove.co.uk/properties/158254568#/?channel=RES_LET	448167527	320
321	2025-03-04	2025-03-05 00:00:00	1139	158252285	https://www.rightmove.co.uk/properties/158252285#/?channel=RES_LET	449167527	321
322	2025-03-04	2025-03-17 00:00:00	1550	158254064	https://www.rightmove.co.uk/properties/158254064#/?channel=RES_LET	450167527	322
323	2025-03-04	2025-03-22 00:00:00	1495	157133408	https://www.rightmove.co.uk/properties/157133408#/?channel=RES_LET	451167527	323
324	2025-03-04	2025-03-05 00:00:00	1200	155471684	https://www.rightmove.co.uk/properties/155471684#/?channel=RES_LET	452167527	324
325	2025-03-04	2025-03-05 00:00:00	925	158253440	https://www.rightmove.co.uk/properties/158253440#/?channel=RES_LET	453167527	325
326	2025-03-04	2025-03-05 00:00:00	1250	157517720	https://www.rightmove.co.uk/properties/157517720#/?channel=RES_LET	454167527	326
327	2025-03-04	2025-03-05 00:00:00	1475	158253215	https://www.rightmove.co.uk/properties/158253215#/?channel=RES_LET	455167527	327
328	2025-03-04	2025-03-05 00:00:00	1400	156970898	https://www.rightmove.co.uk/properties/156970898#/?channel=RES_LET	456167527	328
329	2025-03-04	2025-03-05 00:00:00	1250	156590234	https://www.rightmove.co.uk/properties/156590234#/?channel=RES_LET	457167527	329
330	2025-03-04	2025-03-05 00:00:00	2417	158252402	https://www.rightmove.co.uk/properties/158252402#/?channel=RES_LET	458167527	330
331	2025-03-04	2025-03-05 00:00:00	1314	158252375	https://www.rightmove.co.uk/properties/158252375#/?channel=RES_LET	459167527	331
332	2025-03-04	2025-04-14 00:00:00	1250	158252333	https://www.rightmove.co.uk/properties/158252333#/?channel=RES_LET	460167527	332
333	2025-03-04	2025-03-05 00:00:00	1707	158252309	https://www.rightmove.co.uk/properties/158252309#/?channel=RES_LET	461167527	333
334	2025-03-04	2025-04-04 00:00:00	1250	158252255	https://www.rightmove.co.uk/properties/158252255#/?channel=RES_LET	463167527	334
335	2025-03-04	2025-03-05 00:00:00	1345	158252252	https://www.rightmove.co.uk/properties/158252252#/?channel=RES_LET	464167527	335
336	2025-03-04	2025-03-07 00:00:00	1375	158252177	https://www.rightmove.co.uk/properties/158252177#/?channel=RES_LET	465167527	336
337	2025-03-04	2025-03-17 00:00:00	975	158252129	https://www.rightmove.co.uk/properties/158252129#/?channel=RES_LET	466167527	337
338	2025-03-04	2025-03-05 00:00:00	1504	158252054	https://www.rightmove.co.uk/properties/158252054#/?channel=RES_LET	467167527	338
339	2025-03-04	2025-04-04 00:00:00	2295	157194482	https://www.rightmove.co.uk/properties/157194482#/?channel=RES_LET	468167527	339
340	2025-03-04	2025-03-05 00:00:00	1079	158252009	https://www.rightmove.co.uk/properties/158252009#/?channel=RES_LET	469167527	340
341	2025-03-04	2025-03-05 00:00:00	2429	158252012	https://www.rightmove.co.uk/properties/158252012#/?channel=RES_LET	470167527	341
342	2025-03-04	2025-03-05 00:00:00	1689	158251883	https://www.rightmove.co.uk/properties/158251883#/?channel=RES_LET	471167527	342
343	2025-03-04	2025-03-05 00:00:00	1841	158251850	https://www.rightmove.co.uk/properties/158251850#/?channel=RES_LET	472167527	343
344	2025-03-04	2025-03-05 00:00:00	1484	158251844	https://www.rightmove.co.uk/properties/158251844#/?channel=RES_LET	473167527	344
345	2025-03-04	2025-03-16 00:00:00	1100	158248664	https://www.rightmove.co.uk/properties/158248664#/?channel=RES_LET	475167527	345
346	2025-03-04	2025-03-09 00:00:00	1300	158248661	https://www.rightmove.co.uk/properties/158248661#/?channel=RES_LET	476167527	346
347	2025-03-04	2025-02-16 00:00:00	900	158247053	https://www.rightmove.co.uk/properties/158247053#/?channel=RES_LET	477167527	347
348	2025-03-04	2025-03-01 00:00:00	1200	158209700	https://www.rightmove.co.uk/properties/158209700#/?channel=RES_LET	478167527	348
349	2025-03-04	2025-02-26 00:00:00	1500	157947308	https://www.rightmove.co.uk/properties/157947308#/?channel=RES_LET	479167527	349
350	2025-03-04	2025-03-05 00:00:00	1650	157812758	https://www.rightmove.co.uk/properties/157812758#/?channel=RES_LET	480167527	350
351	2025-03-04	2025-03-05 00:00:00	850	158246936	https://www.rightmove.co.uk/properties/158246936#/?channel=RES_LET	481167527	351
352	2025-03-04	2025-03-05 00:00:00	775	158246939	https://www.rightmove.co.uk/properties/158246939#/?channel=RES_LET	482167527	352
353	2025-03-04	2025-03-21 00:00:00	1450	157730087	https://www.rightmove.co.uk/properties/157730087#/?channel=RES_LET	483167527	353
354	2025-03-04	2025-03-05 00:00:00	900	158246570	https://www.rightmove.co.uk/properties/158246570#/?channel=RES_LET	484167527	354
355	2025-03-04	2025-03-05 00:00:00	1000	158246576	https://www.rightmove.co.uk/properties/158246576#/?channel=RES_LET	485167527	355
356	2025-03-04	2025-03-05 00:00:00	1550	158246546	https://www.rightmove.co.uk/properties/158246546#/?channel=RES_LET	486167527	356
357	2025-02-13	2025-03-05 00:00:00	950	158246429	https://www.rightmove.co.uk/properties/158246429#/?channel=RES_LET	487167527	357
358	2025-02-13	2025-02-21 00:00:00	1300	158246327	https://www.rightmove.co.uk/properties/158246327#/?channel=RES_LET	488167527	358
359	2025-02-13	2025-04-07 00:00:00	1450	152217659	https://www.rightmove.co.uk/properties/152217659#/?channel=RES_LET	489167527	359
360	2025-02-13	2025-03-05 00:00:00	1150	152303648	https://www.rightmove.co.uk/properties/152303648#/?channel=RES_LET	490167527	360
361	2025-02-13	2025-02-21 00:00:00	1250	156101567	https://www.rightmove.co.uk/properties/156101567#/?channel=RES_LET	491167527	361
362	2025-02-13	2025-07-07 00:00:00	1600	156865772	https://www.rightmove.co.uk/properties/156865772#/?channel=RES_LET	492167527	362
363	2025-02-13	2025-07-07 00:00:00	4000	156865202	https://www.rightmove.co.uk/properties/156865202#/?channel=RES_LET	493167527	363
364	2025-02-13	2025-03-10 00:00:00	1250	158245880	https://www.rightmove.co.uk/properties/158245880#/?channel=RES_LET	494167527	364
365	2025-02-13	2025-03-24 00:00:00	975	158245883	https://www.rightmove.co.uk/properties/158245883#/?channel=RES_LET	495167527	365
366	2025-02-13	2025-03-05 00:00:00	1950	157441385	https://www.rightmove.co.uk/properties/157441385#/?channel=RES_LET	496167527	366
367	2025-02-13	2025-03-07 00:00:00	2550	158209733	https://www.rightmove.co.uk/properties/158209733#/?channel=RES_LET	497167527	367
368	2025-02-13	2025-04-10 00:00:00	975	158243906	https://www.rightmove.co.uk/properties/158243906#/?channel=RES_LET	498167527	368
369	2025-02-12	2025-03-05 00:00:00	1634	158154743	https://www.rightmove.co.uk/properties/158154743#/?channel=RES_LET	499167527	369
370	2025-02-13	2025-03-16 00:00:00	1180	158242631	https://www.rightmove.co.uk/properties/158242631#/?channel=RES_LET	500167527	370
371	2025-02-13	2025-03-05 00:00:00	1230	158242607	https://www.rightmove.co.uk/properties/158242607#/?channel=RES_LET	501167527	371
372	2025-02-13	2025-03-05 00:00:00	1260	158242568	https://www.rightmove.co.uk/properties/158242568#/?channel=RES_LET	502167527	372
373	2025-02-13	1900-01-01 00:00:00	1310	158242538	https://www.rightmove.co.uk/properties/158242538#/?channel=RES_LET	503167527	373
374	2025-02-13	2025-03-05 00:00:00	1450	158242502	https://www.rightmove.co.uk/properties/158242502#/?channel=RES_LET	504167527	374
375	2025-02-13	2025-03-05 00:00:00	1470	158242475	https://www.rightmove.co.uk/properties/158242475#/?channel=RES_LET	505167527	375
376	2025-02-13	2025-03-05 00:00:00	1475	158242454	https://www.rightmove.co.uk/properties/158242454#/?channel=RES_LET	506167527	376
377	2025-02-13	2025-03-05 00:00:00	1520	158242418	https://www.rightmove.co.uk/properties/158242418#/?channel=RES_LET	507167527	377
378	2025-02-13	2025-03-05 00:00:00	1650	158242376	https://www.rightmove.co.uk/properties/158242376#/?channel=RES_LET	508167527	378
379	2025-02-13	2025-03-05 00:00:00	2100	158242349	https://www.rightmove.co.uk/properties/158242349#/?channel=RES_LET	509167527	379
380	2025-02-13	2025-03-05 00:00:00	1350	156334721	https://www.rightmove.co.uk/properties/156334721#/?channel=RES_LET	510167527	380
381	2025-02-13	2025-03-15 00:00:00	1100	158239430	https://www.rightmove.co.uk/properties/158239430#/?channel=RES_LET	511167527	381
382	2025-02-13	2025-07-18 00:00:00	4030	158237939	https://www.rightmove.co.uk/properties/158237939#/?channel=RES_LET	512167527	382
383	2025-02-13	1900-01-01 00:00:00	1834	158237267	https://www.rightmove.co.uk/properties/158237267#/?channel=RES_LET	513167527	383
384	2025-02-13	1900-01-01 00:00:00	4757	158237264	https://www.rightmove.co.uk/properties/158237264#/?channel=RES_LET	514167527	384
385	2025-02-13	2025-09-15 00:00:00	4088	158237210	https://www.rightmove.co.uk/properties/158237210#/?channel=RES_LET	515167527	385
386	2025-02-13	1900-01-01 00:00:00	4920	158237201	https://www.rightmove.co.uk/properties/158237201#/?channel=RES_LET	516167527	386
387	2025-02-13	2025-10-06 00:00:00	4860	158237144	https://www.rightmove.co.uk/properties/158237144#/?channel=RES_LET	517167527	387
388	2025-02-13	2025-09-05 00:00:00	2811	158237099	https://www.rightmove.co.uk/properties/158237099#/?channel=RES_LET	518167527	388
389	2025-02-13	2025-03-07 00:00:00	1050	157486439	https://www.rightmove.co.uk/properties/157486439#/?channel=RES_LET	519167527	389
390	2025-02-13	2025-03-05 00:00:00	1500	158236628	https://www.rightmove.co.uk/properties/158236628#/?channel=RES_LET	520167527	390
391	2025-02-13	2025-03-05 00:00:00	1750	158236190	https://www.rightmove.co.uk/properties/158236190#/?channel=RES_LET	521167527	391
392	2025-02-13	2025-02-24 00:00:00	1350	158235476	https://www.rightmove.co.uk/properties/158235476#/?channel=RES_LET	522167527	392
393	2025-02-13	2025-03-03 00:00:00	2000	158234333	https://www.rightmove.co.uk/properties/158234333#/?channel=RES_LET	523167527	393
394	2025-01-23	1900-01-01 00:00:00	1020	158263691	https://www.rightmove.co.uk/properties/158263691#/?channel=RES_LET	524167527	394
395	2025-02-13	2025-03-05 00:00:00	1900	157715684	https://www.rightmove.co.uk/properties/157715684#/?channel=RES_LET	525167527	395
396	2025-02-13	2025-03-05 00:00:00	1800	158234825	https://www.rightmove.co.uk/properties/158234825#/?channel=RES_LET	526167527	396
397	2025-02-13	2025-02-21 00:00:00	1600	158234429	https://www.rightmove.co.uk/properties/158234429#/?channel=RES_LET	527167527	397
398	2025-02-13	2025-03-01 00:00:00	1200	158233670	https://www.rightmove.co.uk/properties/158233670#/?channel=RES_LET	528167527	398
399	2025-02-13	2025-03-05 00:00:00	1760	158211740	https://www.rightmove.co.uk/properties/158211740#/?channel=RES_LET	626167527	399
400	2025-02-13	1900-01-01 00:00:00	1050	65193055	https://www.rightmove.co.uk/properties/65193055#/?channel=RES_LET	529167527	400
401	2025-02-13	1900-01-01 00:00:00	2800	158232731	https://www.rightmove.co.uk/properties/158232731#/?channel=RES_LET	530167527	401
402	2025-02-13	2025-02-20 00:00:00	1750	158231555	https://www.rightmove.co.uk/properties/158231555#/?channel=RES_LET	531167527	402
403	2025-02-13	2025-03-05 00:00:00	1200	158232191	https://www.rightmove.co.uk/properties/158232191#/?channel=RES_LET	532167527	403
404	2025-02-13	1900-01-01 00:00:00	1500	158232038	https://www.rightmove.co.uk/properties/158232038#/?channel=RES_LET	533167527	404
405	2025-02-13	2025-03-05 00:00:00	1150	157836995	https://www.rightmove.co.uk/properties/157836995#/?channel=RES_LET	534167527	405
406	2025-02-13	2025-03-05 00:00:00	650	155906102	https://www.rightmove.co.uk/properties/155906102#/?channel=RES_LET	535167527	406
407	2025-02-13	2025-09-01 00:00:00	1600	158231288	https://www.rightmove.co.uk/properties/158231288#/?channel=RES_LET	536167527	407
408	2025-02-13	2025-03-05 00:00:00	1200	156083369	https://www.rightmove.co.uk/properties/156083369#/?channel=RES_LET	537167527	408
409	2025-02-13	2025-03-08 00:00:00	1200	158230709	https://www.rightmove.co.uk/properties/158230709#/?channel=RES_LET	538167527	409
410	2025-02-13	2025-03-05 00:00:00	1079	158230394	https://www.rightmove.co.uk/properties/158230394#/?channel=RES_LET	539167527	410
411	2025-02-13	2025-08-27 00:00:00	1700	158230391	https://www.rightmove.co.uk/properties/158230391#/?channel=RES_LET	540167527	411
412	2025-02-13	2025-03-05 00:00:00	2429	158229326	https://www.rightmove.co.uk/properties/158229326#/?channel=RES_LET	541167527	412
413	2025-02-13	2025-02-24 00:00:00	1200	158229611	https://www.rightmove.co.uk/properties/158229611#/?channel=RES_LET	542167527	413
414	2025-02-13	2025-02-16 00:00:00	1504	158229200	https://www.rightmove.co.uk/properties/158229200#/?channel=RES_LET	543167527	414
415	2025-02-13	2025-03-05 00:00:00	690	158229101	https://www.rightmove.co.uk/properties/158229101#/?channel=RES_LET	544167527	415
416	2025-02-13	2025-03-05 00:00:00	1871	158228255	https://www.rightmove.co.uk/properties/158228255#/?channel=RES_LET	545167527	416
417	2025-02-13	2025-03-05 00:00:00	950	157736438	https://www.rightmove.co.uk/properties/157736438#/?channel=RES_LET	546167527	417
418	2025-02-13	2025-03-05 00:00:00	935	158227907	https://www.rightmove.co.uk/properties/158227907#/?channel=RES_LET	547167527	418
419	2025-02-13	2025-03-05 00:00:00	750	156791336	https://www.rightmove.co.uk/properties/156791336#/?channel=RES_LET	548167527	419
420	2025-02-12	2025-03-05 00:00:00	2775	158160644	https://www.rightmove.co.uk/properties/158160644#/?channel=RES_LET	549167527	420
421	2025-02-13	2025-03-05 00:00:00	2100	158227688	https://www.rightmove.co.uk/properties/158227688#/?channel=RES_LET	550167527	421
422	2025-02-13	2025-03-05 00:00:00	1400	158227667	https://www.rightmove.co.uk/properties/158227667#/?channel=RES_LET	551167527	422
423	2025-02-13	2025-03-02 00:00:00	2300	158227577	https://www.rightmove.co.uk/properties/158227577#/?channel=RES_LET	552167527	423
424	2025-02-13	2025-03-03 00:00:00	1254	158227100	https://www.rightmove.co.uk/properties/158227100#/?channel=RES_LET	553167527	424
425	2025-02-13	2025-04-30 00:00:00	1100	146040914	https://www.rightmove.co.uk/properties/146040914#/?channel=RES_LET	554167527	425
426	2025-02-13	2025-02-20 00:00:00	1300	158227439	https://www.rightmove.co.uk/properties/158227439#/?channel=RES_LET	555167527	426
427	2025-02-13	1900-01-01 00:00:00	1100	31300546	https://www.rightmove.co.uk/properties/31300546#/?channel=RES_LET	556167527	427
428	2025-02-13	2025-03-01 00:00:00	1100	157216853	https://www.rightmove.co.uk/properties/157216853#/?channel=RES_LET	557167527	428
429	2025-02-13	2025-04-18 00:00:00	1500	86833722	https://www.rightmove.co.uk/properties/86833722#/?channel=RES_LET	558167527	429
430	2025-02-13	2025-03-05 00:00:00	2775	158227298	https://www.rightmove.co.uk/properties/158227298#/?channel=RES_LET	559167527	430
431	2025-02-13	2025-03-05 00:00:00	3250	158227292	https://www.rightmove.co.uk/properties/158227292#/?channel=RES_LET	560167527	431
432	2025-02-13	2025-03-01 00:00:00	1368	158226713	https://www.rightmove.co.uk/properties/158226713#/?channel=RES_LET	561167527	432
433	2025-02-13	2025-03-05 00:00:00	2900	158227286	https://www.rightmove.co.uk/properties/158227286#/?channel=RES_LET	562167527	433
434	2025-02-13	2025-03-05 00:00:00	1970	158227277	https://www.rightmove.co.uk/properties/158227277#/?channel=RES_LET	563167527	434
435	2025-02-13	2025-03-05 00:00:00	1535	158227259	https://www.rightmove.co.uk/properties/158227259#/?channel=RES_LET	564167527	435
436	2025-02-13	2025-04-29 00:00:00	1450	146717912	https://www.rightmove.co.uk/properties/146717912#/?channel=RES_LET	565167527	436
437	2025-02-13	2025-03-14 00:00:00	1200	158226806	https://www.rightmove.co.uk/properties/158226806#/?channel=RES_LET	566167527	437
438	2025-02-13	2025-02-22 00:00:00	1175	158226131	https://www.rightmove.co.uk/properties/158226131#/?channel=RES_LET	567167527	438
439	2025-02-13	2025-03-01 00:00:00	1249	158225867	https://www.rightmove.co.uk/properties/158225867#/?channel=RES_LET	568167527	439
440	2025-02-13	2025-03-01 00:00:00	1200	155717333	https://www.rightmove.co.uk/properties/155717333#/?channel=RES_LET	569167527	440
441	2025-02-13	2025-03-03 00:00:00	1145	158225756	https://www.rightmove.co.uk/properties/158225756#/?channel=RES_LET	570167527	441
442	2025-02-13	2025-03-31 00:00:00	2050	152366048	https://www.rightmove.co.uk/properties/152366048#/?channel=RES_LET	571167527	442
443	2025-02-13	2025-03-05 00:00:00	1283	158225705	https://www.rightmove.co.uk/properties/158225705#/?channel=RES_LET	572167527	443
444	2025-02-13	2025-03-05 00:00:00	1295	158225591	https://www.rightmove.co.uk/properties/158225591#/?channel=RES_LET	573167527	444
445	2025-02-13	2025-03-19 00:00:00	1250	158225456	https://www.rightmove.co.uk/properties/158225456#/?channel=RES_LET	575167527	445
446	2025-02-13	2025-03-03 00:00:00	950	156043943	https://www.rightmove.co.uk/properties/156043943#/?channel=RES_LET	576167527	446
447	2025-02-13	2025-07-01 00:00:00	2427	157161521	https://www.rightmove.co.uk/properties/157161521#/?channel=RES_LET	577167527	447
448	2025-02-13	2025-03-05 00:00:00	2140	158211569	https://www.rightmove.co.uk/properties/158211569#/?channel=RES_LET	627167527	448
449	2025-02-13	2025-04-09 00:00:00	1400	158225255	https://www.rightmove.co.uk/properties/158225255#/?channel=RES_LET	578167527	449
450	2025-02-13	2025-07-01 00:00:00	4160	157585385	https://www.rightmove.co.uk/properties/157585385#/?channel=RES_LET	580167527	450
451	2025-02-13	2025-02-20 00:00:00	1450	158224925	https://www.rightmove.co.uk/properties/158224925#/?channel=RES_LET	581167527	451
452	2025-02-13	2025-03-05 00:00:00	1150	157716611	https://www.rightmove.co.uk/properties/157716611#/?channel=RES_LET	582167527	452
453	2025-02-13	2025-03-05 00:00:00	1250	158224787	https://www.rightmove.co.uk/properties/158224787#/?channel=RES_LET	583167527	453
454	2025-02-13	2025-03-05 00:00:00	1139	158224229	https://www.rightmove.co.uk/properties/158224229#/?channel=RES_LET	584167527	454
455	2025-02-13	2025-03-05 00:00:00	1095	158120243	https://www.rightmove.co.uk/properties/158120243#/?channel=RES_LET	585167527	455
456	2025-02-13	2025-02-22 00:00:00	1550	158224265	https://www.rightmove.co.uk/properties/158224265#/?channel=RES_LET	586167527	456
457	2025-02-13	2025-03-08 00:00:00	1600	158223695	https://www.rightmove.co.uk/properties/158223695#/?channel=RES_LET	587167527	457
458	2025-02-13	2025-03-05 00:00:00	1500	158222114	https://www.rightmove.co.uk/properties/158222114#/?channel=RES_LET	588167527	458
459	2025-02-13	2025-02-25 00:00:00	2200	158222666	https://www.rightmove.co.uk/properties/158222666#/?channel=RES_LET	589167527	459
460	2025-02-13	2025-03-04 00:00:00	1095	158221799	https://www.rightmove.co.uk/properties/158221799#/?channel=RES_LET	590167527	460
461	2025-02-13	2025-03-13 00:00:00	900	158221646	https://www.rightmove.co.uk/properties/158221646#/?channel=RES_LET	591167527	461
462	2025-02-13	2025-03-05 00:00:00	1250	158221151	https://www.rightmove.co.uk/properties/158221151#/?channel=RES_LET	592167527	462
463	2025-02-13	1900-01-01 00:00:00	1885	158221010	https://www.rightmove.co.uk/properties/158221010#/?channel=RES_LET	593167527	463
464	2025-02-13	2025-03-11 00:00:00	1050	158220578	https://www.rightmove.co.uk/properties/158220578#/?channel=RES_LET	594167527	464
465	2025-02-13	2025-03-05 00:00:00	1000	158220125	https://www.rightmove.co.uk/properties/158220125#/?channel=RES_LET	595167527	465
466	2025-02-13	2025-03-18 00:00:00	1200	158219444	https://www.rightmove.co.uk/properties/158219444#/?channel=RES_LET	596167527	466
467	2025-02-13	2025-07-24 00:00:00	1370	158219402	https://www.rightmove.co.uk/properties/158219402#/?channel=RES_LET	597167527	467
468	2025-02-13	2025-03-05 00:00:00	1780	158219090	https://www.rightmove.co.uk/properties/158219090#/?channel=RES_LET	598167527	468
469	2024-09-02	2025-03-05 00:00:00	1950	151920767	https://www.rightmove.co.uk/properties/151920767#/?channel=RES_LET	599167527	469
470	2025-02-13	2025-07-01 00:00:00	1300	158218913	https://www.rightmove.co.uk/properties/158218913#/?channel=RES_LET	600167527	470
471	2025-02-13	2025-02-28 00:00:00	1300	158217761	https://www.rightmove.co.uk/properties/158217761#/?channel=RES_LET	601167527	471
472	2025-02-13	2025-03-14 00:00:00	1100	158217443	https://www.rightmove.co.uk/properties/158217443#/?channel=RES_LET	602167527	472
473	2025-02-13	2025-03-05 00:00:00	2200	157799717	https://www.rightmove.co.uk/properties/157799717#/?channel=RES_LET	603167527	473
474	2025-02-13	2025-03-05 00:00:00	895	158217266	https://www.rightmove.co.uk/properties/158217266#/?channel=RES_LET	604167527	474
475	2025-02-13	2025-03-05 00:00:00	850	158216969	https://www.rightmove.co.uk/properties/158216969#/?channel=RES_LET	605167527	475
476	2025-02-13	2025-04-16 00:00:00	1300	158216336	https://www.rightmove.co.uk/properties/158216336#/?channel=RES_LET	606167527	476
477	2025-02-13	2025-03-19 00:00:00	1695	158216174	https://www.rightmove.co.uk/properties/158216174#/?channel=RES_LET	607167527	477
478	2025-02-13	2025-02-23 00:00:00	810	47788765	https://www.rightmove.co.uk/properties/47788765#/?channel=RES_LET	608167527	478
479	2025-02-13	2025-07-01 00:00:00	672	157992689	https://www.rightmove.co.uk/properties/157992689#/?channel=RES_LET	609167527	479
480	2025-02-13	1900-01-01 00:00:00	1200	157897421	https://www.rightmove.co.uk/properties/157897421#/?channel=RES_LET	611167527	480
481	2025-02-13	2025-03-05 00:00:00	1150	155109551	https://www.rightmove.co.uk/properties/155109551#/?channel=RES_LET	612167527	481
482	2025-02-13	2025-02-27 00:00:00	1300	158214989	https://www.rightmove.co.uk/properties/158214989#/?channel=RES_LET	613167527	482
483	2025-02-13	1900-01-01 00:00:00	975	156188963	https://www.rightmove.co.uk/properties/156188963#/?channel=RES_LET	614167527	483
484	2025-02-13	2025-03-05 00:00:00	1200	158214194	https://www.rightmove.co.uk/properties/158214194#/?channel=RES_LET	615167527	484
485	2025-02-13	2025-03-05 00:00:00	1150	158214011	https://www.rightmove.co.uk/properties/158214011#/?channel=RES_LET	616167527	485
486	2025-02-13	2025-03-05 00:00:00	1100	158213246	https://www.rightmove.co.uk/properties/158213246#/?channel=RES_LET	617167527	486
487	2025-02-13	2025-03-10 00:00:00	925	158213018	https://www.rightmove.co.uk/properties/158213018#/?channel=RES_LET	618167527	487
488	2025-02-13	2025-08-29 00:00:00	2450	158212847	https://www.rightmove.co.uk/properties/158212847#/?channel=RES_LET	619167527	488
489	2025-02-13	2025-08-21 00:00:00	2300	158212358	https://www.rightmove.co.uk/properties/158212358#/?channel=RES_LET	620167527	489
490	2025-02-13	2025-02-26 00:00:00	1100	158212268	https://www.rightmove.co.uk/properties/158212268#/?channel=RES_LET	621167527	490
491	2025-02-13	1900-01-01 00:00:00	1755	158212256	https://www.rightmove.co.uk/properties/158212256#/?channel=RES_LET	622167527	491
492	2025-02-13	2025-02-25 00:00:00	1000	158212265	https://www.rightmove.co.uk/properties/158212265#/?channel=RES_LET	623167527	492
493	2025-02-12	1900-01-01 00:00:00	1625	87083313	https://www.rightmove.co.uk/properties/87083313#/?channel=RES_LET	624167527	493
494	2025-02-13	2025-08-14 00:00:00	2400	158212223	https://www.rightmove.co.uk/properties/158212223#/?channel=RES_LET	625167527	494
495	2025-02-13	2025-03-05 00:00:00	2480	158211539	https://www.rightmove.co.uk/properties/158211539#/?channel=RES_LET	628167527	495
496	2025-02-13	2025-02-16 00:00:00	1200	158209988	https://www.rightmove.co.uk/properties/158209988#/?channel=RES_LET	629167527	496
497	2025-02-13	2025-07-25 00:00:00	2350	158209817	https://www.rightmove.co.uk/properties/158209817#/?channel=RES_LET	630167527	497
498	2025-02-13	2025-07-24 00:00:00	2300	158209682	https://www.rightmove.co.uk/properties/158209682#/?channel=RES_LET	631167527	498
499	2025-02-13	2025-03-05 00:00:00	900	158209559	https://www.rightmove.co.uk/properties/158209559#/?channel=RES_LET	632167527	499
500	2025-02-13	2025-02-22 00:00:00	625	158209277	https://www.rightmove.co.uk/properties/158209277#/?channel=RES_LET	633167527	500
501	2025-02-13	2025-07-07 00:00:00	2513	158209202	https://www.rightmove.co.uk/properties/158209202#/?channel=RES_LET	634167527	501
502	2025-02-13	2025-03-05 00:00:00	1090	157821899	https://www.rightmove.co.uk/properties/157821899#/?channel=RES_LET	635167527	502
503	2025-02-13	2025-03-05 00:00:00	1650	157758944	https://www.rightmove.co.uk/properties/157758944#/?channel=RES_LET	636167527	503
504	2025-02-13	2025-03-05 00:00:00	1295	157272755	https://www.rightmove.co.uk/properties/157272755#/?channel=RES_LET	637167527	504
505	2025-02-13	2025-03-05 00:00:00	1150	158209040	https://www.rightmove.co.uk/properties/158209040#/?channel=RES_LET	638167527	505
506	2025-02-13	2025-03-10 00:00:00	1450	158208392	https://www.rightmove.co.uk/properties/158208392#/?channel=RES_LET	639167527	506
507	2025-02-13	2025-02-27 00:00:00	795	158208281	https://www.rightmove.co.uk/properties/158208281#/?channel=RES_LET	640167527	507
508	2025-02-13	1900-01-01 00:00:00	1800	157130870	https://www.rightmove.co.uk/properties/157130870#/?channel=RES_LET	641167527	508
509	2025-02-13	1900-01-01 00:00:00	1000	158207507	https://www.rightmove.co.uk/properties/158207507#/?channel=RES_LET	642167527	509
510	2025-02-13	2025-03-04 00:00:00	1050	158207342	https://www.rightmove.co.uk/properties/158207342#/?channel=RES_LET	643167527	510
511	2025-02-13	2025-03-05 00:00:00	900	158205998	https://www.rightmove.co.uk/properties/158205998#/?channel=RES_LET	644167527	511
512	2025-02-13	2025-03-05 00:00:00	1025	156675614	https://www.rightmove.co.uk/properties/156675614#/?channel=RES_LET	645167527	512
513	2025-02-13	2025-03-21 00:00:00	1000	158206061	https://www.rightmove.co.uk/properties/158206061#/?channel=RES_LET	646167527	513
514	2025-02-13	2025-03-05 00:00:00	1495	158205593	https://www.rightmove.co.uk/properties/158205593#/?channel=RES_LET	647167527	514
515	2025-02-13	2025-03-05 00:00:00	1295	158205587	https://www.rightmove.co.uk/properties/158205587#/?channel=RES_LET	648167527	515
516	2025-02-13	2025-03-05 00:00:00	758	158205269	https://www.rightmove.co.uk/properties/158205269#/?channel=RES_LET	650167527	516
517	2025-02-13	2025-03-04 00:00:00	1495	158204834	https://www.rightmove.co.uk/properties/158204834#/?channel=RES_LET	651167527	517
518	2025-02-13	2025-08-01 00:00:00	684	156534407	https://www.rightmove.co.uk/properties/156534407#/?channel=RES_LET	652167527	518
519	2025-02-13	2025-03-05 00:00:00	1200	157842287	https://www.rightmove.co.uk/properties/157842287#/?channel=RES_LET	653167527	519
520	2025-02-13	2025-03-05 00:00:00	1200	158205953	https://www.rightmove.co.uk/properties/158205953#/?channel=RES_LET	654167527	520
521	2025-02-13	2025-02-28 00:00:00	975	135169505	https://www.rightmove.co.uk/properties/135169505#/?channel=RES_LET	655167527	521
522	2025-02-13	1900-01-01 00:00:00	1250	158204729	https://www.rightmove.co.uk/properties/158204729#/?channel=RES_LET	656167527	522
523	2025-02-13	2025-03-05 00:00:00	1200	156962507	https://www.rightmove.co.uk/properties/156962507#/?channel=RES_LET	657167527	523
524	2025-02-13	2025-03-05 00:00:00	1450	158205329	https://www.rightmove.co.uk/properties/158205329#/?channel=RES_LET	658167527	524
525	2025-02-13	2025-03-05 00:00:00	758	158204663	https://www.rightmove.co.uk/properties/158204663#/?channel=RES_LET	659167527	525
526	2025-02-13	2025-03-21 00:00:00	1250	158205011	https://www.rightmove.co.uk/properties/158205011#/?channel=RES_LET	660167527	526
527	2025-02-13	2025-03-21 00:00:00	1200	158205017	https://www.rightmove.co.uk/properties/158205017#/?channel=RES_LET	661167527	527
528	2025-02-13	1900-01-01 00:00:00	1950	158089733	https://www.rightmove.co.uk/properties/158089733#/?channel=RES_LET	662167527	528
529	2025-02-13	1900-01-01 00:00:00	1950	158089694	https://www.rightmove.co.uk/properties/158089694#/?channel=RES_LET	663167527	529
530	2025-02-13	2025-04-14 00:00:00	1600	158204840	https://www.rightmove.co.uk/properties/158204840#/?channel=RES_LET	664167527	530
531	2025-02-13	2025-03-05 00:00:00	995	155429615	https://www.rightmove.co.uk/properties/155429615#/?channel=RES_LET	665167527	531
532	2025-02-13	1900-01-01 00:00:00	1350	116401295	https://www.rightmove.co.uk/properties/116401295#/?channel=RES_LET	666167527	532
533	2025-02-13	2025-03-05 00:00:00	1175	156590075	https://www.rightmove.co.uk/properties/156590075#/?channel=RES_LET	667167527	533
534	2025-02-13	2025-04-03 00:00:00	1150	158203877	https://www.rightmove.co.uk/properties/158203877#/?channel=RES_LET	668167527	534
535	2025-02-13	2025-03-05 00:00:00	1150	158044355	https://www.rightmove.co.uk/properties/158044355#/?channel=RES_LET	669167527	535
536	2025-02-13	2025-02-27 00:00:00	1050	157755707	https://www.rightmove.co.uk/properties/157755707#/?channel=RES_LET	670167527	536
537	2025-02-13	2025-03-05 00:00:00	710	157532921	https://www.rightmove.co.uk/properties/157532921#/?channel=RES_LET	671167527	537
538	2025-02-13	2025-02-21 00:00:00	700	156564938	https://www.rightmove.co.uk/properties/156564938#/?channel=RES_LET	672167527	538
539	2025-02-13	2025-03-05 00:00:00	1050	157007597	https://www.rightmove.co.uk/properties/157007597#/?channel=RES_LET	673167527	539
540	2025-02-13	2025-03-05 00:00:00	1050	157007537	https://www.rightmove.co.uk/properties/157007537#/?channel=RES_LET	675167527	540
541	2025-02-13	2025-03-05 00:00:00	1050	157007696	https://www.rightmove.co.uk/properties/157007696#/?channel=RES_LET	676167527	541
542	2025-02-13	2025-03-01 00:00:00	1100	157827479	https://www.rightmove.co.uk/properties/157827479#/?channel=RES_LET	677167527	542
543	2025-02-13	2025-03-05 00:00:00	1250	156885017	https://www.rightmove.co.uk/properties/156885017#/?channel=RES_LET	678167527	543
544	2025-02-13	2025-03-05 00:00:00	995	156418874	https://www.rightmove.co.uk/properties/156418874#/?channel=RES_LET	679167527	544
545	2025-02-13	2025-03-10 00:00:00	1050	157705316	https://www.rightmove.co.uk/properties/157705316#/?channel=RES_LET	680167527	545
546	2025-02-13	2025-03-05 00:00:00	1400	158200310	https://www.rightmove.co.uk/properties/158200310#/?channel=RES_LET	681167527	546
547	2025-02-13	2025-03-05 00:00:00	1100	158200271	https://www.rightmove.co.uk/properties/158200271#/?channel=RES_LET	682167527	547
548	2025-02-13	2025-03-07 00:00:00	925	158200250	https://www.rightmove.co.uk/properties/158200250#/?channel=RES_LET	683167527	548
549	2025-02-13	2025-03-05 00:00:00	1200	158200043	https://www.rightmove.co.uk/properties/158200043#/?channel=RES_LET	684167527	549
550	2025-02-13	2025-02-24 00:00:00	1230	157521692	https://www.rightmove.co.uk/properties/157521692#/?channel=RES_LET	685167527	550
551	2025-02-13	1900-01-01 00:00:00	825	158199917	https://www.rightmove.co.uk/properties/158199917#/?channel=RES_LET	686167527	551
552	2025-02-13	2025-03-05 00:00:00	1375	157585250	https://www.rightmove.co.uk/properties/157585250#/?channel=RES_LET	687167527	552
553	2025-02-13	1900-01-01 00:00:00	895	158199071	https://www.rightmove.co.uk/properties/158199071#/?channel=RES_LET	688167527	553
554	2025-02-13	2025-03-05 00:00:00	1590	158198933	https://www.rightmove.co.uk/properties/158198933#/?channel=RES_LET	689167527	554
555	2025-02-13	2025-04-01 00:00:00	1300	158198795	https://www.rightmove.co.uk/properties/158198795#/?channel=RES_LET	690167527	555
556	2025-02-13	2025-03-05 00:00:00	1600	156004028	https://www.rightmove.co.uk/properties/156004028#/?channel=RES_LET	691167527	556
557	2025-02-13	2025-07-01 00:00:00	4702	154424642	https://www.rightmove.co.uk/properties/154424642#/?channel=RES_LET	692167527	557
558	2025-02-13	1900-01-01 00:00:00	1148	158198075	https://www.rightmove.co.uk/properties/158198075#/?channel=RES_LET	693167527	558
559	2025-02-13	1900-01-01 00:00:00	1850	158197520	https://www.rightmove.co.uk/properties/158197520#/?channel=RES_LET	694167527	559
560	2025-02-13	2025-07-01 00:00:00	1595	158197505	https://www.rightmove.co.uk/properties/158197505#/?channel=RES_LET	695167527	560
561	2025-02-13	2025-03-05 00:00:00	2300	154501556	https://www.rightmove.co.uk/properties/154501556#/?channel=RES_LET	696167527	561
562	2025-02-13	2025-03-10 00:00:00	1550	158196845	https://www.rightmove.co.uk/properties/158196845#/?channel=RES_LET	697167527	562
563	2025-02-13	2025-03-05 00:00:00	2042	158196452	https://www.rightmove.co.uk/properties/158196452#/?channel=RES_LET	698167527	563
564	2025-02-13	2025-04-17 00:00:00	1350	158196236	https://www.rightmove.co.uk/properties/158196236#/?channel=RES_LET	700167527	564
565	2025-02-13	2025-03-05 00:00:00	1925	158195435	https://www.rightmove.co.uk/properties/158195435#/?channel=RES_LET	702167527	565
566	2025-02-13	2025-03-05 00:00:00	1405	158195393	https://www.rightmove.co.uk/properties/158195393#/?channel=RES_LET	703167527	566
567	2025-02-13	1900-01-01 00:00:00	2195	158195408	https://www.rightmove.co.uk/properties/158195408#/?channel=RES_LET	704167527	567
568	2025-02-13	2025-03-05 00:00:00	1200	157872416	https://www.rightmove.co.uk/properties/157872416#/?channel=RES_LET	705167527	568
569	2025-02-13	2025-03-05 00:00:00	1320	158195063	https://www.rightmove.co.uk/properties/158195063#/?channel=RES_LET	706167527	569
570	2025-02-13	2025-03-05 00:00:00	1260	158195036	https://www.rightmove.co.uk/properties/158195036#/?channel=RES_LET	707167527	570
571	2025-02-13	2025-03-05 00:00:00	1275	158195012	https://www.rightmove.co.uk/properties/158195012#/?channel=RES_LET	708167527	571
572	2025-02-13	2025-03-05 00:00:00	1270	158195021	https://www.rightmove.co.uk/properties/158195021#/?channel=RES_LET	709167527	572
573	2025-02-13	2025-03-05 00:00:00	1260	158194958	https://www.rightmove.co.uk/properties/158194958#/?channel=RES_LET	710167527	573
574	2025-02-13	2025-03-05 00:00:00	1250	158194928	https://www.rightmove.co.uk/properties/158194928#/?channel=RES_LET	711167527	574
575	2025-02-13	1900-01-01 00:00:00	1200	157817000	https://www.rightmove.co.uk/properties/157817000#/?channel=RES_LET	712167527	575
576	2025-02-13	2025-03-01 00:00:00	1100	157719656	https://www.rightmove.co.uk/properties/157719656#/?channel=RES_LET	713167527	576
577	2025-02-13	2025-03-10 00:00:00	950	158189951	https://www.rightmove.co.uk/properties/158189951#/?channel=RES_LET	714167527	577
578	2025-02-13	2025-03-14 00:00:00	2100	157772810	https://www.rightmove.co.uk/properties/157772810#/?channel=RES_LET	715167527	578
579	2025-02-13	2025-03-19 00:00:00	1450	157490306	https://www.rightmove.co.uk/properties/157490306#/?channel=RES_LET	716167527	579
580	2025-02-13	2025-03-05 00:00:00	1500	87070872	https://www.rightmove.co.uk/properties/87070872#/?channel=RES_LET	717167527	580
581	2025-02-13	2025-03-11 00:00:00	925	156992234	https://www.rightmove.co.uk/properties/156992234#/?channel=RES_LET	718167527	581
582	2025-02-13	2025-03-01 00:00:00	1200	158188148	https://www.rightmove.co.uk/properties/158188148#/?channel=RES_LET	719167527	582
583	2025-02-13	2025-03-07 00:00:00	900	158188004	https://www.rightmove.co.uk/properties/158188004#/?channel=RES_LET	720167527	583
584	2025-02-12	2025-03-05 00:00:00	1800	152841935	https://www.rightmove.co.uk/properties/152841935#/?channel=RES_LET	721167527	584
585	2025-02-12	2025-03-05 00:00:00	1300	157045388	https://www.rightmove.co.uk/properties/157045388#/?channel=RES_LET	722167527	585
586	2025-02-12	2025-03-05 00:00:00	1100	157489016	https://www.rightmove.co.uk/properties/157489016#/?channel=RES_LET	723167527	586
587	2025-02-10	1900-01-01 00:00:00	1595	158056742	https://www.rightmove.co.uk/properties/158056742#/?channel=RES_LET	724167527	587
588	2025-02-12	2025-03-05 00:00:00	975	157783517	https://www.rightmove.co.uk/properties/157783517#/?channel=RES_LET	725167527	588
589	2025-02-12	2025-07-01 00:00:00	4095	154612661	https://www.rightmove.co.uk/properties/154612661#/?channel=RES_LET	726167527	589
590	2025-02-12	2025-02-17 00:00:00	2100	158183606	https://www.rightmove.co.uk/properties/158183606#/?channel=RES_LET	727167527	590
591	2025-02-12	2025-02-21 00:00:00	950	156030881	https://www.rightmove.co.uk/properties/156030881#/?channel=RES_LET	728167527	591
592	2025-02-12	2025-02-21 00:00:00	1550	158183249	https://www.rightmove.co.uk/properties/158183249#/?channel=RES_LET	729167527	592
593	2025-02-12	2025-03-05 00:00:00	1375	158182004	https://www.rightmove.co.uk/properties/158182004#/?channel=RES_LET	730167527	593
594	2025-02-12	2025-02-23 00:00:00	975	158181971	https://www.rightmove.co.uk/properties/158181971#/?channel=RES_LET	731167527	594
595	2025-02-12	2025-03-05 00:00:00	1450	158181929	https://www.rightmove.co.uk/properties/158181929#/?channel=RES_LET	732167527	595
596	2025-02-12	2025-03-05 00:00:00	800	156837101	https://www.rightmove.co.uk/properties/156837101#/?channel=RES_LET	733167527	596
597	2025-02-12	2025-03-12 00:00:00	1325	157503287	https://www.rightmove.co.uk/properties/157503287#/?channel=RES_LET	734167527	597
598	2025-02-12	2025-03-10 00:00:00	1550	158180393	https://www.rightmove.co.uk/properties/158180393#/?channel=RES_LET	735167527	598
599	2025-02-12	2025-03-20 00:00:00	1400	158180240	https://www.rightmove.co.uk/properties/158180240#/?channel=RES_LET	736167527	599
600	2025-02-12	2025-02-17 00:00:00	1400	158178983	https://www.rightmove.co.uk/properties/158178983#/?channel=RES_LET	738167527	600
601	2025-02-12	2025-02-21 00:00:00	1100	158178908	https://www.rightmove.co.uk/properties/158178908#/?channel=RES_LET	739167527	601
602	2025-02-12	2025-03-05 00:00:00	1100	156457454	https://www.rightmove.co.uk/properties/156457454#/?channel=RES_LET	740167527	602
603	2025-02-12	2025-02-17 00:00:00	2000	158178320	https://www.rightmove.co.uk/properties/158178320#/?channel=RES_LET	741167527	603
604	2025-02-12	2025-03-05 00:00:00	950	156423461	https://www.rightmove.co.uk/properties/156423461#/?channel=RES_LET	742167527	604
605	2025-02-12	2025-03-05 00:00:00	800	158177951	https://www.rightmove.co.uk/properties/158177951#/?channel=RES_LET	743167527	605
606	2025-02-12	2025-03-01 00:00:00	1000	158177747	https://www.rightmove.co.uk/properties/158177747#/?channel=RES_LET	744167527	606
607	2025-02-12	1900-01-01 00:00:00	995	158177552	https://www.rightmove.co.uk/properties/158177552#/?channel=RES_LET	745167527	607
608	2025-02-12	2025-03-05 00:00:00	1150	156907328	https://www.rightmove.co.uk/properties/156907328#/?channel=RES_LET	746167527	608
609	2025-02-12	2025-07-01 00:00:00	3575	57088153	https://www.rightmove.co.uk/properties/57088153#/?channel=RES_LET	747167527	609
610	2025-02-12	2025-03-05 00:00:00	3275	158176919	https://www.rightmove.co.uk/properties/158176919#/?channel=RES_LET	748167527	610
611	2025-02-04	2025-03-05 00:00:00	1846	157466939	https://www.rightmove.co.uk/properties/157466939#/?channel=RES_LET	749167527	611
612	2025-02-12	2025-02-26 00:00:00	950	158176049	https://www.rightmove.co.uk/properties/158176049#/?channel=RES_LET	750167527	612
613	2025-02-12	2025-03-12 00:00:00	1300	158175791	https://www.rightmove.co.uk/properties/158175791#/?channel=RES_LET	751167527	613
614	2025-02-12	2025-03-05 00:00:00	1195	157753940	https://www.rightmove.co.uk/properties/157753940#/?channel=RES_LET	752167527	614
615	2025-02-12	2025-03-05 00:00:00	1400	158175494	https://www.rightmove.co.uk/properties/158175494#/?channel=RES_LET	753167527	615
616	2025-02-12	2025-02-17 00:00:00	1150	157618394	https://www.rightmove.co.uk/properties/157618394#/?channel=RES_LET	754167527	616
617	2025-02-12	2025-03-28 00:00:00	1450	158174996	https://www.rightmove.co.uk/properties/158174996#/?channel=RES_LET	755167527	617
618	2025-02-12	2025-03-05 00:00:00	1700	158170847	https://www.rightmove.co.uk/properties/158170847#/?channel=RES_LET	756167527	618
619	2025-02-12	2025-03-05 00:00:00	800	158173559	https://www.rightmove.co.uk/properties/158173559#/?channel=RES_LET	757167527	619
620	2025-02-12	2025-03-05 00:00:00	1500	158173115	https://www.rightmove.co.uk/properties/158173115#/?channel=RES_LET	758167527	620
621	2025-02-12	1900-01-01 00:00:00	1250	156108041	https://www.rightmove.co.uk/properties/156108041#/?channel=RES_LET	759167527	621
622	2025-02-12	2025-02-22 00:00:00	950	158172821	https://www.rightmove.co.uk/properties/158172821#/?channel=RES_LET	760167527	622
623	2025-02-12	2025-02-18 00:00:00	900	157795715	https://www.rightmove.co.uk/properties/157795715#/?channel=RES_LET	761167527	623
624	2025-02-12	2025-03-05 00:00:00	1150	157837517	https://www.rightmove.co.uk/properties/157837517#/?channel=RES_LET	762167527	624
625	2025-02-12	2025-04-20 00:00:00	1150	158171534	https://www.rightmove.co.uk/properties/158171534#/?channel=RES_LET	763167527	625
626	2025-02-12	2025-04-07 00:00:00	1080	158171531	https://www.rightmove.co.uk/properties/158171531#/?channel=RES_LET	764167527	626
627	2025-02-12	2025-03-05 00:00:00	1300	157273844	https://www.rightmove.co.uk/properties/157273844#/?channel=RES_LET	765167527	627
628	2025-02-12	2025-03-05 00:00:00	1600	158171126	https://www.rightmove.co.uk/properties/158171126#/?channel=RES_LET	766167527	628
629	2025-02-12	2025-02-22 00:00:00	1150	158170493	https://www.rightmove.co.uk/properties/158170493#/?channel=RES_LET	767167527	629
630	2025-02-12	2025-03-05 00:00:00	900	158105492	https://www.rightmove.co.uk/properties/158105492#/?channel=RES_LET	768167527	630
631	2025-02-12	2025-03-05 00:00:00	850	158170232	https://www.rightmove.co.uk/properties/158170232#/?channel=RES_LET	769167527	631
632	2025-02-12	2025-07-01 00:00:00	2514	152869622	https://www.rightmove.co.uk/properties/152869622#/?channel=RES_LET	770167527	632
633	2025-02-12	2025-03-21 00:00:00	895	158167298	https://www.rightmove.co.uk/properties/158167298#/?channel=RES_LET	771167527	633
634	2025-02-12	2025-03-05 00:00:00	1710	158167187	https://www.rightmove.co.uk/properties/158167187#/?channel=RES_LET	772167527	634
635	2025-02-12	2025-03-10 00:00:00	1100	158167046	https://www.rightmove.co.uk/properties/158167046#/?channel=RES_LET	773167527	635
636	2025-01-31	2025-04-25 00:00:00	1450	157638104	https://www.rightmove.co.uk/properties/157638104#/?channel=RES_LET	774167527	636
637	2025-02-12	2025-03-05 00:00:00	900	156852404	https://www.rightmove.co.uk/properties/156852404#/?channel=RES_LET	775167527	637
638	2025-02-12	1900-01-01 00:00:00	1450	154099571	https://www.rightmove.co.uk/properties/154099571#/?channel=RES_LET	776167527	638
639	2025-02-12	2025-02-28 00:00:00	1300	158166059	https://www.rightmove.co.uk/properties/158166059#/?channel=RES_LET	777167527	639
640	2025-02-12	2025-02-21 00:00:00	1600	158165651	https://www.rightmove.co.uk/properties/158165651#/?channel=RES_LET	778167527	640
641	2025-02-12	2025-03-05 00:00:00	1275	154367975	https://www.rightmove.co.uk/properties/154367975#/?channel=RES_LET	779167527	641
642	2025-02-12	2025-03-05 00:00:00	1500	158164559	https://www.rightmove.co.uk/properties/158164559#/?channel=RES_LET	780167527	642
643	2025-02-12	2025-02-19 00:00:00	1260	158163458	https://www.rightmove.co.uk/properties/158163458#/?channel=RES_LET	781167527	643
644	2025-02-12	2025-02-17 00:00:00	975	158164316	https://www.rightmove.co.uk/properties/158164316#/?channel=RES_LET	782167527	644
645	2025-02-12	2025-03-05 00:00:00	850	157824767	https://www.rightmove.co.uk/properties/157824767#/?channel=RES_LET	783167527	645
646	2025-02-12	2025-07-01 00:00:00	5070	158163848	https://www.rightmove.co.uk/properties/158163848#/?channel=RES_LET	784167527	646
647	2025-02-12	2025-03-05 00:00:00	650	158163620	https://www.rightmove.co.uk/properties/158163620#/?channel=RES_LET	785167527	647
648	2025-02-12	2025-03-05 00:00:00	1200	157302170	https://www.rightmove.co.uk/properties/157302170#/?channel=RES_LET	786167527	648
649	2025-02-12	2025-02-17 00:00:00	1400	156536897	https://www.rightmove.co.uk/properties/156536897#/?channel=RES_LET	787167527	649
650	2025-02-12	2025-03-13 00:00:00	1400	158163356	https://www.rightmove.co.uk/properties/158163356#/?channel=RES_LET	788167527	650
651	2025-02-12	2025-02-19 00:00:00	1575	158162417	https://www.rightmove.co.uk/properties/158162417#/?channel=RES_LET	789167527	651
652	2025-02-12	2025-02-19 00:00:00	1595	158164826	https://www.rightmove.co.uk/properties/158164826#/?channel=RES_LET	790167527	652
653	2025-02-12	1900-01-01 00:00:00	1100	153310466	https://www.rightmove.co.uk/properties/153310466#/?channel=RES_LET	791167527	653
654	2025-02-12	1900-01-01 00:00:00	1800	151144412	https://www.rightmove.co.uk/properties/151144412#/?channel=RES_LET	792167527	654
655	2025-02-12	2025-02-21 00:00:00	1300	158162390	https://www.rightmove.co.uk/properties/158162390#/?channel=RES_LET	793167527	655
656	2025-02-12	2025-03-05 00:00:00	1170	158162072	https://www.rightmove.co.uk/properties/158162072#/?channel=RES_LET	794167527	656
657	2025-02-12	1900-01-01 00:00:00	1150	158161829	https://www.rightmove.co.uk/properties/158161829#/?channel=RES_LET	795167527	657
658	2025-02-12	2025-02-19 00:00:00	1995	158161898	https://www.rightmove.co.uk/properties/158161898#/?channel=RES_LET	796167527	658
659	2025-02-12	2025-03-05 00:00:00	1650	156513749	https://www.rightmove.co.uk/properties/156513749#/?channel=RES_LET	797167527	659
660	2025-02-12	2025-02-24 00:00:00	1200	156378338	https://www.rightmove.co.uk/properties/156378338#/?channel=RES_LET	798167527	660
661	2025-02-12	2025-07-01 00:00:00	4420	155418977	https://www.rightmove.co.uk/properties/155418977#/?channel=RES_LET	800167527	661
662	2025-02-12	2025-07-01 00:00:00	5790	154838762	https://www.rightmove.co.uk/properties/154838762#/?channel=RES_LET	801167527	662
663	2025-02-12	2025-07-01 00:00:00	3952	155853380	https://www.rightmove.co.uk/properties/155853380#/?channel=RES_LET	803167527	663
664	2025-02-12	2025-03-05 00:00:00	1150	157175582	https://www.rightmove.co.uk/properties/157175582#/?channel=RES_LET	805167527	664
665	2025-02-12	2025-02-21 00:00:00	1500	158160089	https://www.rightmove.co.uk/properties/158160089#/?channel=RES_LET	806167527	665
666	2025-02-12	2025-07-01 00:00:00	3575	154914029	https://www.rightmove.co.uk/properties/154914029#/?channel=RES_LET	807167527	666
667	2025-02-12	2025-07-01 00:00:00	3792	155809649	https://www.rightmove.co.uk/properties/155809649#/?channel=RES_LET	808167527	667
668	2025-02-12	2025-07-01 00:00:00	3792	155723636	https://www.rightmove.co.uk/properties/155723636#/?channel=RES_LET	809167527	668
669	2025-02-12	2025-03-22 00:00:00	1200	158159759	https://www.rightmove.co.uk/properties/158159759#/?channel=RES_LET	810167527	669
670	2025-02-12	2025-03-05 00:00:00	1200	158159612	https://www.rightmove.co.uk/properties/158159612#/?channel=RES_LET	811167527	670
671	2025-02-12	2025-06-04 00:00:00	1185	158159573	https://www.rightmove.co.uk/properties/158159573#/?channel=RES_LET	812167527	671
672	2025-02-12	2025-03-10 00:00:00	1365	158096729	https://www.rightmove.co.uk/properties/158096729#/?channel=RES_LET	813167527	672
673	2025-02-12	2025-03-05 00:00:00	925	156381410	https://www.rightmove.co.uk/properties/156381410#/?channel=RES_LET	814167527	673
674	2025-02-12	2025-04-22 00:00:00	1185	158159522	https://www.rightmove.co.uk/properties/158159522#/?channel=RES_LET	815167527	674
675	2025-02-12	2025-04-28 00:00:00	1125	158159489	https://www.rightmove.co.uk/properties/158159489#/?channel=RES_LET	816167527	675
676	2025-02-12	2025-04-03 00:00:00	1420	158096786	https://www.rightmove.co.uk/properties/158096786#/?channel=RES_LET	817167527	676
677	2025-02-12	2025-03-05 00:00:00	1365	158096669	https://www.rightmove.co.uk/properties/158096669#/?channel=RES_LET	818167527	677
678	2025-02-12	2025-03-05 00:00:00	1440	158096486	https://www.rightmove.co.uk/properties/158096486#/?channel=RES_LET	819167527	678
679	2025-02-12	2025-04-07 00:00:00	1135	158159435	https://www.rightmove.co.uk/properties/158159435#/?channel=RES_LET	820167527	679
680	2025-02-12	2025-04-30 00:00:00	1390	158096390	https://www.rightmove.co.uk/properties/158096390#/?channel=RES_LET	821167527	680
681	2025-02-12	2025-04-02 00:00:00	1440	158096318	https://www.rightmove.co.uk/properties/158096318#/?channel=RES_LET	822167527	681
682	2025-02-12	2025-03-07 00:00:00	1440	158096246	https://www.rightmove.co.uk/properties/158096246#/?channel=RES_LET	823167527	682
683	2025-02-12	2025-02-21 00:00:00	900	158159411	https://www.rightmove.co.uk/properties/158159411#/?channel=RES_LET	825167527	683
684	2025-02-12	2025-03-28 00:00:00	1125	158159405	https://www.rightmove.co.uk/properties/158159405#/?channel=RES_LET	826167527	684
685	2025-02-12	2025-02-28 00:00:00	1050	156564860	https://www.rightmove.co.uk/properties/156564860#/?channel=RES_LET	827167527	685
686	2025-02-12	2025-02-22 00:00:00	1155	158159660	https://www.rightmove.co.uk/properties/158159660#/?channel=RES_LET	829167527	686
687	2025-02-12	2025-02-26 00:00:00	1125	158159276	https://www.rightmove.co.uk/properties/158159276#/?channel=RES_LET	830167527	687
688	2025-02-12	2025-03-05 00:00:00	1350	157686131	https://www.rightmove.co.uk/properties/157686131#/?channel=RES_LET	831167527	688
689	2025-02-12	2025-02-19 00:00:00	1125	158159237	https://www.rightmove.co.uk/properties/158159237#/?channel=RES_LET	832167527	689
690	2025-02-12	2025-02-24 00:00:00	1400	156689513	https://www.rightmove.co.uk/properties/156689513#/?channel=RES_LET	833167527	690
691	2025-02-12	2025-03-05 00:00:00	1622	158158415	https://www.rightmove.co.uk/properties/158158415#/?channel=RES_LET	834167527	691
692	2025-02-12	2025-02-27 00:00:00	1050	157244120	https://www.rightmove.co.uk/properties/157244120#/?channel=RES_LET	835167527	692
693	2025-02-12	2025-02-24 00:00:00	950	158158544	https://www.rightmove.co.uk/properties/158158544#/?channel=RES_LET	836167527	693
694	2025-02-12	2025-04-14 00:00:00	1250	158158421	https://www.rightmove.co.uk/properties/158158421#/?channel=RES_LET	837167527	694
695	2025-02-12	2025-02-21 00:00:00	1300	158158271	https://www.rightmove.co.uk/properties/158158271#/?channel=RES_LET	838167527	695
696	2025-02-12	2025-03-05 00:00:00	1480	157824071	https://www.rightmove.co.uk/properties/157824071#/?channel=RES_LET	839167527	696
697	2025-02-12	2025-03-05 00:00:00	2475	158157815	https://www.rightmove.co.uk/properties/158157815#/?channel=RES_LET	840167527	697
698	2025-02-12	1900-01-01 00:00:00	1450	157609715	https://www.rightmove.co.uk/properties/157609715#/?channel=RES_LET	841167527	698
699	2025-02-12	2025-03-05 00:00:00	1014	158157068	https://www.rightmove.co.uk/properties/158157068#/?channel=RES_LET	842167527	699
700	2025-02-12	2025-03-05 00:00:00	1900	157990625	https://www.rightmove.co.uk/properties/157990625#/?channel=RES_LET	843167527	700
701	2025-02-12	2025-09-12 00:00:00	3950	158157407	https://www.rightmove.co.uk/properties/158157407#/?channel=RES_LET	844167527	701
702	2025-02-12	2025-03-05 00:00:00	1900	157987499	https://www.rightmove.co.uk/properties/157987499#/?channel=RES_LET	845167527	702
703	2025-02-12	1900-01-01 00:00:00	1450	158157032	https://www.rightmove.co.uk/properties/158157032#/?channel=RES_LET	846167527	703
704	2025-02-12	2025-03-05 00:00:00	1140	158156816	https://www.rightmove.co.uk/properties/158156816#/?channel=RES_LET	847167527	704
705	2025-02-12	2025-03-05 00:00:00	1900	157586606	https://www.rightmove.co.uk/properties/157586606#/?channel=RES_LET	850167527	705
706	2025-02-12	2025-03-05 00:00:00	1900	157627043	https://www.rightmove.co.uk/properties/157627043#/?channel=RES_LET	851167527	706
707	2025-02-12	2025-03-05 00:00:00	1900	157624280	https://www.rightmove.co.uk/properties/157624280#/?channel=RES_LET	852167527	707
708	2025-02-12	2025-03-05 00:00:00	1150	157754567	https://www.rightmove.co.uk/properties/157754567#/?channel=RES_LET	853167527	708
709	2025-02-12	2025-03-05 00:00:00	1900	157610915	https://www.rightmove.co.uk/properties/157610915#/?channel=RES_LET	854167527	709
710	2025-02-12	2025-03-05 00:00:00	1150	157477715	https://www.rightmove.co.uk/properties/157477715#/?channel=RES_LET	855167527	710
711	2025-02-12	1900-01-01 00:00:00	1148	87084456	https://www.rightmove.co.uk/properties/87084456#/?channel=RES_LET	856167527	711
712	2025-02-12	2025-03-17 00:00:00	750	142197284	https://www.rightmove.co.uk/properties/142197284#/?channel=RES_LET	857167527	712
713	2025-02-12	2025-03-18 00:00:00	1000	158153744	https://www.rightmove.co.uk/properties/158153744#/?channel=RES_LET	858167527	713
714	2025-02-12	1900-01-01 00:00:00	1050	158153567	https://www.rightmove.co.uk/properties/158153567#/?channel=RES_LET	859167527	714
715	2025-02-12	2025-03-23 00:00:00	950	158153414	https://www.rightmove.co.uk/properties/158153414#/?channel=RES_LET	860167527	715
716	2025-02-12	2025-03-05 00:00:00	1400	158152991	https://www.rightmove.co.uk/properties/158152991#/?channel=RES_LET	861167527	716
717	2025-02-12	2025-03-17 00:00:00	1250	157923887	https://www.rightmove.co.uk/properties/157923887#/?channel=RES_LET	862167527	717
718	2025-02-12	1900-01-01 00:00:00	1880	158151632	https://www.rightmove.co.uk/properties/158151632#/?channel=RES_LET	863167527	718
719	2025-02-12	2025-02-21 00:00:00	1150	157215911	https://www.rightmove.co.uk/properties/157215911#/?channel=RES_LET	864167527	719
720	2025-02-12	2025-03-18 00:00:00	1450	158151542	https://www.rightmove.co.uk/properties/158151542#/?channel=RES_LET	865167527	720
721	2025-02-12	2025-03-05 00:00:00	1000	158151194	https://www.rightmove.co.uk/properties/158151194#/?channel=RES_LET	866167527	721
722	2025-02-12	2025-09-05 00:00:00	841	158151017	https://www.rightmove.co.uk/properties/158151017#/?channel=RES_LET	867167527	722
723	2025-02-12	2025-03-05 00:00:00	950	156848327	https://www.rightmove.co.uk/properties/156848327#/?channel=RES_LET	868167527	723
724	2025-02-12	2025-03-05 00:00:00	1950	158150069	https://www.rightmove.co.uk/properties/158150069#/?channel=RES_LET	869167527	724
725	2025-02-12	2025-03-05 00:00:00	2900	156434465	https://www.rightmove.co.uk/properties/156434465#/?channel=RES_LET	870167527	725
726	2025-02-12	2025-02-21 00:00:00	1400	154846988	https://www.rightmove.co.uk/properties/154846988#/?channel=RES_LET	871167527	726
727	2025-02-12	1900-01-01 00:00:00	1500	158148026	https://www.rightmove.co.uk/properties/158148026#/?channel=RES_LET	872167527	727
728	2025-02-12	2025-03-05 00:00:00	925	157276196	https://www.rightmove.co.uk/properties/157276196#/?channel=RES_LET	873167527	728
729	2025-02-12	2025-03-05 00:00:00	2250	87083886	https://www.rightmove.co.uk/properties/87083886#/?channel=RES_LET	875167527	729
730	2025-02-12	2025-03-05 00:00:00	1350	156923966	https://www.rightmove.co.uk/properties/156923966#/?channel=RES_LET	876167527	730
731	2025-02-12	2025-02-28 00:00:00	950	87083469	https://www.rightmove.co.uk/properties/87083469#/?channel=RES_LET	877167527	731
732	2025-02-12	2025-07-01 00:00:00	2253	87083442	https://www.rightmove.co.uk/properties/87083442#/?channel=RES_LET	878167527	732
733	2025-02-12	2025-03-07 00:00:00	1250	87083304	https://www.rightmove.co.uk/properties/87083304#/?channel=RES_LET	880167527	733
734	2025-02-12	2025-03-10 00:00:00	1350	87082764	https://www.rightmove.co.uk/properties/87082764#/?channel=RES_LET	881167527	734
735	2025-02-12	2025-03-05 00:00:00	1390	87082554	https://www.rightmove.co.uk/properties/87082554#/?channel=RES_LET	882167527	735
736	2025-02-12	2025-02-24 00:00:00	1170	153997127	https://www.rightmove.co.uk/properties/153997127#/?channel=RES_LET	883167527	736
737	2025-02-12	2025-03-05 00:00:00	1150	157707785	https://www.rightmove.co.uk/properties/157707785#/?channel=RES_LET	884167527	737
738	2025-02-12	2025-03-05 00:00:00	1400	87082197	https://www.rightmove.co.uk/properties/87082197#/?channel=RES_LET	885167527	738
739	2025-02-12	2025-03-05 00:00:00	1650	87081051	https://www.rightmove.co.uk/properties/87081051#/?channel=RES_LET	886167527	739
740	2025-02-12	1900-01-01 00:00:00	2700	76959380	https://www.rightmove.co.uk/properties/76959380#/?channel=RES_LET	887167527	740
741	2025-02-12	2025-03-05 00:00:00	1500	157889114	https://www.rightmove.co.uk/properties/157889114#/?channel=RES_LET	888167527	741
742	2025-02-12	1900-01-01 00:00:00	1920	86986682	https://www.rightmove.co.uk/properties/86986682#/?channel=RES_LET	889167527	742
743	2025-02-12	2025-03-21 00:00:00	1100	145040864	https://www.rightmove.co.uk/properties/145040864#/?channel=RES_LET	890167527	743
744	2025-02-12	2025-07-01 00:00:00	1900	130462787	https://www.rightmove.co.uk/properties/130462787#/?channel=RES_LET	891167527	744
745	2025-02-12	2025-03-05 00:00:00	850	157175651	https://www.rightmove.co.uk/properties/157175651#/?channel=RES_LET	892167527	745
746	2025-02-12	2025-03-12 00:00:00	1500	87079995	https://www.rightmove.co.uk/properties/87079995#/?channel=RES_LET	893167527	746
747	2025-02-12	2025-03-19 00:00:00	1200	87079767	https://www.rightmove.co.uk/properties/87079767#/?channel=RES_LET	894167527	747
748	2025-02-12	2025-03-05 00:00:00	1150	104282804	https://www.rightmove.co.uk/properties/104282804#/?channel=RES_LET	895167527	748
749	2025-02-12	2025-07-01 00:00:00	4900	155972312	https://www.rightmove.co.uk/properties/155972312#/?channel=RES_LET	896167527	749
750	2025-02-12	2025-03-21 00:00:00	825	87078732	https://www.rightmove.co.uk/properties/87078732#/?channel=RES_LET	897167527	750
751	2025-02-12	2025-09-05 00:00:00	776	87078699	https://www.rightmove.co.uk/properties/87078699#/?channel=RES_LET	898167527	751
752	2025-02-11	2025-04-09 00:00:00	1700	158092766	https://www.rightmove.co.uk/properties/158092766#/?channel=RES_LET	899167527	752
753	2025-02-12	2025-03-05 00:00:00	1350	87078282	https://www.rightmove.co.uk/properties/87078282#/?channel=RES_LET	900167527	753
754	2025-02-12	2025-03-05 00:00:00	1050	156664946	https://www.rightmove.co.uk/properties/156664946#/?channel=RES_LET	901167527	754
755	2025-02-12	2025-04-14 00:00:00	995	158147615	https://www.rightmove.co.uk/properties/158147615#/?channel=RES_LET	902167527	755
756	2025-02-12	2025-07-01 00:00:00	4030	154123958	https://www.rightmove.co.uk/properties/154123958#/?channel=RES_LET	903167527	756
757	2025-02-12	2025-03-05 00:00:00	1200	155836268	https://www.rightmove.co.uk/properties/155836268#/?channel=RES_LET	904167527	757
\.


--
-- Data for Name: locations_df_sil; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."locations_df_sil" ("id", "full_address", "latitude", "longitude", "property_address") FROM stdin;
1	123 Main St, London	51.315742	0.301732	Apartment 12, Main St
2	456 High St, Manchester	51.943809	-0.795369	Flat 5B, High St
3	789 Park Ave, Birmingham	52.519341	-1.410278	Suite 301, Park Ave
4	101 Elm St, Leeds	51.447869	-1.096223	House 22, Elm St
5	202 Maple Rd, Bristol	52.357503	-1.41931	Cottage 9, Maple Rd
\.


--
-- Data for Name: properties_df_sil; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."properties_df_sil" ("id", "property_type", "bedrooms", "bathrooms", "locations_df_sil_id", "agents_df_sil_id") FROM stdin;
\.


--
-- Data for Name: listings_df_sil; Type: TABLE DATA; Schema: silver; Owner: postgres
--

COPY "silver"."listings_df_sil" ("id", "parsed_post_date", "parsed_available_date", "monthly_price", "listing_id", "url", "properties_df_sil_id") FROM stdin;
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

SELECT pg_catalog.setval('"bronze"."rightmove_data_brz_id_seq"', 904, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."properties_id_seq"', 1, false);


--
-- Name: query_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."query_logs_id_seq"', 1, false);


--
-- Name: agents_df_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."agents_df_id_seq"', 757, true);


--
-- Name: agents_df_sil_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."agents_df_sil_id_seq"', 18, true);


--
-- Name: listings_df_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."listings_df_id_seq"', 757, true);


--
-- Name: listings_df_sil_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."listings_df_sil_id_seq"', 1, false);


--
-- Name: locations_df_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."locations_df_id_seq"', 951, true);


--
-- Name: locations_df_sil_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."locations_df_sil_id_seq"', 5, true);


--
-- Name: properties_df_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."properties_df_id_seq"', 757, true);


--
-- Name: properties_df_sil_id_seq; Type: SEQUENCE SET; Schema: silver; Owner: postgres
--

SELECT pg_catalog.setval('"silver"."properties_df_sil_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
