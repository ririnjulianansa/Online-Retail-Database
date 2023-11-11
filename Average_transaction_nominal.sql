-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.

SELECT P.nama AS nama_pelanggan, AVG(T.total_harga) AS rata_rata_transaksi
FROM pelanggan P
JOIN pesanan PS ON P.pelanggan_id = PS.pelanggan_id
JOIN transaksi T ON PS.pesanan_id = T.pesanan_id
WHERE PS.tanggal_pemesanan BETWEEN DATE_SUB(NOW(), INTERVAL 1 MONTH) AND NOW()
GROUP BY P.nama;