SELECT caterer.name, material.name, inprice.price
FROM caterer, material,inprice, deliver
WHERE deliver.deliver_date BETWEEN '01.01.2009' AND '03.31.2009'
