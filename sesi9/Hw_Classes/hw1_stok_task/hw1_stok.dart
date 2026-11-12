class Produk {
  String kode;
  String nama;
  double harga;
  int stok;

  Produk(this.kode, this.nama, this.harga, this.stok);

  void tambahStok(int jumlah) {
    stok += jumlah;
    print('Stok ditambah $jumlah, stok sekarang: $stok');
  }

  void kurangiStok(int jumlah) {
    if (stok < jumlah) {
      print('Stok tidak mencukupi!');
    } else {
      stok -= jumlah;
    }
  }

  void tampilkanInfo() {
    print('[$kode] $nama Rp ${harga.toInt()} | Stok: $stok');
  }
}

void main() {
  //var p1 = Produk('P001', 'Laptop Asus', 9500000, 5);
  var p2 = Produk('P002', 'Mouse Wireless', 150000, 2);

  p2.tampilkanInfo();
  p2.tambahStok(3);
  p2.kurangiStok(10); // Menampilkan "Stok tidak mencukupi!"
}