class Tiket {
  final String judul; //property
  final String studio;  //property
  final int harga;  //property

  // 1. Generative constructor (sekaligus constant constructor)
  const Tiket(this.judul, this.studio, this.harga);//parameter

  // 2. Named constructor khusus tiket VIP
  Tiket.vip(this.judul, this.studio) : harga = 100000;

  // 3. Redirecting constructor untuk promo (meneruskan ke constructor utama)
  Tiket.promo(String judul, String studio) : this(judul, studio, 35000);

  // 4. Factory constructor yang memilih tipe tiket berdasarkan kategori
  factory Tiket.buat(String judul, String kategori) {
    if (kategori == 'VIP') {
      return Tiket.vip(judul, 'Premiere');
    } else if (kategori == 'Promo') {
      return Tiket.promo(judul, 'Studio 2');
    }
    return Tiket(judul, 'Studio 1', 50000);
  }

  void tampilkan() {
    print('[$studio] $judul - Rp $harga'); //method
  }
}

void main() {
  // 1. Membuat tiket lewat generative constructor
  var t1 = Tiket('1 Kakak 7 Ponakan', 'Studio 1', 50000); //object

  // 2. Membuat tiket lewat named constructor
  var t2 = Tiket.vip('Kuasa Gelap 2', 'Premiere'); //object

  // 3. Membuat tiket lewat redirecting constructor
  var t3 = Tiket.promo('Backrooms', 'Studio 2'); //object

  // 4. Membuat tiket lewat factory constructor
  var t4 = Tiket.buat('Keluarga Cemara', 'VIP'); //object

  t1.tampilkan();
  t2.tampilkan();
  t3.tampilkan();
  t4.tampilkan();

  print('---');

  // 5. Constructor Tear-off: mengoper Tiket.vip ke fungsi .map()
  var judulFilmList = ['Laskar Pelangi', 'Toy Story 5', 'Moana 2'];
  var daftarVip = judulFilmList.map((judul) => Tiket.vip(judul, 'Premiere')).toList();
  for (var tiket in daftarVip) {
    tiket.tampilkan();
  }
}
