use dqlabmartbasic;
select 
	t1.kode_transaksi,
	t1.tanggal_transaksi as tanggal_transaksi,
	t1.kode_pelanggan,
	t1.no_urut ,
	t1.kode_produk ,
	t1.nama_produk,
	(t1.qty*t1.harga) as total_penjualan,
	datediff(current_date(),tanggal_transaksi) as jumlah_hari_sejak_pembelian
from 
	tr_penjualan t1
where tanggal_transaksi is not null and nama_produk regexp 'u';