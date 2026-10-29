select distinct
	p.customernumber,
	p.checknumber,
	p.paymentdate,
	p.amount,
	case
		when p.amount >= 50000 and p.paymentdate is not null then 'Pembayaran Besar dan Tercatat'
		when p.amount >= 50000 and p.paymentdate is null then 'Pembayaran besar perlu diperiksa'
		when p.amount < 50000 then 'Pembayaran menengah'
		else 'Pembayaran kecil'
	end as kategori
	from
		payments p
	order by p.amount desc
