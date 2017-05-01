select
  caterer.name, caterer.phone, contact.surname, contact.name, contact.phone
from caterer , contact
order by caterer.name, contact.surname, contact.name