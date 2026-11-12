class User {
  String username;
  String email;
  String role;
  bool isActive;

  // Constructor utama dengan named parameter & default value
  User({
    required this.username,
    required this.email,
    this.role = 'member',
    this.isActive = true,
  });

  // Named constructor admin
  User.admin(this.username, this.email)
      : role = 'admin',
        isActive = true;

  // Named constructor guest dengan email '-'
  User.guest()
      : username = 'guest',
        email = '-',
        role = 'viewer',
        isActive = true;

  void tampilkanProfil() {
    print('$username | $email | $role | aktif: $isActive');
  }
}

void main() {
  var u1 = User(username: 'Aulia', email: 'marmutketibandinoo@gmail.com');
  var u2 = User.admin('Adel', 'delinela@gmail.com');
  var u3 = User.guest();

  u1.tampilkanProfil();
  u2.tampilkanProfil();
  u3.tampilkanProfil();
}