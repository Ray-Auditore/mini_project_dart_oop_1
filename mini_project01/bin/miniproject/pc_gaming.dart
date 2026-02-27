import 'produk.dart';
import 'fitur_tambahan.dart';

class PCGaming extends Produk implements DapatGaransi {
  PCGaming(String nama, double harga, int stok) : super(nama, harga, stok);

  @override
  double hitungHargaAkhir() => harga;

  @override
  void infoGaransi() => print("Garansi: 3 Tahun On-Site Service");

  void cetakInfo() {
    print("=== INFO PC GAMING ===");
    super.cetakInfoDasar();
    infoGaransi();
    print("Bonus  : Mechanical Keyboard & Mouse");
    print("----------------------");
  }
}