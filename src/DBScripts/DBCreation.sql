--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: RGTech; Type: DATABASE; Schema: -; Owner: RGAdmin
--

CREATE DATABASE "RGTech" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "RGTech" OWNER TO "RGAdmin";

\connect "RGTech"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: RG; Type: SCHEMA; Schema: -; Owner: RGAdmin
--

CREATE SCHEMA "RG";


ALTER SCHEMA "RG" OWNER TO "RGAdmin";

--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Algues; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Algues" (
    id_algue integer NOT NULL,
    pigments boolean,
    "glucanesReserve" character varying,
    "nbMombranesPlastidiales" integer,
    "dispositionThylacoides" boolean,
    formecretesmitochondriales boolean,
    couleur character varying,
    "id_Eucaryotes" integer NOT NULL
);


ALTER TABLE "RG"."Algues" OWNER TO "RGAdmin";

--
-- Name: Algues_id_algue_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Algues_id_algue_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Algues_id_algue_seq" OWNER TO "RGAdmin";

--
-- Name: Algues_id_algue_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Algues_id_algue_seq" OWNED BY "RG"."Algues".id_algue;


--
-- Name: ArcharoBacteries; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."ArcharoBacteries" (
    "id_ArcharoBacteries" integer NOT NULL,
    "id_Procaryote" integer NOT NULL,
    "ARN_Ribosomique" boolean
);


ALTER TABLE "RG"."ArcharoBacteries" OWNER TO "RGAdmin";

--
-- Name: ArcharoBacteries_id_ArcharoBacteries_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."ArcharoBacteries_id_ArcharoBacteries_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."ArcharoBacteries_id_ArcharoBacteries_seq" OWNER TO "RGAdmin";

--
-- Name: ArcharoBacteries_id_ArcharoBacteries_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."ArcharoBacteries_id_ArcharoBacteries_seq" OWNED BY "RG"."ArcharoBacteries"."id_ArcharoBacteries";


--
-- Name: CTA; Type: TABLE; Schema: RG; Owner: postgres
--

CREATE TABLE "RG"."CTA" (
    "ID" integer NOT NULL,
    "intitulé" character(30),
    description text,
    "propriétaire" character(30),
    brevet character(120),
    region character(30),
    "préparation" text,
    image character(200)
);


ALTER TABLE "RG"."CTA" OWNER TO postgres;

--
-- Name: CTA_ID_seq; Type: SEQUENCE; Schema: RG; Owner: postgres
--

CREATE SEQUENCE "RG"."CTA_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."CTA_ID_seq" OWNER TO postgres;

--
-- Name: CTA_ID_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: postgres
--

ALTER SEQUENCE "RG"."CTA_ID_seq" OWNED BY "RG"."CTA"."ID";


--
-- Name: Champignions; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Champignions" (
    id_champignion integer NOT NULL,
    "ARNr" boolean,
    "id_Eucaryotes" integer NOT NULL,
    nb_cellule real,
    "diversité_génétique" character varying(100)
);


ALTER TABLE "RG"."Champignions" OWNER TO "RGAdmin";

--
-- Name: Champignions_id_champignion_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Champignions_id_champignion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Champignions_id_champignion_seq" OWNER TO "RGAdmin";

--
-- Name: Champignions_id_champignion_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Champignions_id_champignion_seq" OWNED BY "RG"."Champignions".id_champignion;


--
-- Name: Ecosysteme_res_phyto; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Ecosysteme_res_phyto" (
    id_ecosysteme integer NOT NULL,
    "Température" real,
    "degré_gravité" real,
    "degré_radiation" real,
    q_eau real,
    q_oxygene real,
    q_co2 real,
    d_ph real,
    ions_miniraux character varying(100)
);


ALTER TABLE "RG"."Ecosysteme_res_phyto" OWNER TO "RGAdmin";

--
-- Name: Ecosysteme_res_phyto_id_ecosysteme_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Ecosysteme_res_phyto_id_ecosysteme_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Ecosysteme_res_phyto_id_ecosysteme_seq" OWNER TO "RGAdmin";

--
-- Name: Ecosysteme_res_phyto_id_ecosysteme_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Ecosysteme_res_phyto_id_ecosysteme_seq" OWNED BY "RG"."Ecosysteme_res_phyto".id_ecosysteme;


--
-- Name: EuBacteries; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."EuBacteries" (
    "id_Bacteris" integer NOT NULL,
    forme character varying,
    type character varying,
    pathogenie boolean,
    respiration boolean,
    designation character varying(30),
    "id_Procaryote" integer NOT NULL,
    temperateure real
);


ALTER TABLE "RG"."EuBacteries" OWNER TO "RGAdmin";

--
-- Name: EuBacteries_id_Bacteris_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."EuBacteries_id_Bacteris_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."EuBacteries_id_Bacteris_seq" OWNER TO "RGAdmin";

--
-- Name: EuBacteries_id_Bacteris_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."EuBacteries_id_Bacteris_seq" OWNED BY "RG"."EuBacteries"."id_Bacteris";


--
-- Name: Eucaryotes; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Eucaryotes" (
    "id_Eucaryotes" integer NOT NULL,
    id_micro integer NOT NULL,
    presence_noyau boolean,
    designation character varying(30)
);


ALTER TABLE "RG"."Eucaryotes" OWNER TO "RGAdmin";

--
-- Name: Eucaryotes_id_Eucaryotes_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Eucaryotes_id_Eucaryotes_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Eucaryotes_id_Eucaryotes_seq" OWNER TO "RGAdmin";

--
-- Name: Eucaryotes_id_Eucaryotes_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Eucaryotes_id_Eucaryotes_seq" OWNED BY "RG"."Eucaryotes"."id_Eucaryotes";


--
-- Name: Procaryotes; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Procaryotes" (
    "id_Procaryote" integer NOT NULL,
    id_micro integer NOT NULL,
    coloraiongram character(20),
    absence_noyau boolean,
    "colorationGram" character varying,
    designation character varying(30)
);


ALTER TABLE "RG"."Procaryotes" OWNER TO "RGAdmin";

--
-- Name: Procaryotes_id_Procaryote_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Procaryotes_id_Procaryote_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Procaryotes_id_Procaryote_seq" OWNER TO "RGAdmin";

--
-- Name: Procaryotes_id_Procaryote_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Procaryotes_id_Procaryote_seq" OWNED BY "RG"."Procaryotes"."id_Procaryote";


--
-- Name: Protozoaires; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Protozoaires" (
    id_protozoaire integer NOT NULL,
    protopiasme character varying,
    reproduction character varying,
    nutrition character varying,
    "id_Eucaryotes" integer NOT NULL
);


