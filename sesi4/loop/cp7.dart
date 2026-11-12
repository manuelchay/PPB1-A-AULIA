void main() {
  final mahasiswa = ['Aulia', 'Erine', 'Oline', 'Karina aespa'];

  for (final mhs in mahasiswa) {
    if (mhs == 'Oline') {
      print('Data Oline ditemukan, hentikan pencarian.');
      break; // Berhenti loop.
    }

    print('Memeriksa: $mhs');
  }

  print('\nLewati mahasiswa tertentu:');

  for (final mhs in mahasiswa) {
    if (mhs == 'Erine') {
      continue; // Lewati iterasi ini.
    }

    print('Mahasiswa: $mhs');
  }
}