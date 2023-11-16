--3.Calcular el total de ventas por sucursal
select s.nombre as sucursal, SUM(i.monto_venta) as total_ventas
from sucursal s 
join orden o on s.id = o.sucursal_id 
join item i on o.id = i.orden_id 
group by s.nombre