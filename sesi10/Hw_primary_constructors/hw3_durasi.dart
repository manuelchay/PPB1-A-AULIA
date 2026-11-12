class Durasi.dariMenit(final int totalMenit) {
  int get jam => totalMenit ~/ 60;
  int get sisaMenit => totalMenit % 60;

  void info() {
    print('Durasi tayang: $totalMenit menit ($jam jam $sisaMenit menit)');
  }
}

class const ResolusiLayar(final int lebar, final int tinggi);

void main() {
  var durasi = Durasi.dariMenit(145);
  durasi.info();

  const r1 = ResolusiLayar(1920, 1080);
  const r2 = ResolusiLayar(1920, 1080);

  print('Identik: ${identical(r1, r2)}');
}