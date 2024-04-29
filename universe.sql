--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constell; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constell (
    constell_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    visible boolean
);


ALTER TABLE public.constell OWNER TO freecodecamp;

--
-- Name: constell_constell_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constell_constell_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constell_constell_id_seq OWNER TO freecodecamp;

--
-- Name: constell_constell_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constell_constell_id_seq OWNED BY public.constell.constell_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_spherical boolean,
    galaxy_type character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constell constell_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constell ALTER COLUMN constell_id SET DEFAULT nextval('public.constell_constell_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constell; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constell VALUES (1, 'Taurus', 3, true);
INSERT INTO public.constell VALUES (2, 'Libra', 5, true);
INSERT INTO public.constell VALUES (3, 'Sagittariuus', 4, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', false, 'Big', 'Very big');
INSERT INTO public.galaxy VALUES (2, 'Johneda', true, 'Small', 'Cool!');
INSERT INTO public.galaxy VALUES (3, 'Iraida', false, 'Big', 'A bit bigger ten Joniada');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', false, 'Big', 'Native!');
INSERT INTO public.galaxy VALUES (5, 'New1', true, 'Small', 'New galaxy');
INSERT INTO public.galaxy VALUES (6, 'New2', false, 'Big', 'The brand new one!');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 4, 'For example');
INSERT INTO public.moon VALUES (2, 'Pluto', 1, 4, 'Mikky Mouse');
INSERT INTO public.moon VALUES (3, 'Neptun', 1, 5, 'I deciced so');
INSERT INTO public.moon VALUES (4, 'f019', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (5, 'f020', 3, 4, 'Well');
INSERT INTO public.moon VALUES (6, 'f021', 4, 5, 'Good');
INSERT INTO public.moon VALUES (7, 'f022', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (8, 'f023', 3, 4, 'Well');
INSERT INTO public.moon VALUES (9, 'f024', 4, 5, 'Good');
INSERT INTO public.moon VALUES (10, 'f025', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (11, 'f026', 3, 4, 'Well');
INSERT INTO public.moon VALUES (12, 'f027', 4, 5, 'Good');
INSERT INTO public.moon VALUES (13, 'f028', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (14, 'f029', 3, 4, 'Well');
INSERT INTO public.moon VALUES (15, 'f030', 4, 5, 'Good');
INSERT INTO public.moon VALUES (16, 'f031', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (17, 'f032', 3, 4, 'Well');
INSERT INTO public.moon VALUES (18, 'f033', 4, 5, 'Good');
INSERT INTO public.moon VALUES (19, 'f034', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (20, 'f035', 3, 4, 'Well');
INSERT INTO public.moon VALUES (21, 'f036', 4, 5, 'Good');
INSERT INTO public.moon VALUES (22, 'f037', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (23, 'f038', 3, 4, 'Well');
INSERT INTO public.moon VALUES (24, 'f039', 4, 5, 'Good');
INSERT INTO public.moon VALUES (25, 'f040', 2, 3, 'Cool');
INSERT INTO public.moon VALUES (26, 'f041', 3, 4, 'Well');
INSERT INTO public.moon VALUES (27, 'f042', 4, 5, 'Good');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 4, 'For example');
INSERT INTO public.planet VALUES (2, 'Pluto', 1, 4, 'Mikky Mouse');
INSERT INTO public.planet VALUES (3, 'Neptun', 1, 5, 'I deciced so');
INSERT INTO public.planet VALUES (4, 'Yammy', 2, 3, 'For example1');
INSERT INTO public.planet VALUES (5, 'Pluto1', 2, 3, 'Also for example');
INSERT INTO public.planet VALUES (6, 'Neptun3', 2, 1, 'I deciced so too');
INSERT INTO public.planet VALUES (13, 'Like-Earth', 4, 5, 'For example too');
INSERT INTO public.planet VALUES (14, 'P
luto2', 3, 5, 'Mikky Mouse deceided');
INSERT INTO public.planet VALUES (15, 'Neptun2', 4, 6, 'I also deciced so');
INSERT INTO public.planet VALUES (16, 'Earth5', 2, 6, 'For example again');
INSERT INTO public.planet VALUES (17, 'Pluto70', 3, 5, 'Mikky Mouse is happy');
INSERT INTO public.planet VALUES (18, 'Neptun11', 5, 1, 'I deciced so again');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Venus', 4, 5.6, 'Cute planet');
INSERT INTO public.star VALUES (2, 'Mars', 4, 8.9, 'Red planet');
INSERT INTO public.star VALUES (3, 'Sneakers', 5, 89.4, 'Really yammy planet');
INSERT INTO public.star VALUES (4, 'Orion', 1, 167, 'MIB');
INSERT INTO public.star VALUES (5, 'Taurus', 2, 45.6, 'My constellation');
INSERT INTO public.star VALUES (6, 'Ural', 3, 342, 'Very far away!');


--
-- Name: constell_constell_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constell_constell_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constell constell_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constell
    ADD CONSTRAINT constell_name_key UNIQUE (name);


--
-- Name: constell constell_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constell
    ADD CONSTRAINT constell_pkey PRIMARY KEY (constell_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

