begin;

update orders set status = 'Shipped' where ordernumber = 101000;
savepoint status_pengiriman;

update orders set status = 'Cancelled' where ordernumber = 101000;

rollback to status_pengiriman;

commit;

select * from orders where ordernumber = 10100
