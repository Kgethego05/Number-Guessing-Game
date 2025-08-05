--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
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

INSERT INTO public.games VALUES (1, 5, 355, 354);
INSERT INTO public.games VALUES (2, 5, 155, 154);
INSERT INTO public.games VALUES (3, 6, 827, 826);
INSERT INTO public.games VALUES (4, 6, 446, 445);
INSERT INTO public.games VALUES (5, 5, 514, 511);
INSERT INTO public.games VALUES (6, 5, 945, 943);
INSERT INTO public.games VALUES (7, 5, 148, 147);
INSERT INTO public.games VALUES (8, 7, 198, 197);
INSERT INTO public.games VALUES (9, 7, 305, 304);
INSERT INTO public.games VALUES (10, 8, 118, 117);
INSERT INTO public.games VALUES (11, 8, 19, 18);
INSERT INTO public.games VALUES (12, 7, 481, 478);
INSERT INTO public.games VALUES (13, 7, 709, 707);
INSERT INTO public.games VALUES (14, 7, 568, 567);
INSERT INTO public.games VALUES (15, 9, 807, 806);
INSERT INTO public.games VALUES (16, 9, 677, 676);
INSERT INTO public.games VALUES (17, 10, 545, 544);
INSERT INTO public.games VALUES (18, 10, 75, 74);
INSERT INTO public.games VALUES (19, 9, 766, 763);
INSERT INTO public.games VALUES (20, 9, 596, 594);
INSERT INTO public.games VALUES (21, 9, 774, 773);
INSERT INTO public.games VALUES (22, 11, 207, 206);
INSERT INTO public.games VALUES (23, 11, 589, 588);
INSERT INTO public.games VALUES (24, 12, 470, 469);
INSERT INTO public.games VALUES (25, 12, 832, 831);
INSERT INTO public.games VALUES (26, 11, 372, 369);
INSERT INTO public.games VALUES (27, 11, 699, 697);
INSERT INTO public.games VALUES (28, 11, 142, 141);
INSERT INTO public.games VALUES (29, 13, 447, 446);
INSERT INTO public.games VALUES (30, 13, 594, 593);
INSERT INTO public.games VALUES (31, 14, 775, 774);
INSERT INTO public.games VALUES (32, 14, 928, 927);
INSERT INTO public.games VALUES (33, 13, 773, 770);
INSERT INTO public.games VALUES (34, 13, 533, 531);
INSERT INTO public.games VALUES (35, 13, 533, 532);
INSERT INTO public.games VALUES (36, 19, 630, 629);
INSERT INTO public.games VALUES (37, 19, 472, 471);
INSERT INTO public.games VALUES (38, 20, 172, 171);
INSERT INTO public.games VALUES (39, 20, 309, 308);
INSERT INTO public.games VALUES (40, 19, 460, 457);
INSERT INTO public.games VALUES (41, 19, 485, 483);
INSERT INTO public.games VALUES (42, 19, 821, 820);
INSERT INTO public.games VALUES (43, 21, 694, 693);
INSERT INTO public.games VALUES (44, 21, 918, 917);
INSERT INTO public.games VALUES (45, 22, 690, 689);
INSERT INTO public.games VALUES (46, 22, 201, 200);
INSERT INTO public.games VALUES (47, 21, 287, 284);
INSERT INTO public.games VALUES (48, 21, 229, 227);
INSERT INTO public.games VALUES (49, 21, 844, 843);
INSERT INTO public.games VALUES (50, 23, 988, 987);
INSERT INTO public.games VALUES (51, 23, 48, 47);
INSERT INTO public.games VALUES (52, 24, 177, 176);
INSERT INTO public.games VALUES (53, 24, 147, 146);
INSERT INTO public.games VALUES (54, 23, 950, 947);
INSERT INTO public.games VALUES (55, 23, 701, 699);
INSERT INTO public.games VALUES (56, 23, 204, 203);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1754421062216');
INSERT INTO public.users VALUES (2, 'user_1754421062215');
INSERT INTO public.users VALUES (3, 'user_1754421073117');
INSERT INTO public.users VALUES (4, 'user_1754421073116');
INSERT INTO public.users VALUES (5, 'user_1754421102675');
INSERT INTO public.users VALUES (6, 'user_1754421102674');
INSERT INTO public.users VALUES (7, 'user_1754421177515');
INSERT INTO public.users VALUES (8, 'user_1754421177514');
INSERT INTO public.users VALUES (9, 'user_1754421213827');
INSERT INTO public.users VALUES (10, 'user_1754421213826');
INSERT INTO public.users VALUES (11, 'user_1754421250830');
INSERT INTO public.users VALUES (12, 'user_1754421250829');
INSERT INTO public.users VALUES (13, 'user_1754421337108');
INSERT INTO public.users VALUES (14, 'user_1754421337107');
INSERT INTO public.users VALUES (15, 'user_1754421390910');
INSERT INTO public.users VALUES (16, 'user_1754421390909');
INSERT INTO public.users VALUES (17, 'user_1754421401104');
INSERT INTO public.users VALUES (18, 'user_1754421401103');
INSERT INTO public.users VALUES (19, 'user_1754421427311');
INSERT INTO public.users VALUES (20, 'user_1754421427310');
INSERT INTO public.users VALUES (21, 'user_1754421477607');
INSERT INTO public.users VALUES (22, 'user_1754421477606');
INSERT INTO public.users VALUES (23, 'user_1754421528381');
INSERT INTO public.users VALUES (24, 'user_1754421528380');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

