--
-- PostgreSQL database dump
--

\restrict 4ID1Bq9SUVbi3ZiWalYv3a0o6AGPlVBP5rW1qaNiMYuEVBt7DDeQMfd2djsrQVZ

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

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
-- Name: Campana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Campana" (
    id_campana integer NOT NULL,
    nombre_campana character varying(100) NOT NULL,
    presupuesto numeric(10,2) NOT NULL,
    fecha_inicio date NOT NULL
);


ALTER TABLE public."Campana" OWNER TO postgres;

--
-- Name: Campana_id_campana_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Campana_id_campana_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Campana_id_campana_seq" OWNER TO postgres;

--
-- Name: Campana_id_campana_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Campana_id_campana_seq" OWNED BY public."Campana".id_campana;


--
-- Name: Plataformas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Plataformas" (
    id_plataforma integer NOT NULL,
    nombre_plataforma character varying(50) NOT NULL,
    url_plataforma character varying(255)
);


ALTER TABLE public."Plataformas" OWNER TO postgres;

--
-- Name: Plataformas_id_plataforma_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Plataformas_id_plataforma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Plataformas_id_plataforma_seq" OWNER TO postgres;

--
-- Name: Plataformas_id_plataforma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Plataformas_id_plataforma_seq" OWNED BY public."Plataformas".id_plataforma;


--
-- Name: Registros de Conversiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Registros de Conversiones" (
    id_conversion integer NOT NULL,
    tipo_conversion character varying(50) NOT NULL,
    valor numeric(10,2) NOT NULL,
    fecha_conversion timestamp without time zone NOT NULL,
    id_campana integer NOT NULL,
    id_plataforma integer NOT NULL
);


ALTER TABLE public."Registros de Conversiones" OWNER TO postgres;

--
-- Name: Registros de Conversiones_id_conversion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Registros de Conversiones_id_conversion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Registros de Conversiones_id_conversion_seq" OWNER TO postgres;

--
-- Name: Registros de Conversiones_id_conversion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Registros de Conversiones_id_conversion_seq" OWNED BY public."Registros de Conversiones".id_conversion;


--
-- Name: Campana id_campana; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Campana" ALTER COLUMN id_campana SET DEFAULT nextval('public."Campana_id_campana_seq"'::regclass);


--
-- Name: Plataformas id_plataforma; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataformas" ALTER COLUMN id_plataforma SET DEFAULT nextval('public."Plataformas_id_plataforma_seq"'::regclass);


--
-- Name: Registros de Conversiones id_conversion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registros de Conversiones" ALTER COLUMN id_conversion SET DEFAULT nextval('public."Registros de Conversiones_id_conversion_seq"'::regclass);


--
-- Data for Name: Campana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Campana" (id_campana, nombre_campana, presupuesto, fecha_inicio) FROM stdin;
1	Campaña de Invierno 2025	250000.02	2025-04-12
2	Campaña de Ofertas	123399.00	2025-07-23
\.


--
-- Data for Name: Plataformas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Plataformas" (id_plataforma, nombre_plataforma, url_plataforma) FROM stdin;
1	Google Ads	https://www.google.com/?zx=1757078975599&no_sw_cr=1
2	 Meta Ads	https://www.meta.ai/
\.


--
-- Data for Name: Registros de Conversiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Registros de Conversiones" (id_conversion, tipo_conversion, valor, fecha_conversion, id_campana, id_plataforma) FROM stdin;
1	venta	3459.00	2024-09-23 00:00:00	2	1
2	registro	5656.00	2024-09-23 00:00:00	1	2
\.


--
-- Name: Campana_id_campana_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Campana_id_campana_seq"', 2, true);


--
-- Name: Plataformas_id_plataforma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Plataformas_id_plataforma_seq"', 2, true);


--
-- Name: Registros de Conversiones_id_conversion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Registros de Conversiones_id_conversion_seq"', 2, true);


--
-- Name: Campana Campana_nombre_campana_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Campana"
    ADD CONSTRAINT "Campana_nombre_campana_key" UNIQUE (nombre_campana);


--
-- Name: Campana Campana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Campana"
    ADD CONSTRAINT "Campana_pkey" PRIMARY KEY (id_campana);


--
-- Name: Plataformas Plataformas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataformas"
    ADD CONSTRAINT "Plataformas_pkey" PRIMARY KEY (id_plataforma);


--
-- Name: Registros de Conversiones Registros de Conversiones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registros de Conversiones"
    ADD CONSTRAINT "Registros de Conversiones_pkey" PRIMARY KEY (id_conversion);


--
-- Name: Registros de Conversiones fk_campana; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registros de Conversiones"
    ADD CONSTRAINT fk_campana FOREIGN KEY (id_campana) REFERENCES public."Campana"(id_campana);


--
-- Name: Registros de Conversiones fk_plataforma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registros de Conversiones"
    ADD CONSTRAINT fk_plataforma FOREIGN KEY (id_plataforma) REFERENCES public."Plataformas"(id_plataforma);


--
-- PostgreSQL database dump complete
--

\unrestrict 4ID1Bq9SUVbi3ZiWalYv3a0o6AGPlVBP5rW1qaNiMYuEVBt7DDeQMfd2djsrQVZ

