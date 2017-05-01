SELECT material.name, measure.name, inprice.price
FROM material, measure, inprice
WHERE (inprice.price_date BETWEEN '06.01.2009' AND '08.31.2009') AND (inprice.price = 0)

