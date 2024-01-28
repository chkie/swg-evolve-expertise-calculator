--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17
-- Dumped by pg_dump version 14.10 (Homebrew)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: professions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE [IF NOT EXISTS] public.professions (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.professions OWNER TO admin;

--
-- Name: professions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.professions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.professions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: skills; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE [IF NOT EXISTS] public.skills (
    id integer NOT NULL,
    name character varying(50),
    min_spend_points smallint,
    required_skill smallint,
    "position" point NOT NULL,
    profession_id integer NOT NULL
);


ALTER TABLE public.skills OWNER TO admin;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.skills ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: xp_types; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE [IF NOT EXISTS] public.xp_types (
    xp_type_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.xp_types OWNER TO admin;

--
-- Name: xp_types_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public.xp_types ALTER COLUMN xp_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.xp_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: professions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.professions (id, name) FROM stdin;
1	Brawler
2	Marksman
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.skills (id, name, min_spend_points, required_skill, "position", profession_id) FROM stdin;
4	Endurance	\N	\N	(0,0)	2
5	Evasion	\N	\N	(0,4)	2
8	Marksmanship\n	\N	\N	(0,2)	2
9	Pain Tolerance	\N	\N	(0,6)	2
11	Assault	\N	\N	(1,2)	2
12	Cripple	\N	\N	(1,3)	2
13	Ambush	\N	\N	(1,4)	2
15	Rifles I: Rifle Efficiency	\N	\N	(2,0)	2
16	Pistols I: Pistol Efficiency	\N	\N	(2,2)	2
18	Carbines I: Carbine Efficiency	\N	\N	(2,4)	2
20	Rifles II: Rifle Damage	\N	\N	(3,0)	2
21	Pistols II: Pistol Damage	\N	\N	(3,2)	2
22	Carbines II: Carbine Damage	\N	\N	(3,4)	2
10	Ranged Support III: Melee Defense	\N	\N	(1,1)	2
14	Ranged Support II: Ranged Defense	\N	\N	(1,5)	2
19	Heavy Weapons I: Heavy Weapon Efficiency	\N	\N	(2,6)	2
23	Heavy Weapons II: Heavy Weapon Damage	\N	\N	(3,6)	2
24	Rifles III: Novice Rifleman	\N	\N	(4,0)	2
25	Pistols III: Novice Pistoleer	\N	\N	(4,2)	2
26	Carbines III: Novce Carbineer	\N	\N	(4,4)	2
27	Heavy Weapons III: Heavy Weapon Specialist	\N	\N	(4,6)	2
28	Master Marksman	\N	\N	(5,3)	2
3	Enhanced Constitution	\N	\N	(0,2)	1
2	Enhanced Strength	\N	\N	(0,0)	1
29	Enhanced Agility	\N	\N	(0,4)	1
30	Enhanced Stamina	\N	\N	(0,6)	1
31	Melee Defense	\N	\N	(1,1)	1
32	Unarmed Strike	\N	\N	(1,2)	1
33	Innate Armor	\N	\N	(1,3)	1
34	Melee Strike	\N	\N	(1,4)	1
35	Ranged Defense	\N	\N	(1,5)	1
36	Unarmed I: Unarmed Efficiency	\N	\N	(2,0)	1
37	One-handed I: One-handed Efficiency	\N	\N	(2,2)	1
38	Two-handed I: Two-handed Efficiency	\N	\N	(2,4)	1
39	Polearms I: Polearm Efficiency	\N	\N	(2,6)	1
40	Unarmed II: Unarmed Power	\N	\N	(3,0)	1
41	One-handed II: One-handed Power	\N	\N	(3,2)	1
42	Two-handed II: Two-handed Power	\N	\N	(3,4)	1
43	Polearms II: Polearm Power	\N	\N	(3,6)	1
44	Unarmed III: Teras Kasi Novice	\N	\N	(4,0)	1
45	One-handed III: Novce Fencer	\N	\N	(4,2)	1
46	Two-handed III: Novice Swordsman	\N	\N	(4,4)	1
47	Polearms III: Novice Pikeman	\N	\N	(4,6)	1
48	Master Brawler	\N	\N	(5,3)	1
\.


--
-- Data for Name: xp_types; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.xp_types (xp_type_id, name) FROM stdin;
1	Combat XP
2	Unarmed XP
3	One-handed XP
4	Two-handed XP
5	Polearm XP
6	Rifle XP
7	Pistol XP
8	Carbine XP
\.


--
-- Name: professions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.professions_id_seq', 2, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.skills_id_seq', 48, true);


--
-- Name: xp_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.xp_types_id_seq', 8, true);


--
-- Name: professions professions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_pkey PRIMARY KEY (id);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: xp_types xp_types_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.xp_types
    ADD CONSTRAINT xp_types_pkey PRIMARY KEY (xp_type_id);


--
-- Name: skills fk_profession; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT fk_profession FOREIGN KEY (profession_id) REFERENCES public.professions(id);


--
-- PostgreSQL database dump complete
--

