void main() {
  Map<String, int> stok = {
    'Laptop ROG Strix Series': 30,
    'Ikan Kakap': 100,
    'Ikan Pepes': 300,
  };

  print(stok.keys);
  print(stok.containsKey('Ikan Belidak'));
  print(stok.values);

  stok.remove('Ikan Kakap');
  print(stok);

  int totalStok = 0;
  for (var nilai in stok.values) {
    totalStok += nilai;
  }
  print("Total stok: $totalStok");
}