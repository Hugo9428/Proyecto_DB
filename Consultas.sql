SELECT 
    MIN(precio_unitario) AS precio_minimo,
    MAX(precio_unitario) AS precio_maximo,
    AVG(precio_unitario) AS precio_promedio
FROM Producto;

SELECT sucursal_id, SUM(cantidad) AS Total_productos
FROM Stock
GROUP BY sucursal_id;

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