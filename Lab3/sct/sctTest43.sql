SELECT sum(id_deliver)
FROM deliver, material, inprice
WHERE price_date < '05.01.2017' AND material.name = 'Metal';
SELECT sum(id_deliver)
FROM deliver, material, inprice
WHERE price_date < '05.01.2017' AND material.name = 'Wood';
SELECT sum(id_deliver)
FROM deliver, material, inprice
WHERE price_date < '05.01.2017' AND material.name = 'Aluminium';
SELECT sum(id_deliver)
FROM deliver, material, inprice
WHERE price_date < '05.01.2017' AND material.name = 'Hromiym';


