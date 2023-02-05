drop procedure if exists CancelOrder;
delimiter \\
create procedure CancelOrder(orderID int) 
begin

delete from Orders where OrderID=orderID;

select concat("Order ", OrderID, " is cancelled") as Confirmation;

end\\
delimiter ;