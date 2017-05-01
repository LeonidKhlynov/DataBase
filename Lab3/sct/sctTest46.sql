SELECT caterer.name
FROM caterer, deliver, inprice
WHERE deliver_price < 1000 AND price_date = '05.01.2017'
