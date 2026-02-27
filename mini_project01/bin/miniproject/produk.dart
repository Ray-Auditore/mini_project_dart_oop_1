abstract class Produk {
  String _nama;
  double _harga;
  int _stok;

  Produk(this._nama, this._harga, this._stok);

  String get nama => _nama;
  set nama(String value) => _nama = value;

  double get harga => _harga;
  set harga(double value) => _harga = value;

  int get stok => _stok;
  set stok(int value) {
    if (value >= 0) _stok = value;
  }

  String formatRupiah(double nilai) {
    return "Rp ${nilai.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}";
  }

  void cetakInfoDasar() {
    print("Produk : $_nama");
    print("Harga  : ${formatRupiah(_harga)}");
    print("Stok   : $_stok unit");
  }

  double hitungHargaAkhir();
}
