void main() {
  final produk = ['Nescafe', 'Baby Oil', 'Pomade', 'Ikan Kakap'];

  for (final item in produk) {
    print('Mencari: $item');

    if (item == 'Pomade') {
      print('Produk ditemukan!');
      break;
    }
  }
}