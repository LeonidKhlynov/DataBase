ALTER TABLE contact
  ADD CONSTRAINT contactfk
  FOREIGN KEY (id_caterer) REFERENCES caterer (id_caterer);