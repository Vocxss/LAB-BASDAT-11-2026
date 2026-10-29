create table anggota (
	id int generated always as identity primary key,
	nama_anggota varchar(50) not null,
	kota_domisili varchar(20) not null
)

create table buku (
	id int generated always as identity primary key,
	judul_buku varchar(100) not null,
	genre varchar(20) not null,
	stok int default 1
)

create table peminjaman (
	id int generated always as identity primary key,
	id_anggota int,
	id_buku int,
	tanggal_pinjam date not null,
	tanggal_kembali date,
	denda int default 0,

	constraint fk_pinjam_buku foreign key id_buku references buku(id),
	constraint fk_pinjam_anggota foreign key id_anggota references anggota(id)
)

create index idx_genre_buku on buku(genre);
create index idx_kota_domisili on anggota(kota_domisili);
