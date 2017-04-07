-- Table: public.surplus

-- DROP TABLE public.surplus;

CREATE TABLE public.surplus
(
  id_surplus integer NOT NULL,
  volume character varying(150) NOT NULL,
  id_material integer NOT NULL,
  id_store integer NOT NULL,
  CONSTRAINT surplus_pkey PRIMARY KEY (id_surplus),
  CONSTRAINT surplus_id_material_fkey FOREIGN KEY (id_material)
      REFERENCES public.material (id_material) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT surplus_id_store_fkey FOREIGN KEY (id_store)
      REFERENCES public.store (id_store) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.surplus
  OWNER TO postgres;
