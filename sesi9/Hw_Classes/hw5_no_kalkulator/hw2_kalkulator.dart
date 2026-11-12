class KalkulatorGaji {

  // --- TANTANGAN ---
  //String namaHRD = 'Aulia HRD';

  static const double persenPajak = 5;

  static double hitungPajak(double gajiKotor) {
    return gajiKotor * (persenPajak / 100);
  }

  static double gajiBersih(double gajiPokok, double tunjangan) {
    double totalKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(totalKotor);
    return totalKotor - pajak;
  }

  static void slip(String nama, double gajiPokok, double tunjangan) {
    double totalKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(totalKotor);
    double bersih = totalKotor - pajak;

    // --- TANTANGAN ---
    //print('Nama HRD: $namaHRD');

    print('=== SLIP GAJI: $nama ===');
    print('Gaji Pokok: $gajiPokok');
    print('Tunjangan: $tunjangan');
    print('Pajak (${persenPajak.toInt()}%): $pajak');
    print('Gaji Bersih: $bersih');
    print('');
  }
}

void main() {
  KalkulatorGaji.slip('Namtan', 8000000.0, 1000000.0);
  KalkulatorGaji.slip('Emi', 7000000.0, 500000.0);
  KalkulatorGaji.slip('Loverruk', 9000000.0, 1500000.0);
}
