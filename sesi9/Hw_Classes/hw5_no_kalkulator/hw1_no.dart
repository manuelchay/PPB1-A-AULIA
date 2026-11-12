class Antrean {
  static const String loket = 'CS';
  static int nomorTerakhir = 0;
  static int kuotaHarian = 10;

  String namaPengunjung;
  String nomorAntrean = '';

  Antrean(this.namaPengunjung) {
    if (kuotaHarian <= 0) {
      print('Kuota hari ini sudah penuh!');
    } else {
      nomorTerakhir++;
      kuotaHarian--;
      // Format 3 digit, misal: CS-001
      nomorAntrean = '$loket-${nomorTerakhir.toString().padLeft(3, '0')}';
      print('Pengunjung: $namaPengunjung | Nomor Antrean: $nomorAntrean');
    }
  }
}

void main() {
  Antrean('Aulia');
  Antrean('Loverruk');
  Antrean('Bonnie');
  Antrean('Oline');
  Antrean('Erine');
  Antrean('Namtan');
  Antrean('Emi');

  // print(pengunjung1.nomorTerakhir);

  print('Sisa kuota harian: ${Antrean.kuotaHarian}');
}
