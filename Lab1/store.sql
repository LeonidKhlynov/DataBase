-- Table: public.store

-- DROP TABLE public.store;

CREATE TABLE public.store
(
  id_store integer NOT NULL,
  name character varying(150) NOT NULL,
  CONSTRAINT store_pkey PRIMARY KEY (id_store)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.store
  OWNER TO postgres;
