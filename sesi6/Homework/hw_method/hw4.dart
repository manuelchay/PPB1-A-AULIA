void main() {
  List<String> daftarNama = [
    'Aulia', 'Erine', 'Oline', 'Karina'
  ];
  String katakunci = 'IN';

  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(katakunci.toLowerCase())) {
      print(nama);
    }
  }
}