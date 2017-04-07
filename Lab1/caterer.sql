-- Table: public.caterer

-- DROP TABLE public.caterer;

CREATE TABLE public.caterer
(
  id_caterer integer NOT NULL,
  name character varying(150) NOT NULL,
  phone character varying(150) NOT NULL,
  fax character varying(150) NOT NULL,
  urid_address character varying(150) NOT NULL,
  fact_address character varying(150) NOT NULL,
  email character varying(150) NOT NULL,
  CONSTRAINT caterer_pkey PRIMARY KEY (id_caterer)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.caterer
  OWNER TO postgres;
