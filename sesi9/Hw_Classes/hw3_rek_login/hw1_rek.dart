class Rekening {
  final int nomorRekening;
  String namaPemilik;
  double saldo = 0.0;
  String? transaksiTerakhir;

  Rekening(this.nomorRekening, this.namaPemilik);

  void setor(double jumlah) {
    saldo += jumlah;
    transaksiTerakhir = 'Setor $jumlah';
  }

  void tarik(double jumlah) {
    if (saldo < jumlah) {
      print('Saldo tidak cukup!');
    } else {
      saldo -= jumlah;
      transaksiTerakhir = 'Tarik $jumlah';
    }
  }

  void cekSaldo() {
    print('$nomorRekening | $namaPemilik | Saldo: $saldo | Terakhir: ${transaksiTerakhir ?? "-"}');
  }
}

void main() {
  var r1 = Rekening(1234567, 'Aulia');
  var r2 = Rekening(7654321, 'Ajeng');

  r1.setor(500000);

  r1.cekSaldo();
  r2.cekSaldo(); 
}