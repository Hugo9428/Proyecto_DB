--1.Calcular el precio promedio de los productos en cada categoría
select c.nombre AS categoria,AVG(p.precio_unitario) AS precio_promedio
from Categoria c
join Producto p ON c.id = p.categoria_id
GROUP BY c.nombre;