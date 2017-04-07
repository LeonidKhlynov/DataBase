-- Table: public.measure

-- DROP TABLE public.measure;

CREATE TABLE public.measure
(
  id_measure integer NOT NULL,
  name character varying(150) NOT NULL,
  CONSTRAINT measure_pkey PRIMARY KEY (id_measure)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.measure
  OWNER TO postgres;
