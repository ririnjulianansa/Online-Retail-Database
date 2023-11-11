CREATE TABLE pelanggan (
    pelanggan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nama VARCHAR(100) NOT NULL,
    telp VARCHAR(15),
    alamat TEXT
);

CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(255) NOT NULL,
    deskripsi_produk TEXT,
    harga DECIMAL(10, 2) NOT NULL,
    stok INT NOT NULL
);

CREATE TABLE pesanan (
    pesanan_id INT AUTO_INCREMENT PRIMARY KEY,
    pelanggan_id INT,
    tanggal_pemesanan DATE,
    keterangan TEXT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(pelanggan_id)
);

CREATE TABLE transaksi (
    transaksi_id INT AUTO_INCREMENT PRIMARY KEY,
    pesanan_id INT,
    produk_id INT,
    jumlah_produk INT NOT NULL,
    total_harga DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pesanan_id) REFERENCES pesanan(pesanan_id),
    FOREIGN KEY (produk_id) REFERENCES produk(id_produk)
);