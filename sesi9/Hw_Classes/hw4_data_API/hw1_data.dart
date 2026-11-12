class Penyimpanan {
  String lokasi = '';
  void simpan(String data) {}
  void hapus(String data) {}
}

class LocalStorage implements Penyimpanan {
  @override
  String lokasi = 'Memori HP';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

class CloudStorage implements Penyimpanan {
  @override
  String lokasi = 'Server Cloud';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

void backup(Penyimpanan p, String data) {
  p.simpan(data);
}

void main() {
  Penyimpanan lokal = LocalStorage();
  Penyimpanan awan = CloudStorage();

  backup(lokal, 'Catatan Rapat');
  backup(awan, 'Catatan Rapat');
}