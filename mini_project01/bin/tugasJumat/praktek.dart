abstract class Transportasi {
  String _nama;
  String _rute;

  Transportasi(this._nama, this._rute);

  String get nama => _nama;
  set nama(String value) {
    if (value.isNotEmpty) {
      _nama = value;
    }
  }

  String get rute => _rute;
  set rute(String value) {
    if (value.isNotEmpty) {
      _rute = value;
    }
  }

  String formatRupiah(double harga) {
    return "Rp ${harga.toStringAsFixed(0)}";
  }

  void cetakDasar() {
    print("Nama Penumpang : $_nama");
    print("Rute : $_rute");
  }

  double getHarga();
}

abstract class CetakTiket {
  void cetakTiket();
}

class KRLCommuter extends Transportasi implements CetakTiket {
  KRLCommuter(String nama, String rute) : super(nama, rute);

  KRLCommuter.bogor(String nama) : super(nama, "Manggarai - Bogor");
  KRLCommuter.bekasi(String nama) : super(nama, "Manggarai - Bekasi");
  KRLCommuter.tanahAbang(String nama) : super(nama, "Manggarai - Tanah Abang");

  @override
  double getHarga() => 5000;

  @override
  void cetakTiket() {
    print("=== Tiket KRL Commuter Line ===");
    super.cetakDasar();
    print("Tipe : KRLCommuter");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : AC, Kursi Prioritas");
    print("----------------------");
  }
}

class LRTJakarta extends Transportasi implements CetakTiket {
  LRTJakarta(String nama, String rute) : super(nama, rute);

  LRTJakarta.dukuhatas(String nama) : super(nama, "Manggarai - Dukuh Atas");
  LRTJakarta.bekasiTimur(String nama) : super(nama, "Manggarai - Bekasi Timur");

  @override
  double getHarga() => 15000;

  @override
  void cetakTiket() {
    print("=== Tiket LRT Jakarta ===");
    super.cetakDasar();
    print("Tipe : LRTJakarta");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : Stasiun Modern, Full AC");
    print("----------------------");
  }
}

class MRTJakarta extends Transportasi implements CetakTiket {
  MRTJakarta(String nama, String rute) : super(nama, rute);

  MRTJakarta.lebakBulus(String nama) : super(nama, "Bundaran HI - Lebak Bulus");

  @override
  double getHarga() => 25000;

  @override
  void cetakTiket() {
    print("=== Tiket MRT Jakarta ===");
    super.cetakDasar();
    print("Tipe : MRTJakarta");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : Kursi Nyaman, Cepat, Tepat Waktu");
    print("----------------------");
  }
}

void main() {
  List<Transportasi> daftarPenumpang = [
    KRLCommuter.bogor("Budi"),
    KRLCommuter.bekasi("Wawan"),
    KRLCommuter.tanahAbang("Joko"),
    LRTJakarta.dukuhatas("Andi"),
    LRTJakarta.bekasiTimur("Santi"),
    MRTJakarta.lebakBulus("Sinta"),
  ];

  for (var t in daftarPenumpang) {
    if (t is KRLCommuter) {
      t.cetakTiket();
    } else if (t is LRTJakarta) {
      t.cetakTiket();
    } else if (t is MRTJakarta) {
      t.cetakTiket();
    }
  }
}