-- Table: public.material

-- DROP TABLE public.material;

CREATE TABLE public.material
(
  id_material integer NOT NULL,
  name character varying(150) NOT NULL,
  id_measure integer NOT NULL,
  CONSTRAINT material_pkey PRIMARY KEY (id_material),
  CONSTRAINT material_id_measure_fkey FOREIGN KEY (id_measure)
      REFERENCES public.measure (id_measure) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.material
  OWNER TO postgres;
