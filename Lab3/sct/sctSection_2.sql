SELECT name FROM section
WHERE id_section in
      (SELECT deliver.id_deliver FROM deliver
        WHERE deliver_date = SYSDATE)
