class Notifikasi {
  String pengirim = 'System';
  void kirim(String tujuan, String pesan) {}
}

class GmailNotif implements Notifikasi {
  @override
  String pengirim = 'JKT48.official@gmail.com';
  @override
  void kirim(String tujuan, String pesan) {
    print('[GMAIL] $pengirim → $tujuan: $pesan');
  }
}

class WhatsAppNotif implements Notifikasi {
  @override
  String pengirim = 'JKT48 Official Store';
  @override
  void kirim(String tujuan, String pesan) {
    print('[WHATSAPP] $pengirim → $tujuan: $pesan');
  }
}

// Fungsi ini hanya mengenal "Notifikasi", tidak peduli jenis layanannya
void kirimOtp(Notifikasi layanan, String tujuan) {
  layanan.kirim(tujuan, 'Kode OTP Anda: 4821');
}

void main() {
  kirimOtp(GmailNotif(), 'marmutketibandinoo@gmail.com');
  kirimOtp(WhatsAppNotif(), '0895-2953-6658');
}
