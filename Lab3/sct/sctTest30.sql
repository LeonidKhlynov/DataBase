SELECT section.name, material.name, surplus.volume
FROM section, material, surplus
WHERE surplus.volume > 0