ALTER TABLE "RG"."Protozoaires" OWNER TO "RGAdmin";

--
-- Name: Protozoaires_id_protozoaire_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Protozoaires_id_protozoaire_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Protozoaires_id_protozoaire_seq" OWNER TO "RGAdmin";

--
-- Name: Protozoaires_id_protozoaire_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Protozoaires_id_protozoaire_seq" OWNED BY "RG"."Protozoaires".id_protozoaire;


--
-- Name: RGMicro_organisme; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."RGMicro_organisme" (
    id_micro integer NOT NULL,
    presence_noyau boolean,
    emplacement_adn character varying(30),
    coloraiongram character(20),
    id_carac_anatomique integer,
    id_rg integer
);


ALTER TABLE "RG"."RGMicro_organisme" OWNER TO "RGAdmin";

--
-- Name: RGMicro_organisme_id_micro_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."RGMicro_organisme_id_micro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."RGMicro_organisme_id_micro_seq" OWNER TO "RGAdmin";

--
-- Name: RGMicro_organisme_id_micro_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."RGMicro_organisme_id_micro_seq" OWNED BY "RG"."RGMicro_organisme".id_micro;


--
-- Name: RessourceFaunistique; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."RessourceFaunistique" (
    "ID_RGFAUNE" integer NOT NULL,
    nombre integer,
    id_morphologique integer,
    id_localisation integer,
    id_rg integer
);


ALTER TABLE "RG"."RessourceFaunistique" OWNER TO "RGAdmin";

--
-- Name: RessourceFaunistique_ID_RGFAUNE_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."RessourceFaunistique_ID_RGFAUNE_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."RessourceFaunistique_ID_RGFAUNE_seq" OWNER TO "RGAdmin";

--
-- Name: RessourceFaunistique_ID_RGFAUNE_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."RessourceFaunistique_ID_RGFAUNE_seq" OWNED BY "RG"."RessourceFaunistique"."ID_RGFAUNE";


--
-- Name: RessourceGenetique; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."RessourceGenetique" (
    "ID" integer NOT NULL,
    nom_latin character(30),
    nom_arabe character(30),
    nom_amazigh character(30),
    description text,
    nombre integer,
    image character(200),
    id_rgclassification integer,
    id_cta integer,
    id_utilisateur integer
);


ALTER TABLE "RG"."RessourceGenetique" OWNER TO "RGAdmin";

--
-- Name: RessourceGenetique_ID_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."RessourceGenetique_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."RessourceGenetique_ID_seq" OWNER TO "RGAdmin";

--
-- Name: RessourceGenetique_ID_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."RessourceGenetique_ID_seq" OWNED BY "RG"."RessourceGenetique"."ID";


--
-- Name: RessourceMarine; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."RessourceMarine" (
    "id_RGMarine" integer NOT NULL,
    id_localisation_marine integer,
    id_ecosys_marine integer,
    id_rg integer
);


ALTER TABLE "RG"."RessourceMarine" OWNER TO "RGAdmin";

--
-- Name: RessourceMarine_id_RGMarine_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."RessourceMarine_id_RGMarine_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."RessourceMarine_id_RGMarine_seq" OWNER TO "RGAdmin";

--
-- Name: RessourceMarine_id_RGMarine_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."RessourceMarine_id_RGMarine_seq" OWNED BY "RG"."RessourceMarine"."id_RGMarine";


--
-- Name: RessourcePhytogenetique; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."RessourcePhytogenetique" (
    "ID_RGPhyto" integer NOT NULL,
    arrosage character(20),
    "hauteur_maturité" character(10),
    "largeur_maturité" character(10),
    niveau_soin character(30),
    periode_floraison character(30),
    rusticite character(20),
    saison_interet character(30),
    utilisation_en_jardin character(20),
    id_morphologique integer,
    id_anatomique integer,
    id_rg integer
);


ALTER TABLE "RG"."RessourcePhytogenetique" OWNER TO "RGAdmin";

--
-- Name: RessourcePhytogenetique_ID_RGPhyto_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."RessourcePhytogenetique_ID_RGPhyto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."RessourcePhytogenetique_ID_RGPhyto_seq" OWNER TO "RGAdmin";

--
-- Name: RessourcePhytogenetique_ID_RGPhyto_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."RessourcePhytogenetique_ID_RGPhyto_seq" OWNED BY "RG"."RessourcePhytogenetique"."ID_RGPhyto";


--
-- Name: Utilisateur; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Utilisateur" (
    "Id_client" integer NOT NULL,
    nom character varying(20),
    prenom character varying(20),
    "dateNaissance" date,
    "dateInscription" date,
    courriel character varying(20),
    "motDePasse" character varying(100),
    categorie character varying(3),
    permis boolean,
    pseudo character varying(20)
);


ALTER TABLE "RG"."Utilisateur" OWNER TO "RGAdmin";

--
-- Name: Virus; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."Virus" (
    id_virus integer NOT NULL,
    type character varying,
    "ADN" boolean,
    "ARN" boolean,
    "id_rgMicro" integer
);


ALTER TABLE "RG"."Virus" OWNER TO "RGAdmin";

--
-- Name: Virus_id_virus_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."Virus_id_virus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."Virus_id_virus_seq" OWNER TO "RGAdmin";

--
-- Name: Virus_id_virus_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."Virus_id_virus_seq" OWNED BY "RG"."Virus".id_virus;


--
-- Name: article; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".article (
    id integer NOT NULL,
    titre character varying(200) NOT NULL,
    description character varying(1000),
    contenu text,
    "imgUrl" character varying(200)
);


ALTER TABLE "RG".article OWNER TO "RGAdmin";

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".article_id_seq OWNER TO "RGAdmin";

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".article_id_seq OWNED BY "RG".article.id;


--
-- Name: carac_anatomique; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".carac_anatomique (
    id_carac_anatomique integer NOT NULL,
    type_racine character(30),
    feuille character(30),
    graine character(30),
    fleur character(30),
    fruit character(30),
    tige character(30)
);


ALTER TABLE "RG".carac_anatomique OWNER TO "RGAdmin";

--
-- Name: carac_anatomique_id_carac_anatomique_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".carac_anatomique_id_carac_anatomique_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".carac_anatomique_id_carac_anatomique_seq OWNER TO "RGAdmin";

--
-- Name: carac_anatomique_id_carac_anatomique_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".carac_anatomique_id_carac_anatomique_seq OWNED BY "RG".carac_anatomique.id_carac_anatomique;


--
-- Name: carac_morphologique; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".carac_morphologique (
    id_carac_morphologique integer NOT NULL,
    "maturité" character(20),
    tubercule character(20),
    couleur_fleur character(20),
    germe character(20),
    id_phane integer
);


