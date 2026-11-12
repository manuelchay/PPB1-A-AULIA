class SesiLogin {
  final String userId;
  late String token;
  bool isOnline = false;
  String? waktuLogout;

  SesiLogin(this.userId);

  void login() {
    token = 'TKN-$userId';
    isOnline = true;
  }

  void logout(String waktu) {
    isOnline = false;
    waktuLogout = waktu;
  }

  void status() {
    print('User: $userId | Status: ${isOnline ? "Online" : "Offline"} | Token: ${isOnline || waktuLogout != null ? token : "Belum Login"} | Logout: ${waktuLogout ?? "-"}');
  }
}

void main() {
  
  // // Pengujian sesi 1 (login lalu logout)
  // var sesi1 = SesiLogin('USR01');
  // sesi1.login();
  // sesi1.logout('14:30 WIB');
  // sesi1.status();

  // // Pengujian sesi 2 (hanya login)
  // var sesi2 = SesiLogin('USR02');
  // sesi2.login();
  // sesi2.status();
  
  var sesi3 = SesiLogin('USR03');
  
  // Baris ini akan memicu LateInitializationError karena token dipanggil sebelum login()
  print(sesi3.token); 
  
  sesi3.login();
}