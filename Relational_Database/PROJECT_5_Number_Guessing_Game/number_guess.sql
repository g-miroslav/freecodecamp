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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guess_count integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (238, 118, 1);
INSERT INTO public.games VALUES (239, 118, 1);
INSERT INTO public.games VALUES (233, 117, 17);
INSERT INTO public.games VALUES (240, 119, 1);
INSERT INTO public.games VALUES (241, 119, 1);
INSERT INTO public.games VALUES (230, 115, 13);
INSERT INTO public.games VALUES (242, 118, 2);
INSERT INTO public.games VALUES (243, 118, 1);
INSERT INTO public.games VALUES (244, 118, 1);
INSERT INTO public.games VALUES (360, 151, 1);
INSERT INTO public.games VALUES (361, 150, 1);
INSERT INTO public.games VALUES (234, 117, 19);
INSERT INTO public.games VALUES (321, 141, 798);
INSERT INTO public.games VALUES (231, 116, 19);
INSERT INTO public.games VALUES (319, 140, 1120);
INSERT INTO public.games VALUES (323, 140, 471);
INSERT INTO public.games VALUES (281, 128, 19);
INSERT INTO public.games VALUES (282, 130, 1);
INSERT INTO public.games VALUES (283, 130, 1);
INSERT INTO public.games VALUES (245, 120, 19);
INSERT INTO public.games VALUES (284, 131, 1);
INSERT INTO public.games VALUES (251, 120, 20);
INSERT INTO public.games VALUES (252, 122, 1);
INSERT INTO public.games VALUES (235, 116, 19);
INSERT INTO public.games VALUES (232, 116, 18);
INSERT INTO public.games VALUES (253, 122, 1);
INSERT INTO public.games VALUES (254, 123, 1);
INSERT INTO public.games VALUES (255, 123, 1);
INSERT INTO public.games VALUES (264, 125, 19);
INSERT INTO public.games VALUES (256, 122, 2);
INSERT INTO public.games VALUES (257, 122, 1);
INSERT INTO public.games VALUES (258, 122, 1);
INSERT INTO public.games VALUES (246, 120, 19);
INSERT INTO public.games VALUES (259, 115, 2);
INSERT INTO public.games VALUES (236, 116, 19);
INSERT INTO public.games VALUES (275, 128, 19);
INSERT INTO public.games VALUES (285, 131, 1);
INSERT INTO public.games VALUES (325, 140, 154);
INSERT INTO public.games VALUES (286, 130, 2);
INSERT INTO public.games VALUES (287, 130, 1);
INSERT INTO public.games VALUES (288, 130, 1);
INSERT INTO public.games VALUES (324, 140, 313);
INSERT INTO public.games VALUES (322, 141, 634);
INSERT INTO public.games VALUES (260, 115, 15);
INSERT INTO public.games VALUES (247, 121, 19);
INSERT INTO public.games VALUES (237, 116, 19);
INSERT INTO public.games VALUES (320, 140, 957);
INSERT INTO public.games VALUES (290, 132, 958);
INSERT INTO public.games VALUES (289, 132, 1117);
INSERT INTO public.games VALUES (265, 124, 19);
INSERT INTO public.games VALUES (293, 132, 472);
INSERT INTO public.games VALUES (292, 133, 635);
INSERT INTO public.games VALUES (295, 132, 155);
INSERT INTO public.games VALUES (276, 128, 19);
INSERT INTO public.games VALUES (294, 132, 313);
INSERT INTO public.games VALUES (291, 133, 795);
INSERT INTO public.games VALUES (266, 124, 8);
INSERT INTO public.games VALUES (336, 144, 1095);
INSERT INTO public.games VALUES (248, 121, 19);
INSERT INTO public.games VALUES (327, 142, 0);
INSERT INTO public.games VALUES (261, 124, 19);
INSERT INTO public.games VALUES (328, 142, 0);
INSERT INTO public.games VALUES (329, 143, 0);
INSERT INTO public.games VALUES (330, 143, 0);
INSERT INTO public.games VALUES (331, 142, 0);
INSERT INTO public.games VALUES (332, 142, 0);
INSERT INTO public.games VALUES (333, 142, 0);
INSERT INTO public.games VALUES (342, 144, 148);
INSERT INTO public.games VALUES (341, 144, 308);
INSERT INTO public.games VALUES (339, 145, 627);
INSERT INTO public.games VALUES (340, 144, 464);
INSERT INTO public.games VALUES (277, 129, 19);
INSERT INTO public.games VALUES (249, 120, 19);
INSERT INTO public.games VALUES (267, 124, 19);
INSERT INTO public.games VALUES (268, 126, 1);
INSERT INTO public.games VALUES (262, 124, 19);
INSERT INTO public.games VALUES (269, 126, 1);
INSERT INTO public.games VALUES (270, 127, 1);
INSERT INTO public.games VALUES (271, 127, 1);
INSERT INTO public.games VALUES (296, 115, 16);
INSERT INTO public.games VALUES (272, 126, 2);
INSERT INTO public.games VALUES (273, 126, 1);
INSERT INTO public.games VALUES (274, 126, 1);
INSERT INTO public.games VALUES (250, 120, 19);
INSERT INTO public.games VALUES (297, 134, 1);
INSERT INTO public.games VALUES (298, 134, 1);
INSERT INTO public.games VALUES (263, 125, 19);
INSERT INTO public.games VALUES (299, 135, 1);
INSERT INTO public.games VALUES (300, 135, 1);
INSERT INTO public.games VALUES (337, 144, 940);
INSERT INTO public.games VALUES (301, 134, 2);
INSERT INTO public.games VALUES (302, 134, 1);
INSERT INTO public.games VALUES (303, 134, 1);
INSERT INTO public.games VALUES (304, 136, 1);
INSERT INTO public.games VALUES (278, 129, 19);
INSERT INTO public.games VALUES (305, 136, 1);
INSERT INTO public.games VALUES (306, 137, 1);
INSERT INTO public.games VALUES (307, 137, 1);
INSERT INTO public.games VALUES (338, 145, 785);
INSERT INTO public.games VALUES (308, 136, 2);
INSERT INTO public.games VALUES (309, 136, 1);
INSERT INTO public.games VALUES (310, 136, 1);
INSERT INTO public.games VALUES (311, 138, 1);
INSERT INTO public.games VALUES (279, 128, 19);
INSERT INTO public.games VALUES (312, 138, 1);
INSERT INTO public.games VALUES (313, 139, 1);
INSERT INTO public.games VALUES (314, 139, 1);
INSERT INTO public.games VALUES (280, 128, 8);
INSERT INTO public.games VALUES (315, 138, 1);
INSERT INTO public.games VALUES (316, 138, 1);
INSERT INTO public.games VALUES (317, 138, 1);
INSERT INTO public.games VALUES (318, 115, 1);
INSERT INTO public.games VALUES (346, 147, 19);
INSERT INTO public.games VALUES (348, 146, 19);
INSERT INTO public.games VALUES (344, 146, 19);
INSERT INTO public.games VALUES (326, 115, 15);
INSERT INTO public.games VALUES (334, 115, 1);
INSERT INTO public.games VALUES (335, 115, 1);
INSERT INTO public.games VALUES (362, 150, 1);
INSERT INTO public.games VALUES (363, 150, 1);
INSERT INTO public.games VALUES (364, 152, 19);
INSERT INTO public.games VALUES (375, 154, 0);
INSERT INTO public.games VALUES (367, 153, 20);
INSERT INTO public.games VALUES (376, 154, 0);
INSERT INTO public.games VALUES (377, 154, 0);
INSERT INTO public.games VALUES (343, 146, 19);
INSERT INTO public.games VALUES (368, 152, 19);
INSERT INTO public.games VALUES (378, 156, 1);
INSERT INTO public.games VALUES (347, 146, 19);
INSERT INTO public.games VALUES (345, 147, 19);
INSERT INTO public.games VALUES (369, 152, 19);
INSERT INTO public.games VALUES (349, 146, 19);
INSERT INTO public.games VALUES (350, 148, 0);
INSERT INTO public.games VALUES (351, 148, 0);
INSERT INTO public.games VALUES (352, 149, 0);
INSERT INTO public.games VALUES (353, 149, 0);
INSERT INTO public.games VALUES (354, 148, 0);
INSERT INTO public.games VALUES (355, 148, 0);
INSERT INTO public.games VALUES (356, 148, 0);
INSERT INTO public.games VALUES (357, 150, 1);
INSERT INTO public.games VALUES (358, 150, 1);
INSERT INTO public.games VALUES (359, 151, 1);
INSERT INTO public.games VALUES (379, 156, 2);
INSERT INTO public.games VALUES (380, 157, 1123);
INSERT INTO public.games VALUES (370, 152, 19);
INSERT INTO public.games VALUES (366, 153, 18);
INSERT INTO public.games VALUES (365, 152, 19);
INSERT INTO public.games VALUES (371, 154, 0);
INSERT INTO public.games VALUES (372, 154, 0);
INSERT INTO public.games VALUES (373, 155, 0);
INSERT INTO public.games VALUES (387, 115, 1);
INSERT INTO public.games VALUES (374, 155, 0);
INSERT INTO public.games VALUES (410, 164, 721);
INSERT INTO public.games VALUES (388, 115, 1);
INSERT INTO public.games VALUES (411, 164, 574);
INSERT INTO public.games VALUES (382, 158, 801);
INSERT INTO public.games VALUES (383, 158, 637);
INSERT INTO public.games VALUES (389, 115, 0);
INSERT INTO public.games VALUES (412, 164, 734);
INSERT INTO public.games VALUES (384, 157, 476);
INSERT INTO public.games VALUES (390, 115, 0);
INSERT INTO public.games VALUES (413, 166, 710);
INSERT INTO public.games VALUES (385, 157, 313);
INSERT INTO public.games VALUES (391, 159, 2);
INSERT INTO public.games VALUES (414, 166, 529);
INSERT INTO public.games VALUES (386, 157, 155);
INSERT INTO public.games VALUES (392, 160, 953);
INSERT INTO public.games VALUES (415, 167, 273);
INSERT INTO public.games VALUES (393, 160, 419);
INSERT INTO public.games VALUES (416, 167, 387);
INSERT INTO public.games VALUES (394, 161, 604);
INSERT INTO public.games VALUES (417, 166, 681);
INSERT INTO public.games VALUES (395, 161, 848);
INSERT INTO public.games VALUES (418, 166, 212);
INSERT INTO public.games VALUES (396, 160, 460);
INSERT INTO public.games VALUES (419, 166, 468);
INSERT INTO public.games VALUES (397, 160, 371);
INSERT INTO public.games VALUES (398, 160, 282);
INSERT INTO public.games VALUES (399, 162, 398);
INSERT INTO public.games VALUES (400, 162, 93);
INSERT INTO public.games VALUES (401, 163, 61);
INSERT INTO public.games VALUES (402, 163, 405);
INSERT INTO public.games VALUES (403, 162, 531);
INSERT INTO public.games VALUES (404, 162, 697);
INSERT INTO public.games VALUES (405, 162, 784);
INSERT INTO public.games VALUES (406, 164, 206);
INSERT INTO public.games VALUES (407, 164, 332);
INSERT INTO public.games VALUES (408, 165, 437);
INSERT INTO public.games VALUES (409, 165, 404);
INSERT INTO public.games VALUES (381, 157, 962);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (115, 'Miroslav');
INSERT INTO public.users VALUES (116, 'user_1677178444469');
INSERT INTO public.users VALUES (117, 'user_1677178444468');
INSERT INTO public.users VALUES (118, 'user_1677178560107');
INSERT INTO public.users VALUES (119, 'user_1677178560106');
INSERT INTO public.users VALUES (120, 'user_1677178607503');
INSERT INTO public.users VALUES (121, 'user_1677178607502');
INSERT INTO public.users VALUES (122, 'user_1677178651180');
INSERT INTO public.users VALUES (123, 'user_1677178651179');
INSERT INTO public.users VALUES (124, 'user_1677178983851');
INSERT INTO public.users VALUES (125, 'user_1677178983850');
INSERT INTO public.users VALUES (126, 'user_1677179047275');
INSERT INTO public.users VALUES (127, 'user_1677179047274');
INSERT INTO public.users VALUES (128, 'user_1677179136661');
INSERT INTO public.users VALUES (129, 'user_1677179136660');
INSERT INTO public.users VALUES (130, 'user_1677179180106');
INSERT INTO public.users VALUES (131, 'user_1677179180105');
INSERT INTO public.users VALUES (132, 'user_1677179272623');
INSERT INTO public.users VALUES (133, 'user_1677179272622');
INSERT INTO public.users VALUES (134, 'user_1677179442248');
INSERT INTO public.users VALUES (135, 'user_1677179442247');
INSERT INTO public.users VALUES (136, 'user_1677179477520');
INSERT INTO public.users VALUES (137, 'user_1677179477519');
INSERT INTO public.users VALUES (138, 'user_1677179496571');
INSERT INTO public.users VALUES (139, 'user_1677179496570');
INSERT INTO public.users VALUES (140, 'user_1677179550980');
INSERT INTO public.users VALUES (141, 'user_1677179550979');
INSERT INTO public.users VALUES (142, 'user_1677179664277');
INSERT INTO public.users VALUES (143, 'user_1677179664276');
INSERT INTO public.users VALUES (144, 'user_1677179946602');
INSERT INTO public.users VALUES (145, 'user_1677179946601');
INSERT INTO public.users VALUES (146, 'user_1677180110297');
INSERT INTO public.users VALUES (147, 'user_1677180110296');
INSERT INTO public.users VALUES (148, 'user_1677180188120');
INSERT INTO public.users VALUES (149, 'user_1677180188119');
INSERT INTO public.users VALUES (150, 'user_1677180210073');
INSERT INTO public.users VALUES (151, 'user_1677180210072');
INSERT INTO public.users VALUES (152, 'user_1677180233833');
INSERT INTO public.users VALUES (153, 'user_1677180233832');
INSERT INTO public.users VALUES (154, 'user_1677180278619');
INSERT INTO public.users VALUES (155, 'user_1677180278618');
INSERT INTO public.users VALUES (156, 'Test');
INSERT INTO public.users VALUES (157, 'user_1677180595313');
INSERT INTO public.users VALUES (158, 'user_1677180595312');
INSERT INTO public.users VALUES (159, '955');
INSERT INTO public.users VALUES (160, 'user_1677181418784');
INSERT INTO public.users VALUES (161, 'user_1677181418783');
INSERT INTO public.users VALUES (162, 'user_1677181451324');
INSERT INTO public.users VALUES (163, 'user_1677181451323');
INSERT INTO public.users VALUES (164, 'user_1677181997120');
INSERT INTO public.users VALUES (165, 'user_1677181997119');
INSERT INTO public.users VALUES (166, 'user_1677182131915');
INSERT INTO public.users VALUES (167, 'user_1677182131914');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 419, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 167, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

