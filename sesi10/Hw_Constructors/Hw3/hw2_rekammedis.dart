class Pasien {
  final String nama;
  final double beratKg;
  final double tinggiMeter;
  final double bmi;
  final String statusGizi;

  Pasien(this.nama, this.beratKg, this.tinggiMeter)
      : assert(beratKg > 0 && tinggiMeter > 0, 'Berat dan tinggi harus lebih dari 0!'),
        bmi = beratKg / (tinggiMeter * tinggiMeter),
        statusGizi = (beratKg / (tinggiMeter * tinggiMeter) < 18.5)
            ? 'Kurus'
            : ((beratKg / (tinggiMeter * tinggiMeter) < 25.0) ? 'Normal' : 'Gemuk');

  void cetakResume() {
    print('Pasien: $nama | BMI: ${bmi.toStringAsFixed(1)} ($statusGizi)');
  }
}

void main() {
  var pasien1 = Pasien('Loverrukk Pattranite', 65.0, 1.7);
  var pasien2 = Pasien('Thasorn Klinnium', 42.2, 1.6);
  var pasien3 = Pasien('Pansa Vosbein', 55.0, 1.65);

  pasien1.cetakResume();
  pasien2.cetakResume();
  pasien3.cetakResume();
}