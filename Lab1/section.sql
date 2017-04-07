-- Table: public.section

-- DROP TABLE public.section;

CREATE TABLE public.section
(
  id_section integer NOT NULL,
  name character varying(150) NOT NULL,
  id_employer integer NOT NULL,
  CONSTRAINT section_pkey PRIMARY KEY (id_section),
  CONSTRAINT section_id_employer_fkey FOREIGN KEY (id_employer)
      REFERENCES public.employer (id_employer) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.section
  OWNER TO postgres;
