toc.dat                                                                                             0000600 0004000 0002000 00000014471 14571651272 0014460 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |            cadastro    16.2    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16561    cadastro    DATABASE        CREATE DATABASE cadastro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE cadastro;
                postgres    false                     2615    16562    cad    SCHEMA        CREATE SCHEMA cad;
    DROP SCHEMA cad;
                postgres    false         �            1259    16583    endereco    TABLE     �   CREATE TABLE cad.endereco (
    id integer NOT NULL,
    estado character varying(120),
    cidade character varying(120),
    logradouro character varying(200),
    numero character varying(10),
    cep character varying(15),
    id_pessoa integer
);
    DROP TABLE cad.endereco;
       cad         heap    postgres    false    6         �            1259    16586    endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE cad.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE cad.endereco_id_seq;
       cad          postgres    false    6    220         �           0    0    endereco_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE cad.endereco_id_seq OWNED BY cad.endereco.id;
          cad          postgres    false    221         �            1259    16563    pessoas    TABLE     �   CREATE TABLE cad.pessoas (
    nome character varying(200),
    idade integer,
    sexo character varying(20),
    id integer NOT NULL
);
    DROP TABLE cad.pessoas;
       cad         heap    postgres    false    6         �            1259    16566    pessoas_id_seq    SEQUENCE     �   CREATE SEQUENCE cad.pessoas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE cad.pessoas_id_seq;
       cad          postgres    false    216    6         �           0    0    pessoas_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE cad.pessoas_id_seq OWNED BY cad.pessoas.id;
          cad          postgres    false    217         �            1259    16573    usuario    TABLE     �   CREATE TABLE cad.usuario (
    id integer NOT NULL,
    login character varying(100),
    senha character varying(20),
    nome character varying(100)
);
    DROP TABLE cad.usuario;
       cad         heap    postgres    false    6         �            1259    16576    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE cad.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE cad.usuario_id_seq;
       cad          postgres    false    6    218         �           0    0    usuario_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE cad.usuario_id_seq OWNED BY cad.usuario.id;
          cad          postgres    false    219         '           2604    16587    endereco id    DEFAULT     d   ALTER TABLE ONLY cad.endereco ALTER COLUMN id SET DEFAULT nextval('cad.endereco_id_seq'::regclass);
 7   ALTER TABLE cad.endereco ALTER COLUMN id DROP DEFAULT;
       cad          postgres    false    221    220         %           2604    16567 
   pessoas id    DEFAULT     b   ALTER TABLE ONLY cad.pessoas ALTER COLUMN id SET DEFAULT nextval('cad.pessoas_id_seq'::regclass);
 6   ALTER TABLE cad.pessoas ALTER COLUMN id DROP DEFAULT;
       cad          postgres    false    217    216         &           2604    16577 
   usuario id    DEFAULT     b   ALTER TABLE ONLY cad.usuario ALTER COLUMN id SET DEFAULT nextval('cad.usuario_id_seq'::regclass);
 6   ALTER TABLE cad.usuario ALTER COLUMN id DROP DEFAULT;
       cad          postgres    false    219    218         �          0    16583    endereco 
   TABLE DATA           W   COPY cad.endereco (id, estado, cidade, logradouro, numero, cep, id_pessoa) FROM stdin;
    cad          postgres    false    220       4801.dat �          0    16563    pessoas 
   TABLE DATA           5   COPY cad.pessoas (nome, idade, sexo, id) FROM stdin;
    cad          postgres    false    216       4797.dat �          0    16573    usuario 
   TABLE DATA           6   COPY cad.usuario (id, login, senha, nome) FROM stdin;
    cad          postgres    false    218       4799.dat �           0    0    endereco_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('cad.endereco_id_seq', 7, true);
          cad          postgres    false    221         �           0    0    pessoas_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('cad.pessoas_id_seq', 7, true);
          cad          postgres    false    217         �           0    0    usuario_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('cad.usuario_id_seq', 1, true);
          cad          postgres    false    219         -           2606    16592    endereco endereco_pk 
   CONSTRAINT     O   ALTER TABLE ONLY cad.endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (id);
 ;   ALTER TABLE ONLY cad.endereco DROP CONSTRAINT endereco_pk;
       cad            postgres    false    220         )           2606    16572    pessoas pessoas_pk 
   CONSTRAINT     M   ALTER TABLE ONLY cad.pessoas
    ADD CONSTRAINT pessoas_pk PRIMARY KEY (id);
 9   ALTER TABLE ONLY cad.pessoas DROP CONSTRAINT pessoas_pk;
       cad            postgres    false    216         +           2606    16582    usuario usuario_pk 
   CONSTRAINT     M   ALTER TABLE ONLY cad.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id);
 9   ALTER TABLE ONLY cad.usuario DROP CONSTRAINT usuario_pk;
       cad            postgres    false    218                                                                                                                                                                                                               4801.dat                                                                                            0000600 0004000 0002000 00000000151 14571651272 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	SP	São Paulo	Rua 13 de maio	55	02038-010	1
