CREATE DATABASE tienda;
USE tienda;

CREATE TABLE Proveedores (
proveedor_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (proveedor_id)
);

CREATE TABLE Productos (
producto_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
descripcion VARCHAR(20),
precio DECIMAL(10, 2),
PRIMARY KEY (producto_id),
proveedor_id INT,
FOREIGN KEY (proveedor_id) REFERENCES Proveedores(proveedor_id)
);

CREATE TABLE Clientes (
cliente_id INT NOT NULL AUTO_INCREMENT,
tipo_documento VARCHAR(2),
numero_documento VARCHAR(15) UNIQUE,
nombre VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (cliente_id)
);

CREATE TABLE Ventas (
venta_id INT NOT NULL AUTO_INCREMENT,
cliente_id INT,
producto_id INT,
cantidad INT,
fecha DATE,
precio DECIMAL(10, 2),
estado BOOLEAN,
PRIMARY KEY (venta_id),
FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

CREATE TABLE Vendedor (
vendedor_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20),
apellido VARCHAR(20),
direccion VARCHAR(50),
telefono VARCHAR(20),
PRIMARY KEY (vendedor_id)
);

INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 1', 'Calle 1', '123456789');
INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 2', 'Calle 2', '9745433323');
INSERT INTO Proveedores ( nombre, direccion, telefono) VALUES ('Proveedor 3', 'Calle 3', '4354545934');

INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Manzana', 'Fruta', 1000, 1);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Pera','Fruta', '1500', 2);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Leche 1 lt', 'Lacteo', '3000', 3);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Lenteja 1 lb', 'Grano', 1000, 1);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Arroz lb','Grano', '1500', 2);
INSERT INTO Productos ( nombre, descripcion, precio, proveedor_id) VALUES ('Banana', 'Fruta', '3000', 3);

INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '123453445', 'Cliente 1', 'Calle 10', '1234546554');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('TC', '4545333232', 'Cliente 2', 'Calle 34', '65643434');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '224564356', 'Cliente 3', 'Calle 56', '545665656');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '245567788', 'Cliente 4', 'Calle 60', '8967654444');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('TC', '4545333232', 'Cliente 5', 'Calle 24', '65644353434');
INSERT INTO Clientes ( tipo_documento, numero_documento, nombre, direccion, telefono) VALUES ('CC', '34322323', 'Cliente 6', 'Calle 98', '675444443');

INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (1, 1, 2, '2023-03-01', 2000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (2, 2, 1, '2023-03-02', 1500, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (3, 3, 3, '2023-03-03', 9000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (1, 1, 2, '2023-03-04', 2000, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (2, 2, 1, '2023-03-05', 1500, TRUE );
INSERT INTO Ventas ( cliente_id, producto_id, cantidad, fecha, precio, estado) VALUES (3, 3, 3, '2023-03-06', 9000, TRUE );

INSERT INTO Vendedor ( nombre, apellido, direccion, telefono) VALUES ('Jairo', 'Mejia', 'Calle 9 # 8-34', '34234567');

UPDATE Ventas SET estado = 0 WHERE venta_id = 1;
UPDATE Ventas SET estado = 0 WHERE venta_id = 2;

DELETE FROM Ventas WHERE venta_id = 3;
DELETE FROM Ventas WHERE venta_id = 4;

UPDATE Productos SET nombre = 'Nuevo 1', proveedor_id = 2 WHERE producto_id = 1;
UPDATE Productos SET nombre = 'Nuevo 2', proveedor_id = 1 WHERE producto_id = 2;
UPDATE Productos SET nombre = 'Nuevo 3', proveedor_id = 2 WHERE producto_id = 3;





