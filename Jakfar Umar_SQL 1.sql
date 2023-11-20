--soal 1
select kota
from rakamin_customer_address
group by kota
order by kota;

--soal 2
select *
from rakamin_order
order by tanggal_pembelian desc
limit 10;

--soal 3
select *
from rakamin_customer
where penipu = 1;

--soal 4
select *
from rakamin_order
where metode_bayar = 'shopeepay'
order by harga desc;

--soal 5
create table rakamin_customer_address_tangerang as (
	select *
	from rakamin_customer_address
	where kota = 'Tangerang');

--soal 6
update rakamin_customer_address_tangerang
	set provinsi = 'Banten';
update rakamin_customer_address_tangerang
	set alamat = 'Karawaci'
	where id_pelanggan = 10;

--soal 7
insert into rakamin_customer_address_tangerang
values (101, 70, 'Ciledug', 'Tangerang', 'Banten');

--soal 8
delete from rakamin_customer_address_tangerang
where id_alamat = 54