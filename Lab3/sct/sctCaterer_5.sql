SELECT caterer.name
FROM ((SELECT name FROM material
WHERE ((deliver.deliver_date BETWEEN '01.01.2009' AND '03.31.2009')
       AND caterer.city = 'Perm')
AND (Select delivery_date FROM delivery)) caterer