-- Table: public.inprice

-- DROP TABLE public.inprice;

CREATE TABLE public.inprice
(
  price_date character varying(150) NOT NULL,
  price character varying(150) NOT NULL,
  id_material integer NOT NULL,
  CONSTRAINT pr_key PRIMARY KEY (id_material, price_date),
  CONSTRAINT inprice_id_material_fkey FOREIGN KEY (id_material)
      REFERENCES public.material (id_material) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.inprice
  OWNER TO postgres;
