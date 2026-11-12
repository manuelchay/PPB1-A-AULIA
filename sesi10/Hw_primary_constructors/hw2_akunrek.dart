class RekeningSyariah(final String pemilik, {required var int _saldo, final String akad = 'Wadiah'}) {
  this : assert(_saldo >= 100000, 'Setoran awal minimal Rp 100.000!') {
    print('Akun Syariah ($akad) atas nama $pemilik dibuka.');
  }

  void tarik(int jumlah) {
    if (_saldo - jumlah >= 50000) {
      _saldo -= jumlah;
      print('$pemilik tarik Rp $jumlah. Saldo: Rp $_saldo');
    } else {
      print('Penarikan ditolak! Saldo mengendap minimal Rp 50.000');
    }
  }

  void info() {
    print('[$pemilik] Akad: $akad | Saldo: Rp $_saldo');
  }
}

void main() {
  var akun = RekeningSyariah('Abigail Rachel Lie', saldo: 200000);

  akun.tarik(100000);
  akun.tarik(80000);
  akun.info();
}