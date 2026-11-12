// Superclass menggunakan Primary Constructor satu baris
class TenagaMedis(final String id, final String nama, final int gajiPokok);   //property   //parameter

// Subclass 1: Dokter Spesialis
class DokterSpesialis(super.id, super.nama, super.gajiPokok, final String spesialisasi, final int pasienDitangani) //property   //parameter
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (pasienDitangani * 100000);  //method

  void info() {   //method
    print('[$id] dr. $nama ($spesialisasi) | Pasien: $pasienDitangani | Total Gaji: Rp ${hitungGaji()}');
  }
}

// Subclass 2: Perawat
class Perawat(super.id, super.nama, super.gajiPokok, final int shiftMalam)    //property   //parameter
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (shiftMalam * 75000);   //method

  void info() {     //method
    print('[$id] Ns. $nama | Shift Malam: $shiftMalam | Total Gaji: Rp ${hitungGaji()}');  
  }
}

void main() {
  var dokter = DokterSpesialis('MED01', 'Namtan Tipnaree', 8000000, 'Jantung', 25);   //object
  var perawat = Perawat('MED02', 'Film Rachanun', 4000000, 8);    //object

  dokter.info();
  perawat.info();
}
