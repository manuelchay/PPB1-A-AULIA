void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Aulia', 'nilai': 95},
    {'nama': 'Ajeng', 'nilai': 92},
    {'nama': 'Adel', 'nilai': 90},
  ];

  mahasiswa.sort((a, b) => (b['nilai'] as int).compareTo(a['nilai'] as int));

  for (var mhs in mahasiswa) {
    print('${mhs['nama']}: ${mhs['nilai']}');
  }
}