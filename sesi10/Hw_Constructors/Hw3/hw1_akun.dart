class AkunFintech {
  final String _nik;
  final String namaLengkap;
  final int _pin;
  final String statusVerifikasi;

  AkunFintech({
    required String nik,
    required this.namaLengkap,
    required int pin,
    int saldoAwal = 0,
  })  : assert(nik.length == 16, 'NIK harus 16 digit!'),
        assert(pin >= 100000 && pin <= 999999, 'PIN harus 6 digit!'),
        _nik = nik,
        _pin = pin,
        statusVerifikasi = (saldoAwal > 10000) ? 'Terverifikasi' : 'Pending';

  void infoAkun() {
    String nikEnkripsi = '${_nik.substring(0, 6)}******';
    print('NIK: $nikEnkripsi | $namaLengkap | Status: $statusVerifikasi');
  }
}

void main() {
  var akun1 = AkunFintech(
    nik: '1234567890123456',
    namaLengkap: 'Nyoman Ayu Carmenita',
    pin: 123456,
    saldoAwal: 100000,
  );

  var akun2 = AkunFintech(
    nik: '6543210987654321',
    namaLengkap: 'Margareta Pencet Pencet',
    pin: 654321,
    saldoAwal: 0,
  );

  var akun3 = AkunFintech(
    nik: '3149820576134928',
    namaLengkap: 'Noh Yuna',
    pin: 602483,
    saldoAwal: 5000,
  );

   var akun4 = AkunFintech(
    nik: '8291047362519483',
    namaLengkap: 'Kim Minjeong',
    pin: 482910,
    saldoAwal: 500000,
  );

  akun1.infoAkun();
  akun2.infoAkun();
  akun3.infoAkun();
  akun4.infoAkun();
}