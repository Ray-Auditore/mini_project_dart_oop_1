import 'produk.dart';
import 'fitur_tambahan.dart';

class Laptop extends Produk implements DapatDiskon, DapatGaransi {
  double diskonPersen;

  Laptop(String nama, double harga, int stok, this.diskonPersen) 
      : super(nama, harga, stok);

  @override
  double hitungDiskon() => harga * (diskonPersen / 100);

  @override
  double hitungHargaAkhir() => harga - hitungDiskon();

  @override
  void infoGaransi() => print("Garansi: 2 Tahun Global Warranty");

  void cetakInfo() {
    print("=== INFO LAPTOP ===");
    super.cetakInfoDasar();
    print("Diskon : $diskonPersen%");
    print("Total  : ${formatRupiah(hitungHargaAkhir())}");
    infoGaransi();
    print("-------------------");
  }
}