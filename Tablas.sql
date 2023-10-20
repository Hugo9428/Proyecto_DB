CREATE TABLE Categoria( 
id SERIAL PRIMARY KEY,
nombre VARCHAR(50)    
);
CREATE TABLE Producto(
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
marca VARCHAR(50),
categoria_id INTEGER,
precio_unitario INTEGER    
);
CREATE TABLE Stock(
id SERIAL PRIMARY KEY,
sucursal_id INTEGER,
producto_id INTEGER,
cantidad INTEGER,
unique (sucursal_id, Producto_id)
);
CREATE TABLE Sucursal(
id SERIAL PRIMARY KEY,
nombre VARCHAR (50),
direccion VARCHAR(50)   
);
CREATE TABLE Orden(
id SERIAL PRIMARY KEY,
cliente_id INTEGER,
sucursal_id INTEGER,
fecha DATE,
total INTEGER
);
CREATE TABLE Cliente(
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
telefono VARCHAR(50)
);
CREATE TABLE Item(
id SERIAL PRIMARY KEY,
orden_id INTEGER,
producto_id INTEGER,
cantidad INTEGER,
monto_venta INTEGER
);