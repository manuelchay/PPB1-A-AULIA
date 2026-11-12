void main() {
  final nilai = [86, 65, 0, 50, 99];

  for (final item in nilai) {
    if (item == 0) {
      continue;
    }

    print('Nilai diproses: $item');
  }
}