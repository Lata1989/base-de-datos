--1. select * from Estados
--2. select nombre, telefono from clientes order by Nombre
--3. select * from clientes where id=3
--4. select * from pedidos
     --where month(fecha) = 3 and year(fecha)=2023
     --order by fecha desc
--5. select * from pedidos where fecha between '2023-01-01' and '2023-03-15'
--6. select count(*) as Cantidad, Cliente from pedidos group by Cliente
--7. select top 3 count(*) as Cantidad, Cliente from pedidos group by Cliente order by count(*) desc
--8. select SUM(PrecioUnitario * Cantidad) as Total from PedidosXProductos
--9. select IdPedido, SUM(PrecioUnitario * Cantidad) as Total from PedidosXProductos
    --group by IdPedido having SUM(PrecioUnitario * Cantidad) > 10000
--10. select * from Productos where Existencia = 0
--11. select * from Pedidos where estado= 2
--12. select count(*) as cantidad from Pedidos where estado= 5
--13. select estado, count(*) as cantidad from Pedidos group by estado




