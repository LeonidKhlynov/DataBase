SELECT name FROM material
WHERE id_material in(
  SELECT deliver.id_material FROM deliver
  WHERE deliver_date BETWEEN '01.01.2017' AND '12.31.2017'
)
