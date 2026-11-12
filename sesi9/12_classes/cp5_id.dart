class Karyawan {
  static const String perusahaan = 'PT Media Putra Nusantara';
  static int jumlahKaryawan = 0;
  late final String id;
  String nama;
  Karyawan(this.nama) {
    jumlahKaryawan++;
    id = 'EMP-$jumlahKaryawan';
  }
  void info() => print('$id | $nama | ${Karyawan.perusahaan}');
}

void main() {
  var k1 = Karyawan('Aulia');
  var k2 = Karyawan('Erine JKT48');
  var k3 = Karyawan('Namtan Tipnaree');
  k1.info();
  k2.info();
  k3.info();
  print('Total karyawan: ${Karyawan.jumlahKaryawan}');
}
