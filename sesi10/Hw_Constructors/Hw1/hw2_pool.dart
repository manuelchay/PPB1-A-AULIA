class KoneksiDatabase {
  final String host;
  final String port;

  // Static cache
  static final Map<String, KoneksiDatabase> _cache = {};

  // Private Generative Constructor
  KoneksiDatabase._internal(this.host, this.port);

  // Factory Constructor dengan caching
  factory KoneksiDatabase(String host, String port) {
    String key = '$host:$port';
    return _cache.putIfAbsent(key, () => KoneksiDatabase._internal(host, port));
  }

  void info() {
    print('Koneksi aktif -> $host:$port');
  }
}

void main() {
  var c1 = KoneksiDatabase('localhost', '5432');
  var c2 = KoneksiDatabase('localhost', '5432');
  var c3 = KoneksiDatabase('192.168.1.1', '3306');

  c1.info();
  c3.info();
  print('Apakah c1 dan c2 instance yang sama? ${identical(c1, c2)}');
}