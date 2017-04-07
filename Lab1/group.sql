-- Table: public.t_group

-- DROP TABLE public.t_group;

CREATE TABLE public.t_group
(
  id_group integer NOT NULL,
  name_group character varying(150) NOT NULL,
  id_material integer NOT NULL,
  CONSTRAINT t_group_pkey PRIMARY KEY (id_group),
  CONSTRAINT t_group_id_material_fkey FOREIGN KEY (id_material)
      REFERENCES public.material (id_material) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.t_group
  OWNER TO postgres;
