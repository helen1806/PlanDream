--
-- PostgreSQL database dump
--

\restrict x2u5pIA2e3Ik2G4L6AlOesQDAndFOGdQ4s7a3ws7QZknBFcMBgCpPMbuYkgX5fp

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: competitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competitions (
    id integer NOT NULL,
    organization character varying(200) NOT NULL,
    competition_name character varying(300) NOT NULL,
    opportunity character varying(100) DEFAULT 'Competition / Skill-building'::character varying,
    location character varying(150),
    description text,
    age_range character varying(50),
    link text NOT NULL,
    source character varying(200)
);


ALTER TABLE public.competitions OWNER TO postgres;

--
-- Name: competitions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.competitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.competitions_id_seq OWNER TO postgres;

--
-- Name: competitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.competitions_id_seq OWNED BY public.competitions.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    organization character varying(200) NOT NULL,
    event_name character varying(300) NOT NULL,
    opportunity character varying(100) DEFAULT 'Career / Learning Event'::character varying,
    location character varying(250),
    eligibility text,
    date_time text,
    description text,
    link text NOT NULL,
    source character varying(200)
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: fellowships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fellowships (
    id integer NOT NULL,
    organization character varying(200) NOT NULL,
    fellowship_name character varying(300) NOT NULL,
    opportunity character varying(100) DEFAULT 'Fellowship'::character varying,
    location character varying(150),
    eligibility text,
    age_range character varying(50),
    link text NOT NULL,
    source character varying(200)
);


ALTER TABLE public.fellowships OWNER TO postgres;

--
-- Name: fellowships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fellowships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fellowships_id_seq OWNER TO postgres;

--
-- Name: fellowships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fellowships_id_seq OWNED BY public.fellowships.id;


--
-- Name: internships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internships (
    id integer NOT NULL,
    company character varying(50) NOT NULL,
    role character varying(200) NOT NULL,
    location character varying(150),
    opportunity character varying(50) DEFAULT 'Internship'::character varying,
    eligibility text,
    age_range character varying(50),
    link text NOT NULL,
    source character varying(100),
    duration character varying(200),
    mode character varying(200)
);


ALTER TABLE public.internships OWNER TO postgres;

--
-- Name: internships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.internships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.internships_id_seq OWNER TO postgres;

--
-- Name: internships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.internships_id_seq OWNED BY public.internships.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    company character varying(500) NOT NULL,
    role character varying(200),
    location character varying(150),
    opportunity character varying(50) DEFAULT 'job'::character varying,
    eligibility text,
    age_range character varying(50),
    link text,
    source character varying(100),
    mode character varying(200)
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: learning_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learning_resources (
    id integer NOT NULL,
    company character varying(200) NOT NULL,
    program_name character varying(300) NOT NULL,
    opportunity character varying(100) DEFAULT 'Learning / Certification'::character varying,
    description text,
    link text NOT NULL,
    source character varying(200)
);


ALTER TABLE public.learning_resources OWNER TO postgres;

--
-- Name: learning_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learning_resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.learning_resources_id_seq OWNER TO postgres;

--
-- Name: learning_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learning_resources_id_seq OWNED BY public.learning_resources.id;


--
-- Name: competitions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions ALTER COLUMN id SET DEFAULT nextval('public.competitions_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: fellowships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fellowships ALTER COLUMN id SET DEFAULT nextval('public.fellowships_id_seq'::regclass);


--
-- Name: internships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internships ALTER COLUMN id SET DEFAULT nextval('public.internships_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: learning_resources id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_resources ALTER COLUMN id SET DEFAULT nextval('public.learning_resources_id_seq'::regclass);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: fellowships fellowships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fellowships
    ADD CONSTRAINT fellowships_pkey PRIMARY KEY (id);


--
-- Name: internships internships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internships
    ADD CONSTRAINT internships_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: learning_resources learning_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learning_resources
    ADD CONSTRAINT learning_resources_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict x2u5pIA2e3Ik2G4L6AlOesQDAndFOGdQ4s7a3ws7QZknBFcMBgCpPMbuYkgX5fp

