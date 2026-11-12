// 1. Enum dengan Primary Constructor (otomatis const)
enum TingkatLayanan(final int tarifDasar, final String estimasi) { //property       //parameter
  reguler(50000, '7-12 hari'),
  ekspres(140000, '3-4 hari'),
  sameDay(65000, 'Hari ini');
}

// 2. Class konstan satu baris
class const TitikKoordinat(final double lat, final double lng); //property         //parameter

// 3. Named Primary Constructor
class Pengiriman.dariKota(final String kotaAsal, final String kotaTujuan, final TingkatLayanan layanan) { //property      //parameter
  void cetakResi() {            //method
    print('Rute: $kotaAsal → $kotaTujuan | Layanan: ${layanan.name.toUpperCase()} (Rp ${layanan.tarifDasar}, ${layanan.estimasi})');
  }
}

void main() {     
  // Buktikan compile-time constant
  const t1 = TitikKoordinat(-1.85, 109.97);       //object
  const t2 = TitikKoordinat(-1.85, 109.97);     //object
  print('Titik identik: ${identical(t1, t2)}');

  // Membuat pengiriman lewat named primary constructor
  var kirim1 = Pengiriman.dariKota('Ketapang', 'Pontianak', TingkatLayanan.ekspres);    //object
  var kirim2 = Pengiriman.dariKota('Ketapang', 'Bandung', TingkatLayanan.reguler);    //object
  var kirim3 = Pengiriman.dariKota('FX Sudirman', 'Blok M', TingkatLayanan.sameDay);  //object


  kirim1.cetakResi();
  kirim2.cetakResi();
  kirim3.cetakResi();
}
