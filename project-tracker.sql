--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Ubuntu 13.8-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.8 (Ubuntu 13.8-1.pgdg20.04+1)

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
-- Name: projects; Type: TABLE; Schema: public; Owner: icuadra
--

CREATE TABLE public.projects (
    title character varying(30) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO icuadra;

--
-- Name: students; Type: TABLE; Schema: public; Owner: icuadra
--

CREATE TABLE public.students (
    id integer NOT NULL,
    github character varying(30) NOT NULL,
    first_name character varying(30),
    last_name character varying(30)
);


ALTER TABLE public.students OWNER TO icuadra;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: icuadra
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO icuadra;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: icuadra
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: icuadra
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: icuadra
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	Tweets generted from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
Sharwords	Word guessing game	75
Debugging	Learn to debug front end and back end	100
Ajax	Learn Ajax	100
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: icuadra
--

COPY public.students (id, github, first_name, last_name) FROM stdin;
1	sdeveloper	Sarah	Developer
2	jhacks	Jane	Hacker
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: icuadra
--

SELECT pg_catalog.setval('public.students_id_seq', 3, true);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: icuadra
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: icuadra
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