ALTER TABLE "RG".carac_morphologique OWNER TO "RGAdmin";

--
-- Name: carac_morphologique_id_carac_morphologique_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".carac_morphologique_id_carac_morphologique_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".carac_morphologique_id_carac_morphologique_seq OWNER TO "RGAdmin";

--
-- Name: carac_morphologique_id_carac_morphologique_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".carac_morphologique_id_carac_morphologique_seq OWNED BY "RG".carac_morphologique.id_carac_morphologique;


--
-- Name: carac_morphologique_rgfaune; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".carac_morphologique_rgfaune (
    id_carac_morphologique integer NOT NULL,
    noyau_cellulaire boolean,
    membres boolean,
    poils boolean,
    "vertèbres" boolean
);


ALTER TABLE "RG".carac_morphologique_rgfaune OWNER TO "RGAdmin";

--
-- Name: carac_morphologique_rgfaune_id_carac_morphologique_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".carac_morphologique_rgfaune_id_carac_morphologique_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".carac_morphologique_rgfaune_id_carac_morphologique_seq OWNER TO "RGAdmin";

--
-- Name: carac_morphologique_rgfaune_id_carac_morphologique_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".carac_morphologique_rgfaune_id_carac_morphologique_seq OWNED BY "RG".carac_morphologique_rgfaune.id_carac_morphologique;


--
-- Name: caracteristique_morph_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".caracteristique_morph_micro (
    id_morph_micro integer NOT NULL,
    type character varying,
    taille character varying,
    forme character varying,
    fermentation character varying,
    duree_de_vie character varying
);


ALTER TABLE "RG".caracteristique_morph_micro OWNER TO "RGAdmin";

--
-- Name: caracteristique_morph_micro_id_morph_micro_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".caracteristique_morph_micro_id_morph_micro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".caracteristique_morph_micro_id_morph_micro_seq OWNER TO "RGAdmin";

--
-- Name: caracteristique_morph_micro_id_morph_micro_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".caracteristique_morph_micro_id_morph_micro_seq OWNED BY "RG".caracteristique_morph_micro.id_morph_micro;


--
-- Name: caractéristique_anatomique_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG"."caractéristique_anatomique_micro" (
    "Id_carac_ana" integer NOT NULL,
    presence_adn boolean,
    presence_arn boolean,
    paroi character varying,
    cytoplasme character varying,
    reporduction character varying
);


ALTER TABLE "RG"."caractéristique_anatomique_micro" OWNER TO "RGAdmin";

--
-- Name: caractéristique_anatomique_micro_Id_carac_ana_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG"."caractéristique_anatomique_micro_Id_carac_ana_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG"."caractéristique_anatomique_micro_Id_carac_ana_seq" OWNER TO "RGAdmin";

--
-- Name: caractéristique_anatomique_micro_Id_carac_ana_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG"."caractéristique_anatomique_micro_Id_carac_ana_seq" OWNED BY "RG"."caractéristique_anatomique_micro"."Id_carac_ana";


--
-- Name: categorieinstitution; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".categorieinstitution (
    id_cat_inst integer NOT NULL,
    nom_cat_inst character varying(50)
);


ALTER TABLE "RG".categorieinstitution OWNER TO "RGAdmin";

--
-- Name: concerner; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".concerner (
    id_resssource integer NOT NULL,
    id_ecosysteme integer NOT NULL
);


ALTER TABLE "RG".concerner OWNER TO "RGAdmin";

--
-- Name: concernerannuaire; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".concernerannuaire (
    id_inst integer NOT NULL,
    code_rg integer NOT NULL
);


ALTER TABLE "RG".concernerannuaire OWNER TO "RGAdmin";

--
-- Name: constitueede; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".constitueede (
    id_cta integer NOT NULL,
    id_ingredient integer NOT NULL
);


ALTER TABLE "RG".constitueede OWNER TO "RGAdmin";

--
-- Name: ecosysteme_marine; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".ecosysteme_marine (
    id_ecosys_marine integer NOT NULL,
    qt_co2 real,
    "température_mer" real,
    "salinité" character varying(20)
);


ALTER TABLE "RG".ecosysteme_marine OWNER TO "RGAdmin";

--
-- Name: ecosysteme_marine_id_ecosys_marine_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".ecosysteme_marine_id_ecosys_marine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".ecosysteme_marine_id_ecosys_marine_seq OWNER TO "RGAdmin";

--
-- Name: ecosysteme_marine_id_ecosys_marine_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".ecosysteme_marine_id_ecosys_marine_seq OWNED BY "RG".ecosysteme_marine.id_ecosys_marine;


--
-- Name: ecosysteme_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".ecosysteme_micro (
    ecosysteme_id integer NOT NULL,
    "PH" character(1),
    "température" character(1),
    sels_minreaux character(1),
    "humidité" character(1),
    "quantité_oxygene" character(1),
    "quantité_co2" character(1),
    nutrition character(1)
);


ALTER TABLE "RG".ecosysteme_micro OWNER TO "RGAdmin";

--
-- Name: ecosysteme_micro_ecosysteme_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".ecosysteme_micro_ecosysteme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".ecosysteme_micro_ecosysteme_id_seq OWNER TO "RGAdmin";

--
-- Name: ecosysteme_micro_ecosysteme_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".ecosysteme_micro_ecosysteme_id_seq OWNED BY "RG".ecosysteme_micro.ecosysteme_id;


--
-- Name: emplacement; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".emplacement (
    id_emplacement integer NOT NULL,
    "région" character varying(50),
    "quantité_rg" integer
);


ALTER TABLE "RG".emplacement OWNER TO "RGAdmin";

--
-- Name: evenement; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".evenement (
    id integer NOT NULL,
    titre character varying(200) NOT NULL,
    description character varying(1000),
    contenu text,
    "imgUrl" character varying(200)
);


ALTER TABLE "RG".evenement OWNER TO "RGAdmin";

--
-- Name: evenement_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".evenement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".evenement_id_seq OWNER TO "RGAdmin";

--
-- Name: evenement_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".evenement_id_seq OWNED BY "RG".evenement.id;


--
-- Name: geolocalisation; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".geolocalisation (
    id_geolocalisation integer NOT NULL,
    localisation point NOT NULL,
    region character(30),
    ville character(30),
    wilaya character(30)
);


ALTER TABLE "RG".geolocalisation OWNER TO "RGAdmin";

--
-- Name: geolocalisation_id_geolocalisation_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".geolocalisation_id_geolocalisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".geolocalisation_id_geolocalisation_seq OWNER TO "RGAdmin";

--
-- Name: geolocalisation_id_geolocalisation_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".geolocalisation_id_geolocalisation_seq OWNED BY "RG".geolocalisation.id_geolocalisation;


