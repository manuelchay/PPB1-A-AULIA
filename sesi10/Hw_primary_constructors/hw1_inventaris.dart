class Produk(final String kode, var String nama, var int stok, final int harga) {
  void tambahStok(int jumlah) {
    stok += jumlah;
    print('Stok $nama bertambah $jumlah, sekarang: $stok');
  }

  void jual(int jumlah) {
    if (stok >= jumlah) {
      stok -= jumlah;
      print('Terjual $jumlah unit $nama. Sisa stok: $stok');
    } else {
      print('Stok $nama tidak mencukupi!');
    }
  }

  void tampilkanInfo() {
    print('[$kode] $nama | Harga: Rp $harga | Stok: $stok unit');
  }
}

void main() {
  var produk = Produk('PRD01', 'PC JKT48 AYO SENYUMLAH', 20, 5000);

  produk.tampilkanInfo();
  produk.tambahStok(10);
  produk.jual(25);
  produk.jual(10);
}