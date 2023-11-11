UPDATE pelanggan
SET nama = 'Rinsa Pane', telp = '0813-9999-9999', alamat = 'Labura'
WHERE pelanggan_id = 1;

select * from pelanggan;

UPDATE produk
SET nama_produk = 'Shampo bilas', deskripsi_produk = 'Perawatan rambut terbaru', harga = 30.00, stok = 35
WHERE id_produk = 1;

select * from produk;

UPDATE pesanan
SET tanggal_pemesanan = '2023-11-15', keterangan = 'Minyak Goreng Good'
WHERE pesanan_id = 1;

select * from pesanan;

UPDATE transaksi
SET jumlah_produk = 3, total_harga = 60.00
WHERE transaksi_id = 1;

select * from transaksi;