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
    type text,
    redshift numeric,
    distance_ly double precision
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
-- Name: main; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.main (
    name character varying(30) NOT NULL,
    galaxy_id integer,
    main_id integer NOT NULL
);


ALTER TABLE public.main OWNER TO freecodecamp;

--
-- Name: main_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.main_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_id_seq OWNER TO freecodecamp;

--
-- Name: main_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.main_id_seq OWNED BY public.main.main_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_period double precision,
    planet_id integer,
    luminosity text
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
    habitable boolean,
    has_rings boolean,
    orbital_period integer,
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
    type text,
    mass integer,
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
-- Name: main main_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main ALTER COLUMN main_id SET DEFAULT nextval('public.main_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Barred spiral', 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Spiral', 0.0005, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Spiral', 0.0034, NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical', 0.0018, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 0.0015, NULL);
INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral', 0.001, NULL);


--
-- Data for Name: main; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.main VALUES ('Luna', 3, 1);
INSERT INTO public.main VALUES ('Phobos', 4, 2);
INSERT INTO public.main VALUES ('Deimos', 4, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 27.32, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.32, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 1.26, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 7.15, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 16.69, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 1.77, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 3.55, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 15.95, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 4.52, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 79.33, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 2.74, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Triton', -5.88, 8, NULL);
INSERT INTO public.moon VALUES (13, 'Charon', 6.39, 9, NULL);
INSERT INTO public.moon VALUES (14, 'Enceladus', 1.37, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 0.942, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Titania', 8.71, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 13.46, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Umbriel', 4.14, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 1.41, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Ariel', 2.52, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 88, 7);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 225, 7);
INSERT INTO public.planet VALUES (3, 'Earth', true, false, 365, 7);
INSERT INTO public.planet VALUES (4, 'Mars', false, false, 687, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 4333, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 10759, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 30685, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 60189, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', false, false, 90560, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', false, false, 1682, 7);
INSERT INTO public.planet VALUES (11, 'Eris', false, false, 203830, 7);
INSERT INTO public.planet VALUES (12, 'Haumea', false, true, 104149, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Main-sequence', 2, 2);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red supergiant', 20, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Red dwarf', 0, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Main-sequence', 1000, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'Main-sequence', 2, 2);
INSERT INTO public.star VALUES (6, 'Antares', 'Red supergiant', 12, 2);
INSERT INTO public.star VALUES (7, 'Sun', 'Main-sequence', 100000, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: main_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.main_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: main main_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main
    ADD CONSTRAINT main_pkey PRIMARY KEY (main_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: main name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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

