class ApiClient {
  final String baseUrl;
  final int timeoutDetik;
  final bool useHttps;

  // Concise Constructor utama
  new(this.baseUrl, {this.timeoutDetik = 25, this.useHttps = true});

  // Concise Named Constructor (Development)
  new dev(String host)
      : baseUrl = host,
        timeoutDetik = 3,
        useHttps = false;

  void cetakStatus() {
    print('Base URL: $baseUrl | Timeout: ${timeoutDetik}s | HTTPS: $useHttps');
  }
}

void main() {
  var clientProd = ApiClient('api.kampus.ac.id');
  var clientDev = ApiClient.dev('localhost:8080');

  clientProd.cetakStatus();
  clientDev.cetakStatus();
}