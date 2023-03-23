-- Creación de base de datos tienda.
CREATE DATABASE tienda;

-- Seleccionamos la base de datos tienda para interactuar.
USE tienda;

-- Creación de entidad Proveedores con sus atributos y llaves.
CREATE TABLE Proveedores (
proveedor_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (proveedor_id)
);

-- Creación de entidad Productos con sus atributos y llaves.
CREATE TABLE Productos (
producto_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
descripcion VARCHAR(20),
precio DECIMAL(10, 2),
PRIMARY KEY (producto_id),
proveedor_id INT,
FOREIGN KEY (proveedor_id) REFERENCES Proveedores(proveedor_id)
);

-- Creación de entidad Clientes con sus atributos y llaves.
CREATE TABLE Clientes (
cliente_id INT NOT NULL AUTO_INCREMENT,
tipo_documento VARCHAR(2),
numero_documento VARCHAR(15) UNIQUE,
nombre VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (cliente_id)
);

-- Creación de entidad Ventas con sus atributos y llaves.
CREATE TABLE Ventas (
venta_id INT NOT NULL AUTO_INCREMENT,
cliente_id INT,
producto_id INT,
cantidad INT,
tipo_documento VARCHAR(2),
numero_documento VARCHAR(15),
fecha DATE,
precio DECIMAL(10, 2),
estado BOOLEAN,
PRIMARY KEY (venta_id),
FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Creación de entidad Vendedor con sus atributos y llave.
CREATE TABLE Vendedor (
vendedor_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
apellido VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (vendedor_id)
);

-- Insertamos datos a la entidad Proveedores.
INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 1', 'Calle 1', '123456789');
INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 2', 'Calle 2', '9745433323');
INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 3', 'Calle 3', '4354545934');

-- Insertamos datos a la base de datos Productos.
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Manzana', 'Fruta', 1000, 1);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Pera','Fruta', '1500', 2);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Leche 1 lt', 'Lacteo', '3000', 3);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Lenteja 1 lb', 'Grano', 1000, 1);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Arroz lb','Grano', '1500', 2);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Banana', 'Fruta', '3000', 3);

-- Insertamos datos a la entidad Clientes.
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '123453445', 'Cliente 1', 'Calle 10', '1234546554');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('TC', '4545333231', 'Cliente 2', 'Calle 34', '65643434');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '224564356', 'Cliente 3', 'Calle 56', '545665656');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '245567788', 'Cliente 4', 'Calle 60', '8967654444');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('TC', '4545333232', 'Cliente 5', 'Calle 24', '65644353434');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '34322323', 'Cliente 6', 'Calle 98', '675444443');

-- Insertamos datos a la entidad Ventas.
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (1, 1, 'CC', 123453445,  2, '2023-03-01', 2000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (2, 2, 'CC', '224564356', 1, '2023-03-02', 1500, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (3, 3, 'TC', '4545333232', 3, '2023-03-03', 9000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (1, 1, 'CC', '245567788',2, '2023-03-04', 2000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (2, 2, 'CC', '123453445', 1, '2023-03-05', 1500, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (3, 3, 'CC', '123453445', 3, '2023-03-06', 9000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (1, 1, 'CC', '245567788',2, '2023-03-04', 2000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (2, 2, 'CC', '123453445', 1, '2023-03-05', 1500, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, tipo_documento, numero_documento, cantidad, fecha, precio, estado) VALUES (3, 3, 'CC', '123453445', 3, '2023-03-06', 9000, TRUE );

-- Insertamo dato a la entidad Vendedor.
INSERT INTO Vendedor ( nombre, apellido, direccion, telefono) VALUES ('Jairo', 'Mejia', 'Calle 9 # 8-34', '34234567');

-- Borrado lógico en la entidad ventas donde indicamos el estado false = 0
UPDATE Ventas SET estado = 0 WHERE venta_id = 3;
UPDATE Ventas SET estado = 0 WHERE venta_id = 4;

-- Borrado físico en la entidad ventas donde eliminamos 2 registros de forma permanente.
DELETE FROM Ventas WHERE venta_id = 8;
DELETE FROM Ventas WHERE venta_id = 9;

-- Modificación de tres nombres de la entidad Productos.
UPDATE Productos SET nombre = 'producto Nuevo 1' WHERE producto_id = 4;
UPDATE Productos SET nombre = 'producto Nuevo 2' WHERE producto_id = 5;
UPDATE Productos SET nombre = 'producto Nuevo 3' WHERE producto_id = 6;

-- Modificación de tres nombres de la entidad Proveedores.
UPDATE Proveedores SET nombre = 'proveedor nuevo 7' WHERE proveedor_id = 1;
UPDATE Proveedores SET nombre = 'proveedor nuevo 8' WHERE proveedor_id = 2;
UPDATE Proveedores SET nombre = 'proveedor nuevo 9' WHERE proveedor_id = 3;




