﻿CREATE VIEW PS
  (CATERER.NAME, CONTACT.NAME, CONTACT.SURNAME)
AS
  SELECT CATERER.NAME, CONTACT.NAME, CONTACT.SURNAME
    FROM CATERER JOIN CONTACT
    ON CATERER.ID_CATERER = CONTACT.ID_CATERER;


SELECT * FROM PS;


INSERT INTO PS
  (CATERER.NAME, CONTACT.NAME, CONTACT.SURNAME)
  VALUES
  ('caterer', 'name', 'surname');


DELETE FROM PS
  WHERE CATERER = 1;


UPDATE PS
  SET CONTACT.NAME = 'John'
    WHERE CATERER = 5;





