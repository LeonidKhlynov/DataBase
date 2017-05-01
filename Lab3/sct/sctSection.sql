SELECT * FROM section
where id_section not in (select deliver.id_section from deliver where
deliver_date BETWEEN '08.01.2009' AND '08.31.2009')
