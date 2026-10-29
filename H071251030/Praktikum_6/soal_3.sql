select
	productcode,
	productname,
	quantityinstock,
	msrp
from
	products
where
	quantityinstock > (
	select
		avg(p.quantityinstock)
	from
		products p)
	and msrp > (
	select
		avg(msrp)
	from
		products p)
order by
	quantityinstock desc
