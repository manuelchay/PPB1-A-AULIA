enum JenisKontrak { harian, bulanan, tahunan }

void main() {
  var kontrak = JenisKontrak.harian;
  print("Jenis kontrak karyawan: ${kontrak.name}");
}