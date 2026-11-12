class Pegawai {
  final String nip;     //object
  final String nama;    //object
  final int gajiPokok;  //object

  // Constructor Superclass
  Pegawai(this.nip, this.nama, this.gajiPokok) { // Menggunakan super parameters
    print('  [Init Superclass] Pegawai: $nama ($nip)');
  }

  int hitungTotalGaji() => gajiPokok;     //method

  void info() { 
    print('  → [$nip] $nama | Gaji Bersih: Rp ${hitungTotalGaji()}');
  }
}

class Dosen extends Pegawai {
  final int jumlahSks;    //object

  // Menggunakan super parameters (super.nip, super.nama, super.gajiPokok)
  Dosen(super.nip, super.nama, super.gajiPokok, this.jumlahSks) { // Menggunakan super parameters
    print('  [Init Subclass] Dosen: $nama mengajar $jumlahSks SKS');
  }

  @override
  int hitungTotalGaji() => gajiPokok + (jumlahSks * 50000);  //method
}

class Staf extends Pegawai {
  final int uangLembur;   //object  

  // Menggunakan super parameters
  Staf(super.nip, super.nama, super.gajiPokok, this.uangLembur) { // Menggunakan super parameters
    print('  [Init Subclass] Staf: $nama');
  }

  @override
  int hitungTotalGaji() => gajiPokok + uangLembur;   //method
}

void main() {
  print('1. Membuat Object Dosen:'); 
  var dosen = Dosen('198501', 'Oline Manuel', 6000000, 6); //object
  dosen.info();

  print('\n2. Membuat Object Staf:');
  var staf = Staf('199002', 'Pattraphus Borattasuwan', 3500000, 500000); //object
  staf.info();
}
