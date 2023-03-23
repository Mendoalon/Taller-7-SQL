-- Seleccionamos la base de datos tienda para interactuar.
USE tienda;

-- Consulta donde pueda obtener los productos vendidos digitando tipo de documento y número de documento.
SELECT P.nombre, V.cantidad, V.fecha
FROM ventas V
INNER JOIN Productos P ON V.producto_id = P.producto_id
WHERE V.tipo_Documento = 'CC' AND V.numero_Documento = '123453445';


-- Consultar productos por medio del nombre, el cual debe mostrar quien o quienes han sido sus proveedores.
SELECT P.nombre AS NOMBRE_PRODUCTO, PR.nombre AS NOMBRE_PROVEEDOR
FROM productos P
INNER JOIN proveedores PR ON P.producto_id = PR.proveedor_id
WHERE P.nombre = 'Leche 1 lt';


-- Consulta que me permita ver qué producto ha sido el más vendido y en qué cantidades de mayor a menor.
SELECT P.nombre, SUM(V.cantidad) AS Cantidad_Vendida
FROM ventas V
INNER JOIN productos P ON V.venta_id = P.producto_id
GROUP BY P.nombre
ORDER BY (Cantidad_Vendida) DESC;
