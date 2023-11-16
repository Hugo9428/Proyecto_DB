-- Relación entre Producto y Categoria
ALTER TABLE Producto
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id)
REFERENCES Categoria(id);

-- Relación entre Stock y Producto
ALTER TABLE Stock
ADD CONSTRAINT fk_producto_stock
FOREIGN KEY (producto_id)
REFERENCES Producto(id);

-- Relación entre Stock y Sucursal
ALTER TABLE Stock
ADD CONSTRAINT fk_sucursal_stock
FOREIGN KEY (sucursal_id)
REFERENCES Sucursal(id);

-- Relación entre Orden y Cliente
ALTER TABLE Orden
ADD CONSTRAINT fk_cliente_orden
FOREIGN KEY (cliente_id)
REFERENCES Cliente(id);

-- Relación entre Orden y Sucursal
ALTER TABLE Orden
ADD CONSTRAINT fk_sucursal_orden
FOREIGN KEY (sucursal_id)
REFERENCES Sucursal(id);

-- Relación entre Item, Orden y Producto
ALTER TABLE Item
ADD CONSTRAINT fk_orden_item
FOREIGN KEY (orden_id)
REFERENCES Orden(id);

ALTER TABLE Item
ADD CONSTRAINT fk_producto_item
FOREIGN KEY (producto_id)
REFERENCES Producto(id);