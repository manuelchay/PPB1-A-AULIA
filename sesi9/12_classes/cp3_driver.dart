class Driver {
  final String idDriver; // final: ID tidak boleh berubah
  String nama; // biasa
  double rating = 5.0; // default value
  int totalTrip = 0; // default value
  String? lokasiTerakhir; // nullable: belum ada sebelum trip
  Driver(this.idDriver, this.nama);
  void selesaikanTrip(double nilai, String lokasi) {
    rating = ((rating * totalTrip) + nilai) / (totalTrip + 1);
    totalTrip++; //inkrement ++ dekrement --
    lokasiTerakhir = lokasi;
  }

  void info() {
    print(
      '[$idDriver] $nama | Rating: $rating | Trip: $totalTrip | Lokasi: ${lokasiTerakhir ?? "-"}',
    );
  }
}

void main() {
  var d1 = Driver('DRV01', 'Erine JKT48');
  var d2 = Driver('DRV02', 'Oline JKT48');
  d1.selesaikanTrip(5, 'FX Sudirman');
  d1.selesaikanTrip(4, 'FX Sudirman Theater JKT48');
  d1.info();
  d2.info();
  // d1.idDriver = 'DRV99'; // ERROR: final tidak bisa diubah
}
