SELECT caterer.name
FROM ((SELECT name, price, number FROM material
WHERE deliver.deliver_date BETWEEN '01.01.2009' AND '03.31.2009')AND
(Select delivery_date FROM delivery)) caterer