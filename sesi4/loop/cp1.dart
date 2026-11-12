

void main() {
  final mahasiswa = ['Aulia', 'Tata', 'Mery', 'Ajeng', 'Adel'];

  print('Jumlah data: ${mahasiswa.length}');

  for (var i = 0; i < mahasiswa.length; i++) {
    print('Mahasiswa ke-${i + 1}: ${mahasiswa[i]}');
  }
}