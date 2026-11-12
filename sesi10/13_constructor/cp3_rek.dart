class RekeningBank { //class
  // 1. Private fields
  final String _noRekening; //object
  final int _saldo; //obejct

  // 2. Public fields
  final String namaNasabah; //object
  final String tipeAkun; //object

  // 3. In the declaration (nilai awal langsung di deklarasi)
  bool isActive = true; //object

  // Constructor memadukan parameter named, assert, dan initializer list
  RekeningBank({                  //parameter named
    required String noRekening,
    required this.namaNasabah,
    int saldoAwal = 0,
  })  : assert(noRekening.length == 10, 'No rekening wajib 10 digit!'),
        assert(saldoAwal >= 0, 'Saldo awal tidak boleh negatif!'),
        _noRekening = noRekening,
        _saldo = saldoAwal,
        tipeAkun = (saldoAwal >= 10000000) ? 'Prioritas' : 'Reguler'; //Ternary operator untuk menentukan tipe akun

  void tampilkanInfo() {
    print('[$_noRekening] $namaNasabah | Saldo: Rp $_saldo | Tipe: $tipeAkun | Aktif: $isActive'); //method
  }
}

void main() {
  // Nasabah reguler
  var nasabah1 = RekeningBank( //object
    noRekening: '1234567890',
    namaNasabah: 'Film Rachanun',
    saldoAwal: 2500000,
  );

  // Nasabah prioritas
  var nasabah2 = RekeningBank( //object
    noRekening: '9876543210',
    namaNasabah: 'Namtan Tipnaree',
    saldoAwal: 15000000,
  );

    // Nasabah premium
  var nasabah3 = RekeningBank( //object
    noRekening: '5706218765',
    namaNasabah: 'Catherina Vallencia',
    saldoAwal: 20000000,
  );

  nasabah1.tampilkanInfo();
  nasabah2.tampilkanInfo();
  nasabah3.tampilkanInfo();
}
