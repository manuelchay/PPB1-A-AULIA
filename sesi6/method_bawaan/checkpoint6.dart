enum Bulan { januari, februari, maret, april, mei }

void main() {
  print(Bulan.values);
  print(Bulan.values.length);
  print(Bulan.values[2]);
  print(Bulan.values[2].name);

  for (var bulan in Bulan.values) {
    print(bulan.name);
  }
}