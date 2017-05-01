select material.name, caterer.name
from material, caterer, inprice
  WHERE price_date = '05.01.2017'
order by caterer.name, material.name