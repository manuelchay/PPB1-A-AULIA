class PaketStreaming {
  final String namaPaket;
  final String resolusi;
  final int hargaBulanan;

  // Generative constructor utama
  PaketStreaming(this.namaPaket, this.resolusi, this.hargaBulanan);

  // Named constructor
  PaketStreaming.premium(this.namaPaket)
      : resolusi = '4K Ultra HD',
        hargaBulanan = 186000;

  // Redirecting constructor
  PaketStreaming.pelajar(String namaPaket)
      : this(namaPaket, '720p HD', 54000);

  void info() {
    print('$namaPaket | Resolusi: $resolusi | Rp $hargaBulanan/bulan');
  }
}

void main() {
  var p1 = PaketStreaming('Standar', '1080p Full HD', 120000);
  var p2 = PaketStreaming.premium('Keluarga VIP');
  var p3 = PaketStreaming.pelajar('Akun Mahasiswa');

  p1.info();
  p2.info();
  p3.info();
}