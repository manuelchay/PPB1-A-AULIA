class Orang {
  final String nama;
  final int umur;

  Orang(this.nama, this.umur);

  Orang.dariMap(Map<String, dynamic> data)
      : nama = data['nama'] as String,
        umur = data['umur'] as int;
}

class Mahasiswa extends Orang {
  final String nim;

  Mahasiswa(super.nama, super.umur, this.nim);

  Mahasiswa.dariMap(Map<String, dynamic> data)
      : nim = data['nim'] as String,
        super.dariMap(data);

  factory Mahasiswa.dariCsv(String csv) {
    var parts = csv.split(',');
    String nama = parts[0];
    int umur = int.parse(parts[1]);
    String nim = parts[2];
    return Mahasiswa(nama, umur, nim);
  }

  void tampilkan() {
    print('→ Mahasiswa: $nama ($umur thn) - NIM: $nim');
  }
}

void main() {
  var mhsMap = Mahasiswa.dariMap({
    'nama': 'Yu Haram',
    'umur': 21,
    'nim': '3202416001',
  });

  var mhsCsv = Mahasiswa.dariCsv('Jeong Lee-an,18,3202416002');

  mhsMap.tampilkan();
  mhsCsv.tampilkan();
}