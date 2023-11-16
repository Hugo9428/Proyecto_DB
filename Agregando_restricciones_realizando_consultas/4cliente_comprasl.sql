--4.Obtener el cliente que ha realizado el mayor monto de compras
select c.nombre as cliente, sum(i.monto_venta) as monto_total_compras
from cliente c 
join orden o on c.id = o.cliente_id 
join item i on o.id = i.orden_id 
group by c.nombre 
order by monto_total_compras desc 
limit 1;