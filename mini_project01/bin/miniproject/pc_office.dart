import 'produk.dart';
import 'fitur_tambahan.dart';

class PCOffice extends Produk implements DapatDiskon {
  PCOffice(String nama, double harga, int stok) : super(nama, harga, stok);

  @override
  double hitungDiskon() => harga > 10000000 ? 500000 : 0;

  @override
  double hitungHargaAkhir() => harga - hitungDiskon();

  void cetakInfo() {
    print("=== INFO PC OFFICE ===");
    super.cetakInfoDasar();
    if (hitungDiskon() > 0) {
      print("Potongan: ${formatRupiah(hitungDiskon())}");
    }
    print("Total  : ${formatRupiah(hitungHargaAkhir())}");
    print("----------------------");
  }
}