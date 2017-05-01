select
  section.name, material.name, surplus.volume
from section , material, surplus
order by section.name, surplus.volume DESC