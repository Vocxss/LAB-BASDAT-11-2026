select
	productcode,
	productname,
	msrp,
	quantityinstock,
	case
		when msrp < 50 and quantityinstock > 500 then 'Ekonomis - Stok tinggi'
		when msrp < 50 and quantityinstock <= 500 then 'Ekonomis - Stok rendah'
		when msrp between 50 and 100 then 'Harga menengah'
		when msrp > 100 then 'Harga Premium'
	end as kategori
	from
		products
	order by msrp desc
