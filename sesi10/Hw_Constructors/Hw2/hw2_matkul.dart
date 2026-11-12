class MataKuliah {
  final String kode;
  final String nama;
  final int sks;

  // Concise Constructor utama
  new(this.kode, this.nama, this.sks);

  // Concise Named Constructor
  new teori(this.kode, this.nama) : sks = 2;

  void tampilkanInfo() {
    print('[$kode] $nama ($sks SKS)');
  }
}

void main() {
  var mk1 = MataKuliah('PPB101', 'Praktikum PPB 1', 3);
  var mk2 = MataKuliah.teori('APSI102', 'Sistem Informasi',);

  mk1.tampilkanInfo();
  mk2.tampilkanInfo();
}