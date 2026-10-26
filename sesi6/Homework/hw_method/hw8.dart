void main() {
  List<String> nama = ['Aulia', 'Erine', 'Oline', 'Karina'];
  nama.add('Freya');
  nama.remove('Oline');
  nama.sort((a, b) => a.compareTo(b));

  print(nama);
  print('Jumlah: ${nama.length}');
}