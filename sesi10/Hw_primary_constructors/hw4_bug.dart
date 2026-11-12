// ✅ Kode yang sudah diperbaiki:
// 1. Menghapus 'String nama = '';' dari badan class untuk menghilangkan duplikasi nama.
class Mahasiswa(final String nim, var String nama) {
  String get sapaan => 'Halo, Mahasiswa $nama (NIM: $nim)';
}

// 2. Menghapus kata kunci 'final' dari parameter fungsi biasa.
void cetakInfo(String teks) => print(teks);

void main() {
  var mhs = Mahasiswa('3202416001', 'Adeline Wijaya');
  cetakInfo(mhs.sapaan);
}