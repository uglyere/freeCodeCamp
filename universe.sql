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
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,2),
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    id integer NOT NULL
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
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    id integer NOT NULL,
    description text,
    average_stellar_population character varying(20)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    mass numeric(8,6),
    radius numeric(8,6)
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    mass numeric(6,2),
    radius numeric(6,2)
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    id integer NOT NULL,
    description text,
    atmosphere_type character varying(30)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.id;


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_id integer NOT NULL,
    mass numeric(6,2),
    radius numeric(6,2)
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
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: galaxy_types id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: planet_types id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', 'A barred spiral galaxy that contains 100-400 billion stars and at least as many planets', true, false, 13800.00, 0, 1, 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 'A spiral galaxy approximately 2.5 million light-years from Earth in the constellation Andromeda', false, false, 10000.00, 2500000, 2, 2);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 'A spiral galaxy approximately 3 million light-years from Earth in the constellation Triangulum', false, false, 8000.00, 3000000, 3, 3);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 'An interacting grand-design spiral galaxy located in the constellation Canes Venatici', false, false, 13000.00, 23000000, 4, 4);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'A spiral galaxy in the constellation Virgo, known for its distinctive appearance with a bright nucleus and a large central bulge', false, false, 12000.00, 29000000, 5, 5);
INSERT INTO public.galaxy VALUES ('Pinwheel Galaxy', 'A face-on spiral galaxy located in the constellation Ursa Major, known for its well-defined spiral structure', false, false, 13000.00, 21000000, 6, 6);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral Galaxies', 1, 'Galaxies with a flat, spinning disk and a central bulge, often with spiral arms.', 'Mixed');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical Galaxies', 2, 'Galaxies with an ellipsoidal shape and a smooth, featureless appearance.', 'Old');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular Galaxies', 3, 'Galaxies with no distinct shape or structure, often the result of galactic interactions.', 'Varied');
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular Galaxies', 4, 'Galaxies with a disk and a central bulge but no spiral arms, often found in dense environments.', 'Old');
INSERT INTO public.galaxy_types VALUES (5, 'Dwarf Galaxies', 5, 'Small galaxies with a low luminosity and a small number of stars.', 'Varied');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, 0.012000, 0.270000);
INSERT INTO public.moon VALUES ('Phobos', 2, 2, 0.000017, 0.017000);
INSERT INTO public.moon VALUES ('Deimos', 3, 2, 0.000002, 0.007000);
INSERT INTO public.moon VALUES ('Io', 4, 3, 0.015000, 0.290000);
INSERT INTO public.moon VALUES ('Europa', 5, 3, 0.008000, 0.240000);
INSERT INTO public.moon VALUES ('Ganymede', 6, 3, 0.025000, 0.410000);
INSERT INTO public.moon VALUES ('Callisto', 7, 3, 0.018000, 0.380000);
INSERT INTO public.moon VALUES ('Titan', 8, 4, 0.023000, 0.400000);
INSERT INTO public.moon VALUES ('Enceladus', 9, 4, 0.000120, 0.039000);
INSERT INTO public.moon VALUES ('Mimas', 10, 4, 0.000060, 0.020000);
INSERT INTO public.moon VALUES ('Dione', 11, 4, 0.000150, 0.033000);
INSERT INTO public.moon VALUES ('Tethys', 12, 4, 0.000060, 0.030000);
INSERT INTO public.moon VALUES ('Betelgeuse b I', 13, 6, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Betelgeuse b II', 14, 6, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Betelgeuse c I', 15, 7, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Betelgeuse c II', 16, 7, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Rigel Aa I', 17, 8, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Rigel Aa II', 18, 8, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Rigel Ab I', 19, 9, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('Rigel Ab II', 20, 9, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M31-V1 b I', 21, 10, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M31-V1 b II', 22, 10, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M31-V1 c I', 23, 12, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M31-V1 c II', 24, 12, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M33-V1 b I', 25, 13, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('M33-V1 b II', 26, 13, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('SN 2005cs b I', 27, 14, 0.001000, 0.050000);
INSERT INTO public.moon VALUES ('SN 2005cs b II', 28, 14, 0.001000, 0.050000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1.00, 1.00);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 0.11, 0.53);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 317.80, 11.21);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 95.20, 9.45);
INSERT INTO public.planet VALUES (6, 'Betelgeuse b', 2, 10.00, 1.50);
INSERT INTO public.planet VALUES (7, 'Betelgeuse c', 2, 12.00, 1.70);
INSERT INTO public.planet VALUES (8, 'Rigel Aa', 3, 8.00, 1.30);
INSERT INTO public.planet VALUES (9, 'Rigel Ab', 3, 9.00, 1.40);
INSERT INTO public.planet VALUES (10, 'M31-V1 b', 8, 5.00, 1.10);
INSERT INTO public.planet VALUES (12, 'M31-V1 c', 8, 6.00, 1.20);
INSERT INTO public.planet VALUES (13, 'M33-V1 b', 9, 7.00, 1.30);
INSERT INTO public.planet VALUES (14, 'SN 2005cs b', 10, 4.00, 1.00);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial Planets', 1, 'Rocky planets with a solid surface, similar to Earth, Mars, Venus, and Mercury.', 'Thin to moderate');
INSERT INTO public.planet_types VALUES (2, 'Gas Giants', 2, 'Large planets composed mainly of hydrogen and helium, similar to Jupiter and Saturn.', 'Thick, hydrogen-rich');
INSERT INTO public.planet_types VALUES (3, 'Ice Giants', 3, 'Planets composed mainly of ices like water, ammonia, and methane, similar to Uranus and Neptune.', 'Thick, icy');
INSERT INTO public.planet_types VALUES (4, 'Super-Earths', 4, 'Planets with a mass higher than Earth''s but substantially below that of the ice giants.', 'Varied');
INSERT INTO public.planet_types VALUES (5, 'Mini-Neptunes', 5, 'Planets with a significant volatile content but smaller than Uranus and Neptune.', 'Thick, icy');
INSERT INTO public.planet_types VALUES (6, 'Hot Jupiters', 6, 'Gas giants that orbit very close to their stars, resulting in high surface temperatures.', 'Thick, hot');
INSERT INTO public.planet_types VALUES (7, 'Chthonian Planets', 7, 'Planets that have lost their gaseous envelopes, leaving behind a rocky core.', 'Thin');
INSERT INTO public.planet_types VALUES (8, 'Ocean Planets', 8, 'Planets with a substantial amount of water on their surface.', 'Moderate, water-rich');
INSERT INTO public.planet_types VALUES (9, 'Dwarf Planets', 9, 'Small, rocky bodies that orbit the Sun but are not massive enough to clear their orbits of debris.', 'Thin to none');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, 1.00, 1.00);
INSERT INTO public.star VALUES ('Betelgeuse', 1, 2, 11.60, 950.00);
INSERT INTO public.star VALUES ('Rigel', 1, 3, 17.20, 78.90);
INSERT INTO public.star VALUES ('M31-V1', 2, 8, 0.70, 0.90);
INSERT INTO public.star VALUES ('M33-V1', 3, 9, 0.85, 0.80);
INSERT INTO public.star VALUES ('SN 2005cs', 4, 10, 8.00, 500.00);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 5, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 9, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 9, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_id_key UNIQUE (id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_id_key UNIQUE (id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

