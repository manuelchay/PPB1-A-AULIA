class Invoice {
  String nomor;
  String namaKlien;
  double subtotal;
  double pajak;
  double diskon;

  // Constructor utama dengan named parameters (pajak default 11, diskon default 0)
  Invoice({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 0,
  });

  // Named constructor Invoice.member dengan diskon otomatis 10
  Invoice.member({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 10,
  });

  // Method hitungTotal() sesuai petunjuk: hitung diskon lebih dulu, lalu pajak dari harga setelah diskon
  double hitungTotal() {
    double nilaiDiskon = subtotal * (diskon / 100);
    double hargaSetelahDiskon = subtotal - nilaiDiskon;
    double nilaiPajak = hargaSetelahDiskon * (pajak / 100);
    return hargaSetelahDiskon + nilaiPajak;
  }

  // Method cetak() untuk menampilkan rincian invoice beserta totalnya
  void cetak() {
    print('Nomor Invoice : $nomor');
    print('Nama Klien    : $namaKlien');
    print('Subtotal      : Rp $subtotal');
    print('Diskon        : $diskon%');
    print('Pajak         : $pajak%');
    print('Total Bayar   : Rp ${hitungTotal()}');
    print('-----------------------------------');
  }
}

void main() {
  var invReguler = Invoice(
    nomor: 'INV/NGUTANG/01',
    namaKlien: 'Mas-mas Suka Ghosting',
    subtotal: 2500000,
  );

  var invVip = Invoice.member(
    nomor: 'INV/DISCOUNT/02',
    namaKlien: 'Fans JKT48 Garis Keras',
    subtotal: 2500000,
  );

  // Menampilkan rincian masing-masing invoice
  invReguler.cetak();
  invVip.cetak();

  // Membandingkan total keduanya dengan gaya santai
  print('Perbandingan Total:');
  print('Total Invoice Reguler : Rp ${invReguler.hitungTotal()}');
  print('Total Invoice VIP     : Rp ${invVip.hitungTotal()}');
  
  if (invReguler.hitungTotal() > invVip.hitungTotal()) {
    print('Hasil: Si Mas-mas Ghosting bayar lebih mahal karena gak punya kartu official. Makanya, jadi fans garis keras aja biar dapet diskon 10%!');
  }
}