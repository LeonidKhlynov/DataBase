﻿CREATE VIEW SURPLUS
  (MATERIAL, STORE, VOLUME)
AS
  SELECT MATERIAL.NAME, STORE.NAME, SUM(SURPLUS.VOLUME)
    FROM MATERIAL JOIN SURPLUS  
      ON MATERIAL.ID_MATERIAL = SURPLUS.ID_MATERIAL
    JOIN STORE 
      ON SURPLUS.ID_STORE = STORE.ID_STORE
    GROUP BY MATERIAL.NAME, STORE.NAME;