6	Rio de Janeiro	Rio de Janeiro	Rua Ual	1	89547-854	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       4797.dat                                                                                            0000600 0004000 0002000 00000000056 14571651272 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        João	32	Masculino	1
Maria	29	Feminino	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  4799.dat                                                                                            0000600 0004000 0002000 00000000040 14571651272 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Junior	123	Milton Junior
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000013110 14571651272 0015372 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

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

DROP DATABASE cadastro;
--
-- Name: cadastro; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cadastro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE cadastro OWNER TO postgres;

\connect cadastro

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

--
-- Name: cad; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cad;


ALTER SCHEMA cad OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: endereco; Type: TABLE; Schema: cad; Owner: postgres
--

CREATE TABLE cad.endereco (
    id integer NOT NULL,
    estado character varying(120),
    cidade character varying(120),
    logradouro character varying(200),
    numero character varying(10),
    cep character varying(15),
    id_pessoa integer
);


ALTER TABLE cad.endereco OWNER TO postgres;

--
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: cad; Owner: postgres
--

CREATE SEQUENCE cad.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE cad.endereco_id_seq OWNER TO postgres;

--
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: cad; Owner: postgres
--

ALTER SEQUENCE cad.endereco_id_seq OWNED BY cad.endereco.id;


--
-- Name: pessoas; Type: TABLE; Schema: cad; Owner: postgres
--

CREATE TABLE cad.pessoas (
    nome character varying(200),
    idade integer,
    sexo character varying(20),
    id integer NOT NULL
);


ALTER TABLE cad.pessoas OWNER TO postgres;

--
-- Name: pessoas_id_seq; Type: SEQUENCE; Schema: cad; Owner: postgres
--

CREATE SEQUENCE cad.pessoas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE cad.pessoas_id_seq OWNER TO postgres;

--
-- Name: pessoas_id_seq; Type: SEQUENCE OWNED BY; Schema: cad; Owner: postgres
--

ALTER SEQUENCE cad.pessoas_id_seq OWNED BY cad.pessoas.id;


--
-- Name: usuario; Type: TABLE; Schema: cad; Owner: postgres
--

CREATE TABLE cad.usuario (
    id integer NOT NULL,
    login character varying(100),
    senha character varying(20),
    nome character varying(100)
);


ALTER TABLE cad.usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: cad; Owner: postgres
--

CREATE SEQUENCE cad.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE cad.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: cad; Owner: postgres
--

ALTER SEQUENCE cad.usuario_id_seq OWNED BY cad.usuario.id;


--
-- Name: endereco id; Type: DEFAULT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.endereco ALTER COLUMN id SET DEFAULT nextval('cad.endereco_id_seq'::regclass);


--
-- Name: pessoas id; Type: DEFAULT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.pessoas ALTER COLUMN id SET DEFAULT nextval('cad.pessoas_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.usuario ALTER COLUMN id SET DEFAULT nextval('cad.usuario_id_seq'::regclass);


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY cad.endereco (id, estado, cidade, logradouro, numero, cep, id_pessoa) FROM stdin;
\.
COPY cad.endereco (id, estado, cidade, logradouro, numero, cep, id_pessoa) FROM '$$PATH$$/4801.dat';

--
-- Data for Name: pessoas; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY cad.pessoas (nome, idade, sexo, id) FROM stdin;
\.
COPY cad.pessoas (nome, idade, sexo, id) FROM '$$PATH$$/4797.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY cad.usuario (id, login, senha, nome) FROM stdin;
\.
COPY cad.usuario (id, login, senha, nome) FROM '$$PATH$$/4799.dat';

--
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: cad; Owner: postgres
--

SELECT pg_catalog.setval('cad.endereco_id_seq', 7, true);


--
-- Name: pessoas_id_seq; Type: SEQUENCE SET; Schema: cad; Owner: postgres
--

SELECT pg_catalog.setval('cad.pessoas_id_seq', 7, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: cad; Owner: postgres
--

SELECT pg_catalog.setval('cad.usuario_id_seq', 1, true);


--
-- Name: endereco endereco_pk; Type: CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (id);


--
-- Name: pessoas pessoas_pk; Type: CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.pessoas
    ADD CONSTRAINT pessoas_pk PRIMARY KEY (id);


--
-- Name: usuario usuario_pk; Type: CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY cad.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        