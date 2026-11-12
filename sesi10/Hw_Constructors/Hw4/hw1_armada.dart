class Kendaraan {
  final String platNomor;
  final String merek;
  final int tahun;

  Kendaraan(this.platNomor, this.merek, this.tahun);

  void info() {
    print('[$platNomor] $merek ($tahun)');
  }
}

class TrukPengangkut extends Kendaraan {
  final double kapasitasTon;

  TrukPengangkut(super.platNomor, super.merek, super.tahun, this.kapasitasTon);

  @override
  void info() {
    print('[$platNomor] $merek ($tahun) - Truk Kapasitas: $kapasitasTon Ton');
  }
}

class MotorKurir extends Kendaraan {
  final bool boxTambahan;

  MotorKurir(super.platNomor, super.merek, super.tahun, this.boxTambahan);

  @override
  void info() {
    String statusBox = boxTambahan ? 'Ada' : 'Tidak Ada';
    print('[$platNomor] $merek ($tahun) - Motor Box: $statusBox');
  }
}

void main() {
  var truk = TrukPengangkut('KB 1234 AB', 'Erine JKT48', 2022, 5.5);
  var motor = MotorKurir('KB 5678 CD', 'Honda Beat', 2023, true);

  truk.info();
  motor.info();
}