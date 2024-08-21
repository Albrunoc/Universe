--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: earth; Type: TABLE; Schema: public; Owner: u0_a192
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    flag_color character varying(30) NOT NULL
);


ALTER TABLE public.earth OWNER TO u0_a192;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: u0_a192
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name text NOT NULL,
    color character varying(30) NOT NULL,
    population integer,
    gdp numeric,
    president_name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO u0_a192;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: u0_a192
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    ships numeric,
    time_created time without time zone,
    sun integer
);


ALTER TABLE public.moon OWNER TO u0_a192;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: u0_a192
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    habitable boolean NOT NULL,
    population integer NOT NULL,
    countries numeric,
    sun integer
);


ALTER TABLE public.planet OWNER TO u0_a192;

--
-- Name: star; Type: TABLE; Schema: public; Owner: u0_a192
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    color character varying(30) NOT NULL,
    habitable boolean NOT NULL,
    flares integer
);


ALTER TABLE public.star OWNER TO u0_a192;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: u0_a192
--

COPY public.earth (earth_id, name, flag_color) FROM stdin;
1	United States	Star, Red, White & Blue
2	Nigeria	Green, White & Green
3	France	Blue, White & Red
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: u0_a192
--

COPY public.galaxy (galaxy_id, name, color, population, gdp, president_name) FROM stdin;
1	Ursula	Blue	2356	1726865	Wallace
2	Hagger	Green	1234	6825190	Bruce
3	Jam	Yellow	3271	1726825	Brian
4	Gurka	Pink	7251	2315678	Biden
5	Famarh	Orange	3627	157525	Bruno
6	Ranah	Black	3176	267368	Hank
7	Hammel	Maroon	129346	314261	Bob
8	Baxster	Milk	234156	23618	Martin
9	Hanks	Purple	19902	391686	Gerald
10	Tima	White	32586	9015286	Frank
11	Pharell	Red	214906	2178624	Nathan
12	Gumpy	Brown	12617	1270863	David
13	Dickson	Gray	890173	4619002	Riley
14	Warp	Violet	62201	13701762	Patray
15	Tex	Coder	781920	2216990	Jane
16	Reck	Egyptian	3790	89175380	Yanny
17	Wert	Ferrari	20185	6578910	Pilate
18	Ether	Lollipop	1073	8635190	Quint
19	Pom	Walnut	36290	1639063	Ian
20	Mann	Wood	2221	5558188	Zod
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: u0_a192
--

COPY public.moon (moon_id, name, ships, time_created, sun) FROM stdin;
1	Hammer	30	01:23:32	2
2	Grammy	27	02:32:51	9
3	Tilm	40	09:21:42	4
4	Farzy	19	04:37:21	1
5	Rimler	22	03:27:20	6
6	Hitmal	50	02:34:29	8
7	Hagard	58	04:31:32	10
8	Butler	32	05:45:30	11
9	Gerard	23	06:51:32	12
10	Zekana	34	07:09:52	3
11	Yenata	33	09:15:59	51
12	Yuria	21	10:10:23	7
13	Buria	24	11:05:21	20
14	Kanji	39	12:03:35	23
15	Mutia	14	11:21:39	21
16	Hanta	15	12:19:41	42
17	Cyripa	13	01:24:39	31
18	Marly	29	03:34:47	32
19	Minz	42	05:41:57	30
20	Harra	13	02:11:19	34
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: u0_a192
--

COPY public.planet (planet_id, name, habitable, population, countries, sun) FROM stdin;
1	Orion	f	2686188	2	2
2	Hannah	t	167369	1	9
3	Urdu	t	452173	3	4
4	Inka	f	32165	1	1
5	Tank	f	4271866	5	6
6	Rango	t	217683	7	8
7	Cunga	f	3196887	10	10
8	Morra	f	4209137	8	11
9	Zangi	t	1924716	9	12
10	Hilman	f	6661941	14	3
11	Cruza	t	9194021	12	51
12	Barli	t	5533921	11	7
13	Harpy	f	33451	13	20
14	Garbi	t	4213912	19	23
15	Harmt	t	9178123	15	21
16	Parry	f	1017204	12	42
17	Kanti	f	12013924	30	31
18	Range	t	910416	32	32
19	Olman	f	319468	24	30
20	Punga	t	218742	22	34
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: u0_a192
--

COPY public.star (star_id, name, color, habitable, flares) FROM stdin;
1	Orion	Blue	t	3
2	Hannah	Green	f	7
3	Urdu	Yellow	f	9
4	Inka	Pink	f	5
5	Tank	Orange	f	4
6	Rango	Black	t	1
7	Cunga	Maroon	t	8
8	Morra	Milk	t	30
9	Zangi	Purple	f	20
10	Hilman	White	f	21
11	Cruza	Red	t	2
12	Barli	Brown	t	0
13	Harpy	Gray	t	22
14	Garbi	Violet	f	33
16	Parry	Egyptian	t	25
17	Kanti	Ferrari	f	23
18	Range	Lollipop	t	28
19	Olman	Walnut	t	6
20	Punga	Wood	t	10
15	Harmt	Coder	f	27
\.


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_sun_key; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sun_key UNIQUE (sun);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (color) REFERENCES public.galaxy(color);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (sun) REFERENCES public.planet(sun);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: u0_a192
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (name) REFERENCES public.star(name);


--
-- PostgreSQL database dump complete
--

