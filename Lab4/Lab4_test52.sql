﻿CREATE VIEW SUPPLY_PRICE
  (ID, MATERIAL, VOLUME, STORE, PRICE, SUMM)
AS
  SELECT SUPPLY.ID_SUPPLY, MATERIAL.NAME, SUPPLY.VOLUME, 
         STORE.NAME, SUPPLY.PRICE, 
         SUPPLY.VOLUME * SUPPLY.PRICE
  FROM SUPPLY JOIN MATERIAL 
    ON SUPPLY.ID_MATERIAL = MATERIAL.ID_MATERIAL
  JOIN STORE 
    ON SUPPLY.ID_STORE = STORE.ID_STORE
  ORDER BY SUPPLY.ID_SUPPLY;


CREATE VIEW INPRICE
  (ID, MATERIAL, VOLUME, STORE, PRICE, SUMM)
AS
  SELECT SUPPLY.ID_SUPPLY, MATERIAL.NAME, SUPPLY.VOLUME, 
         STORE.NAME, INPRICE.PRICE, 
         SUPPLY.VOLUME * INPRICE.PRICE
  FROM SUPPLY JOIN MATERIAL 
    ON SUPPLY.ID_MATERIAL = MATERIAL.ID_MATERIAL
  JOIN INPRICE 
    ON MATERIAL.ID_MATERIAL = INPRICE.ID_MATERIAL
  JOIN STORE 
    ON SUPPLY.ID_STORE = STORE.ID_STORE
  ORDER BY SUPPLY.ID_SUPPLY;


CREATE VIEW COMPARE
  (MATERIAL, VOLUME, STORE, SUPPLY_PRICE, INPRICE)
AS
  SELECT MATERIAL.NAME, SUPPLY.VOLUME, STORE.NAME,
         SUPPLY_PRICE.SUMM, INPRICE.SUMM, 
         ABS(SUPPLY_PRICE.SUMM - INPRICE.SUMM)
  FROM SUPPLY JOIN MATERIAL 
    ON SUPPLY.ID_MATERIAL = MATERIAL.ID_MATERIAL
  JOIN STORE 
    ON SUPPLY.ID_STORE = STORE.ID_STORE
  JOIN SUPPLY_PRICE 
    ON SUPPLY.ID_SUPPLY = SUPPLY_PRICE.ID
  JOIN INPRICE 
    ON SUPPLY.ID_SUPPLY = INPRICE.ID; 