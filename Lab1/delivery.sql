-- Table: public.deliver

-- DROP TABLE public.deliver;

CREATE TABLE public.deliver
(
  id_deliver integer NOT NULL,
  deliver_date date NOT NULL,
  id_section integer NOT NULL,
  id_material integer NOT NULL,
  id_store integer NOT NULL,
  CONSTRAINT deliver_pkey PRIMARY KEY (id_deliver),
  CONSTRAINT deliver_id_material_fkey FOREIGN KEY (id_material)
      REFERENCES public.material (id_material) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT deliver_id_section_fkey FOREIGN KEY (id_section)
      REFERENCES public.section (id_section) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT deliver_id_store_fkey FOREIGN KEY (id_store)
      REFERENCES public.store (id_store) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.deliver
  OWNER TO postgres;
