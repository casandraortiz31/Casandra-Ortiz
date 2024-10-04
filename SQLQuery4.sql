SELECT nombre,email,fecha
FROM Cliente 
FULL OUTER JOIN factura ON Cliente.id_cliente=Factura.id_cliente
ORDER BY year(fecha)=2021;

SELECT nombre,email,fecha
FROM Cliente 
JOIN factura ON cliente.id_cliente=Factura.id_cliente
WHERE YEAR(fecha)=2022;

SELECT nombre,email,fecha
FROM Cliente 
INNER JOIN factura ON cliente.id_cliente=Factura.id_cliente
WHERE YEAR(fecha)=2021 AND MONTH(fecha)=12;

SELECT Cliente.nombre,Producto.nombre,Factura.fecha
FROM Cliente 
INNER JOIN Factura ON Cliente.id_cliente=Factura.id_cliente
INNER JOIN Producto ON Factura.id_detalle=Producto.id_producto
WHERE CAST(Cliente.nombre AS varchar(MAX))IN('Valentina Anastasia','Zayra Manuela','Dante Eduardo', 'Ana Maribel','Rodrigo Ismael');

SELECT TOP 1 CAST (Producto.nombre AS varchar(MAX)) AS nombre_producto,
COUNT(Factura.id_detalle) AS Ventas
FROM Producto
Join Factura ON Producto.id_producto=Factura.id_cliente
GROUP BY CAST(Producto.nombre AS varchar(MAX))
ORDER BY  Ventas DESC;

SELECT TOP 1 Producto.nombre, stock
FROM Producto
ORDER BY stock DESC;

SELECT Factura.id_factura,fecha
FROM Factura
Order BY fecha ASC

SELECT Cliente.id_cliente, nombre
FROM Cliente
Order BY nombre ASC;

SELECT Producto.nombre, Categoria.nombre AS categoria_nombre
FROM Producto
Join Categoria ON Producto.id_categoria=Categoria.id_categoria


SELECT Sucursal.Nombre_encargado,nombre_sucursal 
FROM Sucursal;


SELECT Sucursal.Nombre_encargado,nombre_sucursal 
FROM Sucursal
WHERE nombre_sucursal ='AkirasBoutique:Constitucion';

SELECT Cliente.nombre, fec_nac
FROM Cliente
Order BY fec_nac ASC;
