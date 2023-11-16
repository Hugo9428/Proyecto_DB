--Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.
SELECT 
    MIN(precio_unitario) AS precio_minimo,
    MAX(precio_unitario) AS precio_maximo,
    AVG(precio_unitario) AS precio_promedio
FROM Producto;

--Calcular la cantidad total de productos en stock por sucursal.
SELECT sucursal_id, SUM(cantidad) AS Total_productos
FROM Stock
GROUP BY sucursal_id;

--Obtener el total de ventas por cliente.
SELECT
  cliente.id AS cliente_id,
  cliente.nombre AS cliente_nombre,
  SUM(orden.total) AS total_ventas
FROM
  cliente
INNER JOIN
  orden
ON
  cliente.id = orden.cliente_id
GROUP BY
  cliente.id,
  cliente.nombre
ORDER BY
  cliente_id ASC 