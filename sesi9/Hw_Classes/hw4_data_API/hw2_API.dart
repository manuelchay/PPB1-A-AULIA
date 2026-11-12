class ApiCuaca {
  double ambilSuhu(String kota) {
    print('Menghubungi server cuaca...');
    return 0;
  }
}

class MockApiCuaca implements ApiCuaca {
  @override
  double ambilSuhu(String kota) {
    if (kota == 'Ketapang') {
      return 32.5;
    } else if (kota == 'Salatiga') {
      return 24.0;
    } else {
      return 28.0;
    }
  }
}

void tampilkanCuaca(ApiCuaca api, String kota) {
  print('Suhu di $kota adalah ${api.ambilSuhu(kota)}°C');
}

void main() {
  ApiCuaca mockApi = MockApiCuaca();
  tampilkanCuaca(mockApi, 'Ketapang');
  tampilkanCuaca(mockApi, 'Salatiga');
  tampilkanCuaca(mockApi, 'Bandung');
}



// Tantangan
// abstract class Pengemudi {
//   void antar();
// }

// abstract class Karyawan {
//   String idKaryawan;
//   Karyawan(this.idKaryawan);
// }

// class Kurir implements Pengemudi, Karyawan {
//   @override
//   String idKaryawan;
//   Kurir(this.idKaryawan);

//   @override
//   void antar() {
//     print('Kurir sedang mengantarkan barang');
//   }
// }

// void main() {
//   Kurir kurir = Kurir('KR001');

//   print('ID Karyawan: ${kurir.idKaryawan}');
//   kurir.antar();
// }
