-- Table: public.employer

-- DROP TABLE public.employer;

CREATE TABLE public.employer
(
  id_employer integer NOT NULL,
  surname character varying(150) NOT NULL,
  name character varying(150) NOT NULL,
  fathername character varying(150) NOT NULL,
  CONSTRAINT employer_pkey PRIMARY KEY (id_employer)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.employer
  OWNER TO postgres;
