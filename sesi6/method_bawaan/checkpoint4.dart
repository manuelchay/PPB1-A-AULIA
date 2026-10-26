void main() {
  List<String> krs = ['Technopreneur', 'Pemrograman Perangkat Bergerak 1'];

  krs.add('Keterampilan Komunikasi');
  print(krs);

  krs.remove('Pemrograman Perangkat Bergerak 1');
  print(krs);

  print(krs.contains('Technopreneur'));
  print(krs.length);

  krs.clear();
  print(krs);
  print(krs.isEmpty);
}