SELECT name FROM material
WHERE id_material in(
  SELECT deliver.id_material FROM deliver
  WHERE deliver_date BETWEEN '01.01.2017' and '12.31.2017'
)
And id_material IN (
  SELECT surplus.id_material FROM surplus
  WHERE volume = '0' OR volume IS NOT NULL
      )