--
-- Name: ingredient; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".ingredient (
    id_ingredient integer NOT NULL,
    nom_ingredient character varying(50),
    quantite_ingredient integer
);


ALTER TABLE "RG".ingredient OWNER TO "RGAdmin";

--
-- Name: institution; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".institution (
    id_inst integer NOT NULL,
    id_cat_inst integer,
    acronyme character varying(50),
    nom_inst character varying(50),
    tel_inst character varying(50),
    mail_inst character varying(50),
    type_inst boolean,
    description_inst text,
    lien_site character varying(100),
    adresse_inst character varying(100),
    fax_inst character varying(50),
    "visibilité" boolean,
    image_inst bytea
);


ALTER TABLE "RG".institution OWNER TO "RGAdmin";

--
-- Name: localisation; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".localisation (
    id_resssource integer NOT NULL,
    id_geolocalisation integer NOT NULL
);


ALTER TABLE "RG".localisation OWNER TO "RGAdmin";

--
-- Name: localisation_marine; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".localisation_marine (
    id_localisation_marine integer NOT NULL,
    "Region" character varying(20),
    ville character varying(20),
    wilaya character varying(20),
    "position" point,
    altitude real
);


ALTER TABLE "RG".localisation_marine OWNER TO "RGAdmin";

--
-- Name: localisation_marine_id_localisation_marine_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".localisation_marine_id_localisation_marine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".localisation_marine_id_localisation_marine_seq OWNER TO "RGAdmin";

--
-- Name: localisation_marine_id_localisation_marine_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".localisation_marine_id_localisation_marine_seq OWNED BY "RG".localisation_marine.id_localisation_marine;


--
-- Name: localisation_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".localisation_micro (
    region character(1),
    ville character varying,
    "quantité" character varying,
    id_localisation integer NOT NULL
);


ALTER TABLE "RG".localisation_micro OWNER TO "RGAdmin";

--
-- Name: localisation_micro_id_localisation_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".localisation_micro_id_localisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".localisation_micro_id_localisation_seq OWNER TO "RGAdmin";

--
-- Name: localisation_micro_id_localisation_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".localisation_micro_id_localisation_seq OWNED BY "RG".localisation_micro.id_localisation;


--
-- Name: localisation_rgfaune; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".localisation_rgfaune (
    id_localisation integer NOT NULL,
    region character varying,
    ville character varying,
    wilaya character varying
);


ALTER TABLE "RG".localisation_rgfaune OWNER TO "RGAdmin";

--
-- Name: localisation_rgfaune_id_localisation_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".localisation_rgfaune_id_localisation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".localisation_rgfaune_id_localisation_seq OWNER TO "RGAdmin";

--
-- Name: localisation_rgfaune_id_localisation_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".localisation_rgfaune_id_localisation_seq OWNED BY "RG".localisation_rgfaune.id_localisation;


--
-- Name: localisation_utilisateur; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".localisation_utilisateur (
    id_localisation_client integer NOT NULL,
    pays character varying(20),
    region character varying(20),
    ville character varying(20),
    adresse character varying(50)
);


ALTER TABLE "RG".localisation_utilisateur OWNER TO "RGAdmin";

--
-- Name: news; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".news (
    id integer NOT NULL,
    titre character varying(200) NOT NULL,
    description character varying(1000),
    contenu text,
    "imgUrl" character varying(200)
);


ALTER TABLE "RG".news OWNER TO "RGAdmin";

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".news_id_seq OWNER TO "RGAdmin";

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".news_id_seq OWNED BY "RG".news.id;


--
-- Name: phane; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".phane (
    id_phan integer NOT NULL,
    descrip_port text,
    carac_feuille text,
    carac_tige text
);


ALTER TABLE "RG".phane OWNER TO "RGAdmin";

--
-- Name: phane_id_phan_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".phane_id_phan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".phane_id_phan_seq OWNER TO "RGAdmin";

--
-- Name: phane_id_phan_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".phane_id_phan_seq OWNED BY "RG".phane.id_phan;


--
-- Name: posseder_ecosys_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".posseder_ecosys_micro (
    id_rg_micro integer NOT NULL,
    id_ecosysteme_micro integer NOT NULL
);


ALTER TABLE "RG".posseder_ecosys_micro OWNER TO "RGAdmin";

--
-- Name: posseder_morpho_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".posseder_morpho_micro (
    id_rg_micro integer NOT NULL,
    id_morph_micro integer NOT NULL
);


ALTER TABLE "RG".posseder_morpho_micro OWNER TO "RGAdmin";

--
-- Name: rgclassification; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".rgclassification (
    id integer NOT NULL,
    type_classification text,
    nom_niveau text,
    parent_id integer,
    parent_path public.ltree
);


ALTER TABLE "RG".rgclassification OWNER TO "RGAdmin";

--
-- Name: rgclassification_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".rgclassification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".rgclassification_id_seq OWNER TO "RGAdmin";

--
-- Name: rgclassification_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".rgclassification_id_seq OWNED BY "RG".rgclassification.id;


--
-- Name: setrouve_loc_micro; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".setrouve_loc_micro (
    id_rg_micro integer NOT NULL,
    id_loc_micro integer NOT NULL
);


ALTER TABLE "RG".setrouve_loc_micro OWNER TO "RGAdmin";

--
-- Name: setrouvea; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".setrouvea (
    id_emplacement integer NOT NULL,
    code_rg integer NOT NULL
);


ALTER TABLE "RG".setrouvea OWNER TO "RGAdmin";

--
-- Name: utilisateur_region; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".utilisateur_region (
    id_utilisateur integer NOT NULL,
    id_localisation_client integer NOT NULL
);


ALTER TABLE "RG".utilisateur_region OWNER TO "RGAdmin";

--
-- Name: utiliseedans; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".utiliseedans (
    id_cta integer NOT NULL,
    code_rg integer NOT NULL
);


ALTER TABLE "RG".utiliseedans OWNER TO "RGAdmin";

--
-- Name: video; Type: TABLE; Schema: RG; Owner: RGAdmin
--

CREATE TABLE "RG".video (
    id integer NOT NULL,
    titre character varying(200) NOT NULL,
    description character varying(1000),
    url character varying(200)
);


ALTER TABLE "RG".video OWNER TO "RGAdmin";

--
-- Name: video_id_seq; Type: SEQUENCE; Schema: RG; Owner: RGAdmin
--

CREATE SEQUENCE "RG".video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RG".video_id_seq OWNER TO "RGAdmin";

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: RG; Owner: RGAdmin
--

ALTER SEQUENCE "RG".video_id_seq OWNED BY "RG".video.id;


