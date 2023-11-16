--2.Obtener la cantidad total de productos en stock por categoría
select c.nombre as categoria, SUM(s.cantidad) as cantidad_total
from categoria c
join producto p on c.id = p.categoria_id
join stock s on P.ID = S.producto_id
group by c.nombre