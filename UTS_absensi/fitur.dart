import 'data.dart';
import 'input.dart';

// ============================================================
// Fungsi bantu
// ============================================================

/// Mencari mahasiswa berdasarkan NIM. Mengembalikan null jika tidak ada.
Map<String, dynamic>? cariByNim(String nim) {
  for (final mhs in daftarMahasiswa) {
    if (mhs['nim'] == nim) return mhs;
  }
  return null;
}

/// Mencetak satu baris data mahasiswa.
void cetakMahasiswa(Map<String, dynamic> mhs) {
  print('${mhs['nim']} | ${mhs['nama']}');
}

/// Meminta pengguna memilih status kehadiran.
StatusHadir bacaStatus(String label) {
  final pilihan = bacaInt(
    '$label (1=hadir, 2=izin, 3=sakit, 4=alpa)',
    min: 1,
    max: 4,
  );
  return switch (pilihan) {
    1 => StatusHadir.hadir,
    2 => StatusHadir.izin,
    3 => StatusHadir.sakit,
    _ => StatusHadir.alpa,
  };
}

// ============================================================
// Fitur yang sudah jadi
// ============================================================

/// Menu 1: menampilkan semua mahasiswa.
void tampilkanDaftar() {
  print('\n=== Daftar Mahasiswa ===');
  if (daftarMahasiswa.isEmpty) {
    print('Belum ada data mahasiswa.');
    return;
  }
  for (final mhs in daftarMahasiswa) {
    cetakMahasiswa(mhs);
  }
}

/// Menu 2: mencatat absensi untuk pertemuan berikutnya.
void catatAbsensi() {
  final nomor = absensi.length + 1;
  print('\n=== Catat Absensi Pertemuan $nomor ===');
  final Map<String, StatusHadir> data = {};
  for (final mhs in daftarMahasiswa) {
    data[mhs['nim'] as String] = bacaStatus('Status ${mhs['nama']}');
  }
  absensi[nomor] = data;
  print('Absensi pertemuan $nomor tersimpan.');
}

/// Menu 3: menampilkan absensi pada satu pertemuan.
void tampilkanAbsensiPertemuan() {
  print('\n=== Absensi per Pertemuan ===');
  if (absensi.isEmpty) {
    print('Belum ada absensi.');
    return;
  }
  final nomor = bacaInt('Nomor pertemuan', min: 1, max: absensi.length);
  final data = absensi[nomor]!;
  print('Pertemuan $nomor:');
  for (final mhs in daftarMahasiswa) {
    final status = data[mhs['nim']];
    print('${mhs['nim']} | ${mhs['nama']} | ${status?.name ?? '-'}');
  }
}

// ============================================================
// Fitur pilihan (pilih minimal 3, lihat README.md)
// ============================================================

/// Menu 4 [Mudah]: menambah mahasiswa baru.
void tambahMahasiswa() {
  print('=== Tambah Mahasiswa ===');
  String nim = bacaTeks('NIM: ');

  // Tolak jika NIM sudah terdaftar
  var mahasiswaAda = cariByNim(nim);
  if (mahasiswaAda != null) {
    print('Mahasiswa dengan NIM $nim sudah terdaftar.');
    return;
  }

  String nama = bacaTeks('Nama: ');

  // Menambahkan ke list global menggunakan Map
  daftarMahasiswa.add({'nim': nim, 'nama': nama});
  print('Mahasiswa $nama berhasil ditambahkan.');
}

/// Menu 5 [Mudah]: mencari mahasiswa berdasarkan sebagian nama.
void cariMahasiswa() {
  print('=== Cari Mahasiswa ===');
  // Ubah string di dalam bacaTeks menjadi 'Nama: ' agar sama persis dengan foto
  String keyword = bacaTeks('Nama: ').toLowerCase();

  // Mencari data mahasiswa yang namanya mengandung keyword
  var hasil = daftarMahasiswa.where((m) => m['nama'].toString().toLowerCase().contains(keyword)).toList();

  if (hasil.isEmpty) {
    print('Tidak ada mahasiswa yang ditemukan.');
  } else {
    for (var m in hasil) {
      cetakMahasiswa(m); // Memanggil fungsi cetak yang sudah ada
    }
  }
}

/// Menu 6 [Sedang]: mengubah status absensi seorang mahasiswa.
void ubahStatus() {
  print('=== Ubah Status Absensi ===');
  
  // 1. Minta nomor pertemuan terlebih dahulu (sesuai urutan di foto)
  int pertemuan = bacaInt('Nomor pertemuan');

  if (!absensi.containsKey(pertemuan)) {
    print('Pertemuan tersebut belum ada.');
    return;
  }

  // 2. Minta NIM mahasiswa
  String nim = bacaTeks('NIM: ');
  var mhs = cariByNim(nim);
  
  if (mhs == null) {
    print('Mahasiswa dengan NIM $nim tidak ditemukan.');
    return;
  }

  // 3. Ambil data absensi, ubah statusnya, dan sesuaikan kalimat pesannya
  var dataPertemuan = absensi[pertemuan]!;
  StatusHadir statusBaru = bacaStatus('Status baru');
  
  dataPertemuan[nim] = statusBaru;
  print('Status ${mhs['nama']} pada pertemuan $pertemuan diubah menjadi ${statusBaru.name}.');
}

/// Menu 7 [Sedang]: menampilkan jumlah setiap status per mahasiswa.
void tampilkanRekap() {
  // TODO: untuk setiap mahasiswa, hitung berapa kali hadir, izin, sakit, dan alpa
  // dari semua pertemuan.
  print('Fitur belum tersedia.');
}

/// Menu 8 [Sulit]: menampilkan persentase kehadiran setiap mahasiswa.
void tampilkanPersentase() {
  // TODO: persentase = jumlah hadir / jumlah pertemuan x 100.
  // Tampilkan 1 angka di belakang koma.
  print('Fitur belum tersedia.');
}

/// Menu 9 [Sulit]: menampilkan mahasiswa dengan kehadiran di bawah batas.
void tampilkanDiBawahBatas() {
  // TODO: tampilkan mahasiswa yang persentase kehadirannya < batasKehadiran
  // (lihat data.dart) beserta persentasenya.
  print('Fitur belum tersedia.');
}
