class Helper {
  static String formatRupiah(int angka) {
    String s = angka.toString();
    String hasil = '';
    int hitung = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      hasil = s[i] + hasil;
      hitung++;
      if (hitung % 3 == 0 && i != 0) hasil = '.$hasil';
    }
    return 'Rp $hasil';
  }

  static bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }
}

void main() {
  print(Helper.formatRupiah(120000000));
  print(Helper.formatRupiah(1000000000));
  print(Helper.isEmailValid('marmutketibandinoo@gmail.com'));
  print(Helper.isEmailValid('marmutketibandinoo@gmail.com'));
}

