create view OrdersView As
select OrderID, Quantity, Cost 
from Orders
Where Quantity > 2; 