--
-- Name: Algues id_algue; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Algues" ALTER COLUMN id_algue SET DEFAULT nextval('"RG"."Algues_id_algue_seq"'::regclass);


--
-- Name: ArcharoBacteries id_ArcharoBacteries; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."ArcharoBacteries" ALTER COLUMN "id_ArcharoBacteries" SET DEFAULT nextval('"RG"."ArcharoBacteries_id_ArcharoBacteries_seq"'::regclass);


--
-- Name: CTA ID; Type: DEFAULT; Schema: RG; Owner: postgres
--

ALTER TABLE ONLY "RG"."CTA" ALTER COLUMN "ID" SET DEFAULT nextval('"RG"."CTA_ID_seq"'::regclass);


--
-- Name: Champignions id_champignion; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Champignions" ALTER COLUMN id_champignion SET DEFAULT nextval('"RG"."Champignions_id_champignion_seq"'::regclass);


--
-- Name: Ecosysteme_res_phyto id_ecosysteme; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Ecosysteme_res_phyto" ALTER COLUMN id_ecosysteme SET DEFAULT nextval('"RG"."Ecosysteme_res_phyto_id_ecosysteme_seq"'::regclass);


--
-- Name: EuBacteries id_Bacteris; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."EuBacteries" ALTER COLUMN "id_Bacteris" SET DEFAULT nextval('"RG"."EuBacteries_id_Bacteris_seq"'::regclass);


--
-- Name: Eucaryotes id_Eucaryotes; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Eucaryotes" ALTER COLUMN "id_Eucaryotes" SET DEFAULT nextval('"RG"."Eucaryotes_id_Eucaryotes_seq"'::regclass);


--
-- Name: Procaryotes id_Procaryote; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Procaryotes" ALTER COLUMN "id_Procaryote" SET DEFAULT nextval('"RG"."Procaryotes_id_Procaryote_seq"'::regclass);


--
-- Name: Protozoaires id_protozoaire; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Protozoaires" ALTER COLUMN id_protozoaire SET DEFAULT nextval('"RG"."Protozoaires_id_protozoaire_seq"'::regclass);


--
-- Name: RGMicro_organisme id_micro; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RGMicro_organisme" ALTER COLUMN id_micro SET DEFAULT nextval('"RG"."RGMicro_organisme_id_micro_seq"'::regclass);


--
-- Name: RessourceFaunistique ID_RGFAUNE; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceFaunistique" ALTER COLUMN "ID_RGFAUNE" SET DEFAULT nextval('"RG"."RessourceFaunistique_ID_RGFAUNE_seq"'::regclass);


--
-- Name: RessourceGenetique ID; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique" ALTER COLUMN "ID" SET DEFAULT nextval('"RG"."RessourceGenetique_ID_seq"'::regclass);


--
-- Name: RessourceMarine id_RGMarine; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceMarine" ALTER COLUMN "id_RGMarine" SET DEFAULT nextval('"RG"."RessourceMarine_id_RGMarine_seq"'::regclass);


--
-- Name: RessourcePhytogenetique ID_RGPhyto; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourcePhytogenetique" ALTER COLUMN "ID_RGPhyto" SET DEFAULT nextval('"RG"."RessourcePhytogenetique_ID_RGPhyto_seq"'::regclass);


--
-- Name: Virus id_virus; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Virus" ALTER COLUMN id_virus SET DEFAULT nextval('"RG"."Virus_id_virus_seq"'::regclass);


--
-- Name: article id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".article ALTER COLUMN id SET DEFAULT nextval('"RG".article_id_seq'::regclass);


--
-- Name: carac_anatomique id_carac_anatomique; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_anatomique ALTER COLUMN id_carac_anatomique SET DEFAULT nextval('"RG".carac_anatomique_id_carac_anatomique_seq'::regclass);


--
-- Name: carac_morphologique id_carac_morphologique; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_morphologique ALTER COLUMN id_carac_morphologique SET DEFAULT nextval('"RG".carac_morphologique_id_carac_morphologique_seq'::regclass);


--
-- Name: carac_morphologique_rgfaune id_carac_morphologique; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_morphologique_rgfaune ALTER COLUMN id_carac_morphologique SET DEFAULT nextval('"RG".carac_morphologique_rgfaune_id_carac_morphologique_seq'::regclass);


--
-- Name: caracteristique_morph_micro id_morph_micro; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".caracteristique_morph_micro ALTER COLUMN id_morph_micro SET DEFAULT nextval('"RG".caracteristique_morph_micro_id_morph_micro_seq'::regclass);


--
-- Name: caractéristique_anatomique_micro Id_carac_ana; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."caractéristique_anatomique_micro" ALTER COLUMN "Id_carac_ana" SET DEFAULT nextval('"RG"."caractéristique_anatomique_micro_Id_carac_ana_seq"'::regclass);


--
-- Name: ecosysteme_marine id_ecosys_marine; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".ecosysteme_marine ALTER COLUMN id_ecosys_marine SET DEFAULT nextval('"RG".ecosysteme_marine_id_ecosys_marine_seq'::regclass);


--
-- Name: ecosysteme_micro ecosysteme_id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".ecosysteme_micro ALTER COLUMN ecosysteme_id SET DEFAULT nextval('"RG".ecosysteme_micro_ecosysteme_id_seq'::regclass);


--
-- Name: evenement id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".evenement ALTER COLUMN id SET DEFAULT nextval('"RG".evenement_id_seq'::regclass);


--
-- Name: geolocalisation id_geolocalisation; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".geolocalisation ALTER COLUMN id_geolocalisation SET DEFAULT nextval('"RG".geolocalisation_id_geolocalisation_seq'::regclass);


--
-- Name: localisation_marine id_localisation_marine; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_marine ALTER COLUMN id_localisation_marine SET DEFAULT nextval('"RG".localisation_marine_id_localisation_marine_seq'::regclass);


--
-- Name: localisation_micro id_localisation; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_micro ALTER COLUMN id_localisation SET DEFAULT nextval('"RG".localisation_micro_id_localisation_seq'::regclass);


