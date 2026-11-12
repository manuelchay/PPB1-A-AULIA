void main() {
  final angkatan = <int, List<String>>{
    2020: ['Aulia', 'Erine'],
    2021: ['Oline', 'Karina'],
  };

  outerLoop:
  for (final tahun in angkatan.keys) {
    for (final mhs in angkatan[tahun]!) {
      print('Angkatan $tahun - $mhs');

      if (mhs == 'Oline') {
        print('Berhenti di Oline!');
        break outerLoop; // Hentikan semua loop.
      }
    }
  }
}