--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (11, 2018, 'Final', 366, 367, 4, 2);
INSERT INTO public.games VALUES (12, 2018, 'Third Place', 368, 369, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Semi-Final', 367, 369, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Semi-Final', 366, 368, 1, 0);
INSERT INTO public.games VALUES (15, 2018, 'Quarter-Final', 367, 370, 3, 2);
INSERT INTO public.games VALUES (16, 2018, 'Quarter-Final', 369, 371, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Quarter-Final', 368, 372, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Quarter-Final', 366, 373, 2, 0);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 369, 374, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 371, 375, 1, 0);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 368, 376, 3, 2);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 372, 377, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 367, 378, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 370, 379, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 373, 380, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 366, 381, 4, 3);
INSERT INTO public.games VALUES (27, 2014, 'Final', 382, 381, 1, 0);
INSERT INTO public.games VALUES (28, 2014, 'Third Place', 383, 372, 3, 0);
INSERT INTO public.games VALUES (29, 2014, 'Semi-Final', 381, 383, 1, 0);
INSERT INTO public.games VALUES (30, 2014, 'Semi-Final', 382, 372, 7, 1);
INSERT INTO public.games VALUES (31, 2014, 'Quarter-Final', 383, 384, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Quarter-Final', 381, 368, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Quarter-Final', 372, 374, 2, 1);
INSERT INTO public.games VALUES (34, 2014, 'Quarter-Final', 382, 366, 1, 0);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 372, 385, 2, 1);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 374, 373, 2, 0);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 366, 386, 2, 0);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 382, 387, 2, 1);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 383, 377, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 384, 388, 2, 1);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 381, 375, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 368, 389, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (366, 'France');
INSERT INTO public.teams VALUES (367, 'Croatia');
INSERT INTO public.teams VALUES (368, 'Belgium');
INSERT INTO public.teams VALUES (369, 'England');
INSERT INTO public.teams VALUES (370, 'Russia');
INSERT INTO public.teams VALUES (371, 'Sweden');
INSERT INTO public.teams VALUES (372, 'Brazil');
INSERT INTO public.teams VALUES (373, 'Uruguay');
INSERT INTO public.teams VALUES (374, 'Colombia');
INSERT INTO public.teams VALUES (375, 'Switzerland');
INSERT INTO public.teams VALUES (376, 'Japan');
INSERT INTO public.teams VALUES (377, 'Mexico');
INSERT INTO public.teams VALUES (378, 'Denmark');
INSERT INTO public.teams VALUES (379, 'Spain');
INSERT INTO public.teams VALUES (380, 'Portugal');
INSERT INTO public.teams VALUES (381, 'Argentina');
INSERT INTO public.teams VALUES (382, 'Germany');
INSERT INTO public.teams VALUES (383, 'Netherlands');
INSERT INTO public.teams VALUES (384, 'Costa Rica');
INSERT INTO public.teams VALUES (385, 'Chile');
INSERT INTO public.teams VALUES (386, 'Nigeria');
INSERT INTO public.teams VALUES (387, 'Algeria');
INSERT INTO public.teams VALUES (388, 'Greece');
INSERT INTO public.teams VALUES (389, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 389, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

