drop procedure if exists GetMaxQuantity;
create procedure GetMaxQuantity() 
select max(Quantity) as GetMaxQuantity from orders;
call GetMaxQuantity();