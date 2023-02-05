select c.CustomerID, c.Name, o.OrderID, o.TotalCost, m.Name, i.CourseName
from customers as c
inner join orders as o on c.CustomerID = o.CustomerID
inner join menus as m on o.MenuID = m.MenuID
inner join menuitems as i on m.ItemID = i.ItemID
Where o.TotalCost > 150