--
-- Name: localisation_rgfaune id_localisation; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_rgfaune ALTER COLUMN id_localisation SET DEFAULT nextval('"RG".localisation_rgfaune_id_localisation_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".news ALTER COLUMN id SET DEFAULT nextval('"RG".news_id_seq'::regclass);


--
-- Name: phane id_phan; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".phane ALTER COLUMN id_phan SET DEFAULT nextval('"RG".phane_id_phan_seq'::regclass);


--
-- Name: rgclassification id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".rgclassification ALTER COLUMN id SET DEFAULT nextval('"RG".rgclassification_id_seq'::regclass);


--
-- Name: video id; Type: DEFAULT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".video ALTER COLUMN id SET DEFAULT nextval('"RG".video_id_seq'::regclass);


--
-- Name: Algues Algues_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Algues"
    ADD CONSTRAINT "Algues_pkey" PRIMARY KEY (id_algue);


--
-- Name: ArcharoBacteries ArcharoBacteries_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."ArcharoBacteries"
    ADD CONSTRAINT "ArcharoBacteries_pkey" PRIMARY KEY ("id_ArcharoBacteries");


--
-- Name: CTA CTA_pkey; Type: CONSTRAINT; Schema: RG; Owner: postgres
--

ALTER TABLE ONLY "RG"."CTA"
    ADD CONSTRAINT "CTA_pkey" PRIMARY KEY ("ID");


--
-- Name: Champignions Champignions_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Champignions"
    ADD CONSTRAINT "Champignions_pkey" PRIMARY KEY (id_champignion);


--
-- Name: Ecosysteme_res_phyto Ecosysteme_res_phyto_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Ecosysteme_res_phyto"
    ADD CONSTRAINT "Ecosysteme_res_phyto_pkey" PRIMARY KEY (id_ecosysteme);


--
-- Name: EuBacteries EuBacteries_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."EuBacteries"
    ADD CONSTRAINT "EuBacteries_pkey" PRIMARY KEY ("id_Bacteris");


--
-- Name: Eucaryotes Eucaryotes_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Eucaryotes"
    ADD CONSTRAINT "Eucaryotes_pkey" PRIMARY KEY ("id_Eucaryotes");


--
-- Name: Procaryotes Procaryotes_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Procaryotes"
    ADD CONSTRAINT "Procaryotes_pkey" PRIMARY KEY ("id_Procaryote");


--
-- Name: Protozoaires Protozoaires_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Protozoaires"
    ADD CONSTRAINT "Protozoaires_pkey" PRIMARY KEY (id_protozoaire);


--
-- Name: RGMicro_organisme RGMicro_organisme_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RGMicro_organisme"
    ADD CONSTRAINT "RGMicro_organisme_pkey" PRIMARY KEY (id_micro);


--
-- Name: RessourceFaunistique RessourceFaunistique_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceFaunistique"
    ADD CONSTRAINT "RessourceFaunistique_pkey" PRIMARY KEY ("ID_RGFAUNE");


--
-- Name: RessourceGenetique RessourceGenetique_nom_latin_key; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique"
    ADD CONSTRAINT "RessourceGenetique_nom_latin_key" UNIQUE (nom_latin);


--
-- Name: RessourceGenetique RessourceGenetique_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique"
    ADD CONSTRAINT "RessourceGenetique_pkey" PRIMARY KEY ("ID");


--
-- Name: RessourceMarine RessourceMarine_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceMarine"
    ADD CONSTRAINT "RessourceMarine_pkey" PRIMARY KEY ("id_RGMarine");


--
-- Name: RessourcePhytogenetique RessourcePhytogenetique_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourcePhytogenetique"
    ADD CONSTRAINT "RessourcePhytogenetique_pkey" PRIMARY KEY ("ID_RGPhyto");


--
-- Name: Utilisateur Utilisateur_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Utilisateur"
    ADD CONSTRAINT "Utilisateur_pkey" PRIMARY KEY ("Id_client");


--
-- Name: Virus Virus_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Virus"
    ADD CONSTRAINT "Virus_pkey" PRIMARY KEY (id_virus);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: carac_anatomique carac_anatomique_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_anatomique
    ADD CONSTRAINT carac_anatomique_pkey PRIMARY KEY (id_carac_anatomique);


--
-- Name: carac_morphologique carac_morphologique_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_morphologique
    ADD CONSTRAINT carac_morphologique_pkey PRIMARY KEY (id_carac_morphologique);


--
-- Name: carac_morphologique_rgfaune carac_morphologique_rgfaune_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_morphologique_rgfaune
    ADD CONSTRAINT carac_morphologique_rgfaune_pkey PRIMARY KEY (id_carac_morphologique);


--
-- Name: caracteristique_morph_micro caracteristique_morph_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".caracteristique_morph_micro
    ADD CONSTRAINT caracteristique_morph_micro_pkey PRIMARY KEY (id_morph_micro);


--
-- Name: caractéristique_anatomique_micro caractéristique_anatomique_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."caractéristique_anatomique_micro"
    ADD CONSTRAINT "caractéristique_anatomique_micro_pkey" PRIMARY KEY ("Id_carac_ana");


--
-- Name: categorieinstitution cat_inst_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".categorieinstitution
    ADD CONSTRAINT cat_inst_pkey PRIMARY KEY (id_cat_inst);


--
-- Name: concernerannuaire concernerannuaire_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concernerannuaire
    ADD CONSTRAINT concernerannuaire_pkey PRIMARY KEY (code_rg, id_inst);


--
-- Name: constitueede constitueede_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".constitueede
    ADD CONSTRAINT constitueede_pkey PRIMARY KEY (id_cta, id_ingredient);


--
-- Name: ecosysteme_marine ecosysteme_marine_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".ecosysteme_marine
    ADD CONSTRAINT ecosysteme_marine_pkey PRIMARY KEY (id_ecosys_marine);


--
-- Name: ecosysteme_micro ecosysteme_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".ecosysteme_micro
    ADD CONSTRAINT ecosysteme_micro_pkey PRIMARY KEY (ecosysteme_id);


--
-- Name: emplacement emplacement_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".emplacement
    ADD CONSTRAINT emplacement_pkey PRIMARY KEY (id_emplacement);


--
-- Name: evenement evenement_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY (id);


--
-- Name: geolocalisation geolocalisation_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".geolocalisation
    ADD CONSTRAINT geolocalisation_pkey PRIMARY KEY (id_geolocalisation);


--
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (id_ingredient);


--
-- Name: institution inst_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".institution
    ADD CONSTRAINT inst_pkey PRIMARY KEY (id_inst);


--
-- Name: localisation_marine localisation_marine_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_marine
    ADD CONSTRAINT localisation_marine_pkey PRIMARY KEY (id_localisation_marine);


--
-- Name: localisation_micro localisation_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_micro
    ADD CONSTRAINT localisation_micro_pkey PRIMARY KEY (id_localisation);


--
-- Name: localisation_rgfaune localisation_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_rgfaune
    ADD CONSTRAINT localisation_pkey PRIMARY KEY (id_localisation);


--
-- Name: localisation_utilisateur localisation_utilisateur_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation_utilisateur
    ADD CONSTRAINT localisation_utilisateur_pkey PRIMARY KEY (id_localisation_client);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: phane phane_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".phane
    ADD CONSTRAINT phane_pkey PRIMARY KEY (id_phan);


--
-- Name: posseder_ecosys_micro posseder_ecosys_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_ecosys_micro
    ADD CONSTRAINT posseder_ecosys_micro_pkey PRIMARY KEY (id_rg_micro, id_ecosysteme_micro);


--
-- Name: posseder_morpho_micro posseder_morpho_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_morpho_micro
    ADD CONSTRAINT posseder_morpho_micro_pkey PRIMARY KEY (id_rg_micro, id_morph_micro);


--
-- Name: concerner res_ecosys_id; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concerner
    ADD CONSTRAINT res_ecosys_id PRIMARY KEY (id_resssource, id_ecosysteme);


--
-- Name: localisation res_geoloc_id; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation
    ADD CONSTRAINT res_geoloc_id PRIMARY KEY (id_resssource, id_geolocalisation);


--
-- Name: rgclassification rgclassification_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".rgclassification
    ADD CONSTRAINT rgclassification_pkey PRIMARY KEY (id);


--
-- Name: setrouve_loc_micro setrouve_loc_micro_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouve_loc_micro
    ADD CONSTRAINT setrouve_loc_micro_pkey PRIMARY KEY (id_rg_micro, id_loc_micro);


--
-- Name: setrouvea setrouvea_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouvea
    ADD CONSTRAINT setrouvea_pkey PRIMARY KEY (id_emplacement, code_rg);


--
-- Name: utilisateur_region utilisateur_region_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utilisateur_region
    ADD CONSTRAINT utilisateur_region_pkey PRIMARY KEY (id_utilisateur, id_localisation_client);


--
-- Name: utiliseedans utiliseedans_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utiliseedans
    ADD CONSTRAINT utiliseedans_pkey PRIMARY KEY (id_cta, code_rg);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- Name: Algues Algues_id_Eucaryotes_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Algues"
    ADD CONSTRAINT "Algues_id_Eucaryotes_fkey" FOREIGN KEY ("id_Eucaryotes") REFERENCES "RG"."Eucaryotes"("id_Eucaryotes") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ArcharoBacteries ArcharoBacteries_id_Procaryote_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."ArcharoBacteries"
    ADD CONSTRAINT "ArcharoBacteries_id_Procaryote_fkey" FOREIGN KEY ("id_Procaryote") REFERENCES "RG"."Procaryotes"("id_Procaryote") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Champignions Champignions_id_champignion_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Champignions"
    ADD CONSTRAINT "Champignions_id_champignion_fkey" FOREIGN KEY (id_champignion) REFERENCES "RG"."Eucaryotes"("id_Eucaryotes") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: EuBacteries EuBacteries_id_Procaryote_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."EuBacteries"
    ADD CONSTRAINT "EuBacteries_id_Procaryote_fkey" FOREIGN KEY ("id_Procaryote") REFERENCES "RG"."Procaryotes"("id_Procaryote") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Eucaryotes Eucaryotes_id_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Eucaryotes"
    ADD CONSTRAINT "Eucaryotes_id_micro_fkey" FOREIGN KEY (id_micro) REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Procaryotes Procaryotes_id_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Procaryotes"
    ADD CONSTRAINT "Procaryotes_id_micro_fkey" FOREIGN KEY (id_micro) REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Protozoaires Protozoaires_id_Eucaryotes_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Protozoaires"
    ADD CONSTRAINT "Protozoaires_id_Eucaryotes_fkey" FOREIGN KEY ("id_Eucaryotes") REFERENCES "RG"."Eucaryotes"("id_Eucaryotes") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RGMicro_organisme RGMicro_organisme_id_carac_anatomique_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RGMicro_organisme"
    ADD CONSTRAINT "RGMicro_organisme_id_carac_anatomique_fkey" FOREIGN KEY (id_carac_anatomique) REFERENCES "RG"."caractéristique_anatomique_micro"("Id_carac_ana");


--
-- Name: RGMicro_organisme RGMicro_organisme_id_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RGMicro_organisme"
    ADD CONSTRAINT "RGMicro_organisme_id_rg_fkey" FOREIGN KEY (id_rg) REFERENCES "RG"."RessourceGenetique"("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceFaunistique RessourceFaunistique_id_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceFaunistique"
    ADD CONSTRAINT "RessourceFaunistique_id_rg_fkey" FOREIGN KEY (id_rg) REFERENCES "RG"."RessourceGenetique"("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceGenetique RessourceGenetique_id_cta_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique"
    ADD CONSTRAINT "RessourceGenetique_id_cta_fkey" FOREIGN KEY (id_cta) REFERENCES "RG"."CTA"("ID");


--
-- Name: RessourceGenetique RessourceGenetique_id_rgclassification_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique"
    ADD CONSTRAINT "RessourceGenetique_id_rgclassification_fkey" FOREIGN KEY (id_rgclassification) REFERENCES "RG".rgclassification(id);


--
-- Name: RessourceGenetique RessourceGenetique_id_utilisateur_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceGenetique"
    ADD CONSTRAINT "RessourceGenetique_id_utilisateur_fkey" FOREIGN KEY (id_utilisateur) REFERENCES "RG"."Utilisateur"("Id_client") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceMarine RessourceMarine_id_ecosys_marine_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceMarine"
    ADD CONSTRAINT "RessourceMarine_id_ecosys_marine_fkey" FOREIGN KEY (id_ecosys_marine) REFERENCES "RG".ecosysteme_marine(id_ecosys_marine) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceMarine RessourceMarine_id_localisation_marine_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceMarine"
    ADD CONSTRAINT "RessourceMarine_id_localisation_marine_fkey" FOREIGN KEY (id_localisation_marine) REFERENCES "RG".localisation_marine(id_localisation_marine) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceMarine RessourceMarine_id_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceMarine"
    ADD CONSTRAINT "RessourceMarine_id_rg_fkey" FOREIGN KEY (id_rg) REFERENCES "RG"."RessourceGenetique"("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourcePhytogenetique RessourcePhytogenetique_id_anatomique_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourcePhytogenetique"
    ADD CONSTRAINT "RessourcePhytogenetique_id_anatomique_fkey" FOREIGN KEY (id_anatomique) REFERENCES "RG".carac_anatomique(id_carac_anatomique);


--
-- Name: RessourcePhytogenetique RessourcePhytogenetique_id_morphologique_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourcePhytogenetique"
    ADD CONSTRAINT "RessourcePhytogenetique_id_morphologique_fkey" FOREIGN KEY (id_morphologique) REFERENCES "RG".carac_morphologique(id_carac_morphologique);


--
-- Name: RessourcePhytogenetique RessourcePhytogenetique_id_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourcePhytogenetique"
    ADD CONSTRAINT "RessourcePhytogenetique_id_rg_fkey" FOREIGN KEY (id_rg) REFERENCES "RG"."RessourceGenetique"("ID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Virus Virus_id_rgMicro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."Virus"
    ADD CONSTRAINT "Virus_id_rgMicro_fkey" FOREIGN KEY ("id_rgMicro") REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: concerner concerner_id_resssource_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concerner
    ADD CONSTRAINT concerner_id_resssource_fkey FOREIGN KEY (id_resssource) REFERENCES "RG"."RessourcePhytogenetique"("ID_RGPhyto") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: concernerannuaire concernerannuaire_code_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concernerannuaire
    ADD CONSTRAINT concernerannuaire_code_rg_fkey FOREIGN KEY (code_rg) REFERENCES "RG"."RessourceGenetique"("ID");


--
-- Name: concernerannuaire concernerannuaire_id_inst_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concernerannuaire
    ADD CONSTRAINT concernerannuaire_id_inst_fkey FOREIGN KEY (id_inst) REFERENCES "RG".institution(id_inst);


--
-- Name: constitueede constitueede_id_cta_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".constitueede
    ADD CONSTRAINT constitueede_id_cta_fkey FOREIGN KEY (id_cta) REFERENCES "RG"."CTA"("ID");


--
-- Name: constitueede constitueede_id_ingredient_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".constitueede
    ADD CONSTRAINT constitueede_id_ingredient_fkey FOREIGN KEY (id_ingredient) REFERENCES "RG".ingredient(id_ingredient);


--
-- Name: concerner id_ecosys; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".concerner
    ADD CONSTRAINT id_ecosys FOREIGN KEY (id_ecosysteme) REFERENCES "RG"."Ecosysteme_res_phyto"(id_ecosysteme) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: localisation id_geoloc; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation
    ADD CONSTRAINT id_geoloc FOREIGN KEY (id_geolocalisation) REFERENCES "RG".geolocalisation(id_geolocalisation) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RessourceFaunistique id_localisation; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceFaunistique"
    ADD CONSTRAINT id_localisation FOREIGN KEY (id_localisation) REFERENCES "RG".localisation_rgfaune(id_localisation);


--
-- Name: RessourceFaunistique id_morphologique; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG"."RessourceFaunistique"
    ADD CONSTRAINT id_morphologique FOREIGN KEY (id_morphologique) REFERENCES "RG".carac_morphologique_rgfaune(id_carac_morphologique);


--
-- Name: carac_morphologique id_phane; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".carac_morphologique
    ADD CONSTRAINT id_phane FOREIGN KEY (id_phane) REFERENCES "RG".phane(id_phan);


--
-- Name: institution institution_id_cat_inst_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".institution
    ADD CONSTRAINT institution_id_cat_inst_fkey FOREIGN KEY (id_cat_inst) REFERENCES "RG".categorieinstitution(id_cat_inst);


--
-- Name: localisation localisation_id_resssource_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".localisation
    ADD CONSTRAINT localisation_id_resssource_fkey FOREIGN KEY (id_resssource) REFERENCES "RG"."RessourcePhytogenetique"("ID_RGPhyto") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posseder_ecosys_micro posseder_ecosys_micro_id_ecosysteme_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_ecosys_micro
    ADD CONSTRAINT posseder_ecosys_micro_id_ecosysteme_micro_fkey FOREIGN KEY (id_ecosysteme_micro) REFERENCES "RG".ecosysteme_micro(ecosysteme_id);


--
-- Name: posseder_ecosys_micro posseder_ecosys_micro_id_rg_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_ecosys_micro
    ADD CONSTRAINT posseder_ecosys_micro_id_rg_micro_fkey FOREIGN KEY (id_rg_micro) REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: posseder_morpho_micro posseder_morpho_micro_id_morph_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_morpho_micro
    ADD CONSTRAINT posseder_morpho_micro_id_morph_micro_fkey FOREIGN KEY (id_morph_micro) REFERENCES "RG".caracteristique_morph_micro(id_morph_micro);


--
-- Name: posseder_morpho_micro posseder_morpho_micro_id_rg_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".posseder_morpho_micro
    ADD CONSTRAINT posseder_morpho_micro_id_rg_micro_fkey FOREIGN KEY (id_rg_micro) REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: rgclassification rgclassification_parent_id_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".rgclassification
    ADD CONSTRAINT rgclassification_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES "RG".rgclassification(id);


--
-- Name: setrouve_loc_micro setrouve_loc_micro_id_loc_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouve_loc_micro
    ADD CONSTRAINT setrouve_loc_micro_id_loc_micro_fkey FOREIGN KEY (id_loc_micro) REFERENCES "RG".localisation_micro(id_localisation);


--
-- Name: setrouve_loc_micro setrouve_loc_micro_id_rg_micro_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouve_loc_micro
    ADD CONSTRAINT setrouve_loc_micro_id_rg_micro_fkey FOREIGN KEY (id_rg_micro) REFERENCES "RG"."RGMicro_organisme"(id_micro) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: setrouvea setrouvea_code_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouvea
    ADD CONSTRAINT setrouvea_code_rg_fkey FOREIGN KEY (code_rg) REFERENCES "RG"."RessourceGenetique"("ID");


--
-- Name: setrouvea setrouvea_id_emplacement_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".setrouvea
    ADD CONSTRAINT setrouvea_id_emplacement_fkey FOREIGN KEY (id_emplacement) REFERENCES "RG".emplacement(id_emplacement);


--
-- Name: utilisateur_region utilisateur_region_id_localisation_client_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utilisateur_region
    ADD CONSTRAINT utilisateur_region_id_localisation_client_fkey FOREIGN KEY (id_localisation_client) REFERENCES "RG".localisation_utilisateur(id_localisation_client) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: utilisateur_region utilisateur_region_id_utilisateur_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utilisateur_region
    ADD CONSTRAINT utilisateur_region_id_utilisateur_fkey FOREIGN KEY (id_utilisateur) REFERENCES "RG"."Utilisateur"("Id_client") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: utiliseedans utiliseedans_code_rg_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utiliseedans
    ADD CONSTRAINT utiliseedans_code_rg_fkey FOREIGN KEY (code_rg) REFERENCES "RG"."RessourceGenetique"("ID");


--
-- Name: utiliseedans utiliseedans_id_cta_fkey; Type: FK CONSTRAINT; Schema: RG; Owner: RGAdmin
--

ALTER TABLE ONLY "RG".utiliseedans
    ADD CONSTRAINT utiliseedans_id_cta_fkey FOREIGN KEY (id_cta) REFERENCES "RG"."CTA"("ID");


--
-- PostgreSQL database dump complete
--
