-- Table: public.supply

-- DROP TABLE public.supply;

CREATE TABLE public.supply
(
  id_supply integer NOT NULL,
  supply_date character varying(150) NOT NULL,
  volume character varying(150) NOT NULL,
  id_caterer integer NOT NULL,
  id_material integer NOT NULL,
  id_store integer NOT NULL,
  CONSTRAINT supply_pkey PRIMARY KEY (id_supply),
  CONSTRAINT supply_id_caterer_fkey FOREIGN KEY (id_caterer)
      REFERENCES public.caterer (id_caterer) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT supply_id_material_fkey FOREIGN KEY (id_material)
      REFERENCES public.material (id_material) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT supply_id_store_fkey FOREIGN KEY (id_store)
      REFERENCES public.store (id_store) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.supply
  OWNER TO postgres;
