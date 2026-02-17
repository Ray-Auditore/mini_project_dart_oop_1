class Buku {
  String _judul = "";
  int _stok = 0;

  String get judul => _judul;
  set judul(String value) => _judul = value;

  int get stok => _stok;
  set stok(int value) => _stok = value;
}

abstract class Peminjaman {
  void pinjam();
  void kembalikan();
}

class BukuPerpustakaan extends Buku implements Peminjaman {
  @override
  void pinjam() {
    if (stok > 0) {
      stok -= 1;
      print("Buku dipinjam");
    } else {
      print("Stok habis");
    }
  }

  @override
  void kembalikan() {
    stok += 1;
    print("Buku dikembalikan");
  }

  void tampilkanInfo() {
    print("Judul : $judul");
    print("Stok : $stok");
    print("==============================");
  }
}

void main() {
  var buku = BukuPerpustakaan();
  
  buku.judul = "Matematika";
  buku.stok = 2;

  print("====== buku perpustakaan ======");
  buku.tampilkanInfo();

  buku.pinjam();
  buku.tampilkanInfo();

  buku.kembalikan();
  buku.tampilkanInfo();
}