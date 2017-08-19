--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: mjyatco
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO mjyatco;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: mjyatco
--

CREATE TABLE jobs (
    id bigint NOT NULL,
    title character varying,
    company character varying,
    location character varying,
    description text,
    jobtype character varying,
    price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE jobs OWNER TO mjyatco;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: mjyatco
--

CREATE SEQUENCE jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jobs_id_seq OWNER TO mjyatco;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mjyatco
--

ALTER SEQUENCE jobs_id_seq OWNED BY jobs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mjyatco
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO mjyatco;

--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: mjyatco
--

ALTER TABLE ONLY jobs ALTER COLUMN id SET DEFAULT nextval('jobs_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: mjyatco
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-08-19 15:55:36.250456	2017-08-19 15:55:36.250456
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: mjyatco
--

COPY jobs (id, title, company, location, description, jobtype, price, created_at, updated_at) FROM stdin;
1	Artisan Jeweler	Chris Ploof Designs	Nolita, NY	Our jewelery is crafted in the mokume game-style. Mokume gane is an ancient Japanese technique that bonds numerous layers of precious metals into a single piece that is then worked into beautiful patterns. The name means 'wood-pattern metal'. Mokume gane created by Chris Ploof Designs is fused by traditional methods, using heat and pressure. We don’t buy mokume from other makers, and we don’t rely on solder to hold our layers together. By hand-crafting our mokume, we are able to produce the highest quality rings, second to none. Our unique patterns and designs showcase the natural beauty of the material itself.	Contractual Work	\N	2017-08-19 16:02:10.191123	2017-08-19 16:02:10.191123
2	Caterer	Brent Newsom Caterer	East Hampton, NY	No matter what your special event is... wedding, anniversary, seasonal party, birthday, bar/bat mitzvah and everything in between, Brent Newsom Caterer is the perfect choice to make sure every aspect of your experience goes exactly as you imagined it. Our staff and services can create any theme and menu you desire. Contact us today for great party ideas and creative answers to your catering needs.	Contractual Work	\N	2017-08-19 16:02:10.196629	2017-08-19 16:02:10.196629
3	Yoga Instructor	Dhyana Masla Yoga	Lower East Side, NY	Raised on the path of Bhakti Yoga, Dhyana brings the depth of inquisition into her classes, offering opportunities to cultivate a relationship with our multi-faceted humanness while simultaneously taking a step back, a step deeper into the truth of who we really are; beyond the stories, the fears, and the limitations. Having a deep understanding of the nature of the mind and its relationship to the Self, her classes combine non-sectarian yoga philosophy with an integrated experience, sharing timeless Truths in an easy-to-apply and accessible way.	Contractual Work	\N	2017-08-19 16:02:10.198784	2017-08-19 16:02:10.198784
4	Locksmith	Johnson's Hardware Shop.	Astoria, NY	We have a full service locksmith company servicing commercial, residential, and automotive needs. Our locksmiths are A.L.O.A. certified registered and bonded. We can cut keys by code, rekey locks, install deadbolts, lockouts, safe sales and service and much more. We also have a fully equipped mobile shop.	Contractual Work	\N	2017-08-19 16:02:10.200508	2017-08-19 16:02:10.200508
5	Web Designer	Freelance	Williamsburg, NY	I'm a classically trained web designer who is well-versed in the latest frontend and backend technologies. I can design and build fully-functional websites from scratch according to the clients' need. My specialty involves integrating dynamic features seamlessly into the user's experience with your product	Contractual Work or Full-time	\N	2017-08-19 16:02:10.20227	2017-08-19 16:02:10.20227
6	Painter	Scott Anthony Painting.	Midtown East, NY	Specializing in: Interior/Exterior Painting, Spackling, Wallpaper Removal, Sheetrock Repair, Tile -\nAll Phases of Carpentry. Door Installations/Trim Work, Deck Repair, Bathroom Remodeling. Professional, Reliable. Owner on every Job! Over 25 years experienced. Licensed/Insured	Contractual Work	\N	2017-08-19 16:02:10.204253	2017-08-19 16:02:10.204253
7	Landscaper	Whitmores	Carroll Gardens, NY	The Whitmore family has been in the landscaping, nursery and gardening business, serving the Hamptons since 1945. From landscape design and large tree installation and preservation, to providing the highest quality plant materials and year-round maintenance, you won’t find a team with more expertise or local knowledge. Trust Whitmores to enhance the beauty and value of your property.	Full-time	\N	2017-08-19 16:02:10.206199	2017-08-19 16:02:10.206199
8	Plumber	Best Plumbing	Upper East Side, NY	Since 1968, Upper East Side residents have trusted Best Plumbing with all their plumbing needs. Whether it’s helping you with a leaky faucet or you need a top-notch local company to execute your commercial project, Best Plumbing is here for you. 	Contractual Work	\N	2017-08-19 16:02:10.207822	2017-08-19 16:02:10.207822
9	Dog Walker	Freelance	Washington Heights, NY	I'm a university student at Columbia University with a lot of free time and student debt. Let me walk your dog!	Part-time	\N	2017-08-19 16:02:10.209367	2017-08-19 16:02:10.209367
10	Personal Trainer	Phew-sioneering	Long Island City, NY	I'm a former Division I NCAA sprinter and I'm looking to train high-school and college-aged athletes who are looking for a top-class training regimen dedicated to speed, agility, and strength.	Part-time	\N	2017-08-19 16:02:10.211016	2017-08-19 16:02:10.211016
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mjyatco
--

SELECT pg_catalog.setval('jobs_id_seq', 10, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mjyatco
--

COPY schema_migrations (version) FROM stdin;
20170818174603
\.


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: mjyatco
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: mjyatco
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mjyatco
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

