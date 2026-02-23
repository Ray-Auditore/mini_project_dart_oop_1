abstract class Penumpang {
  String _nama;
  String _rute;

  Penumpang(this._nama, this._rute);

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

  void cetakInfo() {
    print("Nama Penumpang : $_nama");
    print("Rute : $_rute");
  }

  double getHarga();
}

abstract class CetakTiket {
  void cetakTiket();
}

class EkonomiBus extends Penumpang implements CetakTiket {
  EkonomiBus(String nama, String rute) : super(nama, rute);

  EkonomiBus.jakartaBandung(String nama) : super(nama, "Jakarta - Bandung");
  EkonomiBus.jakartaSolo(String nama) : super(nama, "Jakarta - solo");
  EkonomiBus.jakartaYogya(String nama) : super(nama, "Jakarta - yogyakarta");

  @override
  double getHarga() => 75000;

  @override
  void cetakTiket() {
    print("=== Tiket Bus Ekonomi ===");
    super.cetakInfo();
    print("Tipe : EkonomiBus");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : Kursi Standar");
    print("----------------------");
  }
}

class BisnisBus extends Penumpang implements CetakTiket {
  BisnisBus(String nama, String rute) : super(nama, rute);

  @override
  double getHarga() => 150000;

  @override
  void cetakTiket() {
    print("=== Tiket Bus Bisnis ===");
    super.cetakInfo();
    print("Tipe : BisnisBus");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : Legrest + Snack");
    print("----------------------");
  }
}

class EksekutifBus extends Penumpang implements CetakTiket {
  EksekutifBus(String nama, String rute) : super(nama, rute);

  @override
  double getHarga() => 250000;

  @override
  void cetakTiket() {
    print("=== Tiket Bus Eksekutif ===");
    super.cetakInfo();
    print("Tipe : EksekutifBus");
    print("Harga : ${formatRupiah(getHarga())}");
    print("Fasilitas : AC, Snack, Meal");
    print("----------------------");
  }
}

void main() {
  List<Penumpang> penumpang = [
    EkonomiBus.jakartaBandung("Budi"),
    EkonomiBus.jakartaSolo("wawan"),
    EkonomiBus.jakartaYogya("joko"),
    BisnisBus("Andi", "Jakarta - Bandung"),
    EksekutifBus("Sinta", "Jakarta - Bandung"),
  ];

  for (var p in penumpang) {
    if (p is EkonomiBus) {
      p.cetakTiket();
    } else if (p is BisnisBus) {
      p.cetakTiket();
    } else if (p is EksekutifBus) {
      p.cetakTiket();
    }
  }
}