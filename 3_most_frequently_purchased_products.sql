-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.

SELECT p.nama_produk AS nama_produk, COUNT(t.produk_id) AS jumlah_pembelian
FROM produk p
JOIN transaksi t ON p.id_produk = t.produk_id
GROUP BY p.nama_produk
ORDER BY jumlah_pembelian DESC
LIMIT 3;