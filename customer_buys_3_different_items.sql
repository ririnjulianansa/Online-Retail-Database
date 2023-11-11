-- 1 pelanggan membeli 3 barang yang berbeda.

SELECT pelanggan.nama, COUNT(DISTINCT transaksi.id_produk) AS jumlah_barang_dibeli
FROM pelanggan
JOIN transaksi ON pelanggan.id_pelanggan = transaksi.id_pelanggan
WHERE pelanggan.nama = 'Rinsa' AND transaksi.id_produk IN (1, 2, 3)
GROUP BY pelanggan.nama
HAVING jumlah_barang_dibeli >= 3;