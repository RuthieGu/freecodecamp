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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    star_id integer
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    galaxy_id integer
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (2, 'g2', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (3, 'g3', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (4, 'g4', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (5, 'g5', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (6, 'g6', 100, 5, 5, false, false, 'eyes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'p1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (2, 'p2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (3, 'p3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (4, 'p4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (5, 'p5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (6, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (7, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (8, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (9, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (10, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (11, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (12, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (13, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (14, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (15, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (16, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (17, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (18, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (19, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (20, 'p6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (2, 'p2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (3, 'p3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (4, 'p4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (5, 'p5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (6, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (7, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (8, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (9, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (10, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (11, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (12, 'p6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (2, 's2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (3, 's3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (4, 's4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (5, 's5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (6, 's6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

camper: /project$ pg_dump -cC --inserts -U freecodecamp universe > universe.sql
camper: /project$ pg_dump -cC --inserts -U freecodecamp universe > universe.sql
camper: /project$ cat universe.sql
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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    star_id integer
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
    name character varying(30) NOT NULL,
    age numeric,
    coolness_factor integer,
    appearance_rating integer,
    has_cats boolean,
    free_wifi boolean,
    best_feature text,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'g1', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.asteroid VALUES (2, 'g2', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.asteroid VALUES (3, 'g3', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.asteroid VALUES (4, 'g4', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.asteroid VALUES (5, 'g5', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.asteroid VALUES (6, 'g6', 100, 5, 5, false, false, 'eyes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (2, 'g2', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (3, 'g3', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (4, 'g4', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (5, 'g5', 100, 5, 5, false, false, 'eyes');
INSERT INTO public.galaxy VALUES (6, 'g6', 100, 5, 5, false, false, 'eyes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'p1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (2, 'p2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (3, 'p3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (4, 'p4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (5, 'p5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (6, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (7, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (8, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (9, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (10, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (11, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (12, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (13, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (14, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (15, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (16, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (17, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (18, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (19, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.moon VALUES (20, 'p6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (2, 'p2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (3, 'p3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (4, 'p4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (5, 'p5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (6, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (7, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (8, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (9, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (10, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (11, 'p6', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.planet VALUES (12, 'p6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (2, 's2', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (3, 's3', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (4, 's4', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (5, 's5', 100, 5, 5, false, false, 'eyes', 1);
INSERT INTO public.star VALUES (6, 's6', 100, 5, 5, false, false, 'eyes', 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_asteroid_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key1 UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
